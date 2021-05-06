import bottle
from bottle import *
#from pymongo import MongoClient
#from bson.json_util import dumps
from datetime import datetime
import time
import json
import os


# from config_vars import *
#from all_functions import *
#from offline_functions import *
from ys_data_json import *

app = Bottle(__name__)

#client = MongoClient(MONGODB_URI)
#db = client.cas


@app.route('/hello/<name>')
def index(name):
    return template('<b>Hello {{name}}</b>!', name=name)

#Do not use
@app.route('/')
def root():
	# return template('templates/login.tpl', msg='')
	return static_file('login.html', root='templates/')

#Use this
@app.route('/login')
def root():
	# return template('templates/login.tpl', msg='')
	return static_file('ysLanding.html', root='templates/')

#Do not use this
@app.route('/home')
def home():
	#data = get_stress_json()
    # to be created
	return static_file('home.html', root='templates/')

#Use this
@app.route('/ysHome')
def ncd_home():
	#data = get_stress_json()
    # to be created
	return static_file('ysHome.html', root='templates/')

@app.route('/ysHousehold')
def ncd_stress():
	#data = get_stress_json()
	return template('templates/ys_household.tpl')

@app.route('/ysSurveyorStatus')
def ncd_stress():
	#data = get_stress_json()
	return template('templates/ys_surveyStatus.tpl')

@app.route('/yshouseholdContinue')
def ncd_stress():
	#data = get_stress_json()
	return template('templates/ys_household_continue.tpl')


#Use this
@app.route('/ysAssessment')
def ncd_yuvaspandana():
	data = get_ys_json()
	return template('templates/assessment_ys_home.tpl', data=data)


@app.route('/<filename:re:.*\.*>')
def javascripts(filename):
    return static_file(filename, root='static')

@app.hook('after_request')
def enable_cors():
	response.headers['Access-Control-Allow-Origin'] = '*'
	response.headers['Access-Control-Allow-Methods'] = 'PUT, GET, POST, DELETE, OPTIONS'
	response.headers['Access-Control-Allow-Headers'] = 'Origin, Accept, Content-Type, X-Requested-With, X-CSRF-Token'

# run(host='localhost', port=8080)
