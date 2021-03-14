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
# from ncd_data_json import *

app = Bottle(__name__)

#client = MongoClient(MONGODB_URI)
#db = client.cas


@route('/hello/<name>')
def index(name):
    return template('<b>Hello {{name}}</b>!', name=name)

@route('/')
def root():
	# return template('templates/login.tpl', msg='')
	return static_file('login.html', root='templates/')

# @route('/ncdlanding')
# def root():
# 	# return template('templates/login.tpl', msg='')
# 	return static_file('ncdlanding.html', root='templates/')

@route('/home')
def home():
	#data = get_stress_json()
    # to be created
	return static_file('home.html', root='templates/')

@route('/start_assessment')
def start_assessment():
	#data = get_stress_json()
    # to be created
	return static_file('start_assessment.html', root='templates/')
@route('/assessment_report')
def start_assessment():
	#data = get_stress_json()
    # to be created
	return static_file('assessment_report.html', root='templates/')

# @route('/ncdStress')
# def ncd_stress():
# 	data = get_stress_json()
# 	return template('templates/assessment_stress_home.tpl', data=data)





@route('/<filename:re:.*\.*>')
def javascripts(filename):
    return static_file(filename, root='static')

@hook('after_request')
def enable_cors():
	response.headers['Access-Control-Allow-Origin'] = '*'
	response.headers['Access-Control-Allow-Methods'] = 'PUT, GET, POST, DELETE, OPTIONS'
	response.headers['Access-Control-Allow-Headers'] = 'Origin, Accept, Content-Type, X-Requested-With, X-CSRF-Token'

run(host='localhost', port=8080)