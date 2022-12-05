from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

players = Blueprint('players', __name__)

# Get all players in database
@players.route('/')
def get_all_players():
    cursor = db.get_db().cursor()
    query = '''
        SELECT p.f_name, p.l_name, u.uni_name, p.pos, p.sport_name,\
            p.gender, p.school_year, DATE_FORMAT(p.birthdate, "%m-%d-%Y") AS 'Birthday',\
            p.gpa, p.email, p.bio, p.img, p.player_ID, t.team_ID
        FROM Players p JOIN Teams t on p.team_ID = t.team_ID
            JOIN University u on t.uni_ID = u.uni_ID;
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

# Get all game stats for a player
@players.route('/stats/<plrID>', methods=['GET'])
def get_plr_stats(plrID):
    cursor = db.get_db().cursor()
    query = f'''
                SELECT DATE_FORMAT(g.game_date, "%m-%d-%y") AS 'Date', u.uni_name as "Opponent", g.win_loss,\
                    g.team_score, g.opp_score,\
                    MIN, PTS, REB, AST, STL, BLK, TOS, `FG%`, `FT%`, `3P%`, PF
                FROM Stats s NATURAL JOIN Games g
                    JOIN Teams t ON t.team_ID = g.opponent_ID
                    JOIN University u on u.uni_ID = t.uni_ID
                WHERE g.player_ID = {plrID}
                ORDER BY g.game_date DESC;
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

# Get season stats -- aggregate (totals)
@players.route('/stats_agg/<plrID>', methods=['GET'])
def get_plr_stats_agg(plrID):
    cursor = db.get_db().cursor()
    query = f'''
                SELECT SUM(MIN) AS 'MIN', SUM(REB) AS 'REB', SUM(AST) AS 'AST', SUM(STL) AS 'STL', SUM(BLK) AS 'BLK',\
                    SUM(TOS) AS 'TOS', AVG(`FG%`) AS 'FG%', AVG(`FT%`) AS 'FT%', AVG(`3P%`) AS '3P%',\
                    SUM(PF) AS 'PF', SUM(PTS) AS 'PTS'
                FROM Stats s NATURAL JOIN Games g
                WHERE g.player_ID = {plrID}
                GROUP BY g.player_ID
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

# Get season stats -- averages
@players.route('/stats_avg/<plrID>', methods=['GET'])
def get_plr_stats_avg(plrID):
    cursor = db.get_db().cursor()
    query = f'''
                SELECT AVG(MIN) AS 'MIN', AVG(REB) AS 'REB', AVG(AST) AS 'AST', AVG(STL) AS 'STL', AVG(BLK) AS 'BLK',\
                    AVG(TOS) AS 'TOS', AVG(`FG%`) AS 'FG%', AVG(`FT%`) AS 'FT%', AVG(`3P%`) AS '3P%',\
                    AVG(PF) AS 'PF', AVG(PTS) AS 'PTS'
                FROM Stats s NATURAL JOIN Games g
                WHERE g.player_ID = {plrID}
                GROUP BY g.player_ID
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
