from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

companies = Blueprint('companies', __name__)

# Get company deals with a particular company id
@companies.route('/deals/<compID>', methods=['GET'])
def get_company_deals(compID):
    # get company details
    cursor = db.get_db().cursor()
    query = f'''
                SELECT *
                FROM Deals
                WHERE company_ID = {compID};
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

# Update current deal
@companies.route('/update_deal', methods=['POST'])
def update_deal():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    open_to = request.form["open_to"]
    description = request.form["description"]
    deal_wage = request.form["deal_wage"]
    duration = request.form["duration"]
    pmt_type = request.form["pmt_type"]
    active = request.form["active"]
    deal_ID = request.form["deal_ID"]

    query = f'''
                UPDATE Deals
                SET open_to = \"{open_to}\", description = \"{description}\", deal_wage = \"{deal_wage}\",\
                duration = \"{duration}\", pmt_type = \"{pmt_type}\", active = {active}
                WHERE deal_id = {deal_ID};
            '''
    cursor.execute(query)
    db.get_db().commit()

    return f"Success! Deal {deal_ID} has been updated."

# Create new deal
@companies.route('/create_deal/<compID>', methods=['POST'])
def create_deal(compID):
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    open_to = request.form["open_to"]
    description = request.form["description"]
    deal_wage = request.form["deal_wage"]
    duration = request.form["duration"]
    pmt_type = request.form["pmt_type"]
    active = request.form["active"]

    query = f'''
                INSERT INTO Deals (company_ID, open_to, description, deal_wage, duration, pmt_type, active)
                VALUES ({compID}, \"{open_to}\", \"{description}\", \"{deal_wage}\", \"{duration}\", \"{pmt_type}\", {active});
            '''
    cursor.execute(query)
    db.get_db().commit()

    return f"Success! Your new deal has been created."

# Get all submitted applications from players
@companies.route('/plr_apps/<compID>', methods=['GET'])
def get_plr_apps(compID):
    # get company details
    cursor = db.get_db().cursor()
    query = f'''
                SELECT d.deal_ID, a.player_ID, a.status, DATE_FORMAT(a.app_timestamp, "%m-%d-%Y %h:%i%p") AS 'Timestamp',\
                    p.f_name, p.l_name, u.uni_name, p.pos, p.sport_name,\
                    p.gender, p.school_year, DATE_FORMAT(p.birthdate, "%m-%d-%Y") AS 'Birthday',\
                    p.gpa, p.email, p.bio, p.img, p.player_ID, t.team_ID
                FROM Deals d NATURAL JOIN p_app a NATURAL JOIN Players p
                    JOIN Teams t on p.team_ID = t.team_ID
                    JOIN University u on t.uni_ID = u.uni_ID
                WHERE company_ID = {compID} AND active = 1;
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

# Get all submitted applications from teams
@companies.route('/tm_apps/<compID>', methods=['GET'])
def get_tm_apps(compID):
    # get company details
    cursor = db.get_db().cursor()
    query = f'''
                SELECT d.deal_ID, t.team_ID, a.status, DATE_FORMAT(a.app_timestamp, "%m-%d-%Y %h:%i%p") AS 'Timestamp',\
                    t.team_id, u.uni_ID, u.uni_name AS 'University', u.img, u.street_add,\
                    u.city, u.state, u.website, t.sport_name, t.division, t.conference
                FROM Deals d NATURAL JOIN t_app a NATURAL JOIN Teams t
                    JOIN University u on t.uni_ID = u.uni_ID
                WHERE company_ID = {compID} AND active = 1;
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

# Update application status for a player
@companies.route('/update_plr_app', methods=['POST'])
def update_plr_app():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    status = request.form["status"]
    deal_ID = request.form["deal_ID"]
    player_ID = request.form["player_ID"]

    query = f'''
                UPDATE p_app
                SET status = \"{status}\"
                WHERE deal_id = {deal_ID} AND player_ID = {player_ID};
            '''
    cursor.execute(query)
    db.get_db().commit()

    return f"Success! Status for {deal_ID} has been updated."

# Update application status for a team
@companies.route('/update_tm_app', methods=['POST'])
def update_tm_app():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()

    status = request.form["status"]
    deal_ID = request.form["deal_ID"]
    team_ID = request.form["team_ID"]

    query = f'''
                UPDATE t_app
                SET status = \"{status}\"
                WHERE deal_id = {deal_ID} AND team_ID = {team_ID};
            '''
    cursor.execute(query)
    db.get_db().commit()

    return f"Success! Status for {deal_ID} has been updated."
