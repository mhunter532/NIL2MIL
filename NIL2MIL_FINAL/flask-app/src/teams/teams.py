from flask import Blueprint, request, jsonify, make_response
import json
from src import db
from datetime import datetime

teams = Blueprint('teams', __name__)

# Get all teams in database
@teams.route('/')
def get_all_teams():
    cursor = db.get_db().cursor()
    query = '''
        SELECT t.team_id, u.uni_ID, u.uni_name AS 'University', u.img, u.street_add,\
        u.city, u.state, u.website, t.sport_name, t.division, t.conference
        FROM Teams t JOIN University u on t.uni_ID = u.uni_ID;
    '''
    cursor.execute(query)
       # grab the column headers from the returned data
    column_headers = [x[0] for x in cursor.description]

    # create an empty dictionary object to use in
    # putting column headers together with data
    json_data = []

    # fetch all the data from the cursor
    theData = cursor.fetchall()

    # for each of the rows, zip the data elements together with
    # the column headers.
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

# Get all game stats for a team -- will be sum of all players who
# played in that game
@teams.route('/stats/<tmID>', methods=['GET'])
def get_tm_stats(tmID):
    cursor = db.get_db().cursor()
    query = f'''
                SELECT *
                FROM
                    (SELECT DISTINCT g.game_ID, g.team_ID, DATE_FORMAT(g.game_date, "%m-%d-%y") AS 'Date',\
                        u.uni_name as "Opponent", g.win_loss, g.team_score, g.opp_score
                    FROM Games g NATURAL JOIN
                    (SELECT g.game_ID, SUM(REB) AS 'REB', SUM(AST) AS 'AST', SUM(STL) AS 'STL', SUM(BLK) AS 'BLK',\
                            SUM(TOS) AS 'TOS', AVG(`FG%`) AS 'FG%', AVG(`FT%`) AS 'FT%', AVG(`3P%`) AS '3P%',\
                            SUM(PF) AS 'PF'
                        FROM Stats s NATURAL JOIN Games g
                        WHERE g.team_ID = {tmID}
                        GROUP BY g.game_ID
                        ORDER BY g.game_ID) as s
                    JOIN Teams t ON t.team_ID = g.opponent_ID
                    JOIN University u on u.uni_ID = t.uni_ID) AS g
                    
                    JOIN
                    
                    (SELECT g.game_ID, SUM(REB) AS 'REB', SUM(AST) AS 'AST', SUM(STL) AS 'STL', SUM(BLK) AS 'BLK',\
                        SUM(TOS) AS 'TOS', AVG(`FG%`) AS 'FG%', AVG(`FT%`) AS 'FT%', AVG(`3P%`) AS '3P%',\
                        SUM(PF) AS 'PF'
                    FROM Stats s NATURAL JOIN Games g
                    WHERE g.team_ID = {tmID}
                    GROUP BY g.game_ID
                    ORDER BY g.game_ID) as s
                    
                    ON g.game_ID = s.game_ID
                    
                WHERE g.team_ID = {tmID};
            '''
    cursor.execute(query)
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response