import bottle
from bottle import *
import pymongo
#from bson.json_util import dumps
from datetime import datetime
import time
import json
import os
from bson import json_util, ObjectId

# from config_vars import *
#from all_functions import *
#from offline_functions import *
from ys_data_json import *

app = Bottle(__name__)

myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["new_ys"]


@route('/hello/<name>')
def index(name):
    return template('<b>Hello {{name}}</b>!', name=name)

#Use this
@route('/login')
def root():
	# return template('templates/login.tpl', msg='')
	return static_file('ysLanding.html', root='templates/')


@post('/loginSubmit')
def loginSubmit():
	# print("hello")
	user_name = request.forms.get('user_name')
	user_password = request.forms.get('user_password')
	user_type = request.forms.get('user_type')
	latlong = request.forms.get('latlong')
	timestamp = request.forms.get('timestamp')
	userfind = mydb.users.find_one( { "role": user_type, "username": user_name,"password":user_password } )
	# print(userfind)
	userid = userfind.get('_id')

	# print(userfind.get('_id'))
	# print(userfind.get('userid'))
	response = {}
	if(len(list(userfind)) >= 1):
		# print(len(list(userfind)))
		mydb.users.find_one_and_update({"_id" : userid},{"$set":{"lastLoginTimestamp": timestamp,"lastLoginLocation":latlong}})
		# response.append({"msg":"Success","userid":str(userid)})
		response["msg"] = "Success"
		response["userid"] = str(userid)

		return json.dumps(response)
	else:
		response["msg"] = "Error"
		return json.dumps(response)

#Use this
@route('/ysHome')
def ncd_home():
	#data = get_stress_json()
    # to be created
	return static_file('ysHome.html', root='templates/')

@route('/ysHousehold')
def ncd_stress():
	#data = get_stress_json()
	return template('templates/ys_household.tpl')

@post('/householdSubmit')
def householdSubmit():
	household = request.json
	print(household)

	userid = household.get('createdUserId')
	userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})
	# print(userfind)

	lasthouseholdsCreated = userfind.get('totalNumberOfHouseholdsCreated')
	totalNumberOfHouseholdsCreated = int(lasthouseholdsCreated) + 1
	print(totalNumberOfHouseholdsCreated)

	lastmembersCreated = userfind.get('totalNumberOfMembersCreated')

	memberarray = []

	membersdict = household.get('members')
	for member in membersdict:
		memberage = member.get('agein15to30')
		if(memberage == 'Yes'):
			memberarray.append(memberage)
		else:
			member["memberInterviewStatus"] = "Not Applicable"

		print(member)
	# membersdict = household.get('members')
	sizeofmemberdict = len(memberarray)
	totalNumberOfMembersCreated = int(lastmembersCreated) + sizeofmemberdict
	print(totalNumberOfMembersCreated)


	lasthousehold = mydb.lastHousehold.find_one()
	lasthouseholdId = lasthousehold.get('lastHouseholdId')
	lastHouseholdUpdateId = int(lasthouseholdId) + 1
	update_householdId = "HH_"+str(lastHouseholdUpdateId)
	household["householdId"] = "HH_"+str(lastHouseholdUpdateId)

	lastmember = mydb.lastMember.find_one()
	lastmemberId = lastmember.get('lastMemberId')
	lastMemberUpdateId = int(lastmemberId) + sizeofmemberdict

	mycol = mydb["households"]
	x = mycol.insert_one(household)
	# print(x)

	mydb.lastHousehold.find_one_and_update({"lastHouseholdId":lasthouseholdId},{"$set":{"lastHouseholdId": lastHouseholdUpdateId}})

	mydb.lastMember.find_one_and_update({"lastMemberId":lastmemberId},{"$set":{"lastMemberId": lastMemberUpdateId}})
	
	mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"totalNumberOfHouseholdsCreated": totalNumberOfHouseholdsCreated,"totalNumberOfMembersCreated":totalNumberOfMembersCreated}})

	mycol1 = mydb["temp_assessment"]

	mycol1.insert_one({"householdId":update_householdId,"userid":userid,"totalmemberCreated":sizeofmemberdict,"totalmemberTobeStarted":0,"totalmemberInProgress":0,"totalmemberCompleted":0})

	response = {}
	response["msg"] = "Success"
	response["householdId"] = lastHouseholdUpdateId
		

	# membersdict = household.get('members')
	# # sizeofmemberdict = len(membersdict)
	# lastmember = mydb.lastMember.find_one()
	# lastmemberId = lastmember.get('lastMemberId')
	# for member in membersdict:
	# 	lastMemberUpdateId = int(lastmemberId) + 1
	# 	lastmemberId = lastMemberUpdateId
	# 	member["memberId"] = "HH_"+str(lastHouseholdUpdateId)+"_IND_"+str(lastMemberUpdateId)
	# 	print(member)
	
	print(household)
	

	return json.dumps(response)
@post('/assessmentSubmit')
def assessmentSubmit():
	assessment = request.json


	# userid = assessment.get('userid')
	# householdId = assessment.get('householdId')
	# userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})
	

	# numberofhouseholdsINProgress = userfind.get('numberOfHouseholdsINProgress')
	# numberOfHouseholdsINProgress = int(numberofhouseholdsINProgress) + 1

	# numberofmembersINProgress = userfind.get('numberOfMembersINProgress')
	# numberOfMembersINProgress = int(numberofmembersINProgress) + 1

	# mycol = mydb["assessmentMetaData"]
	# x = mycol.insert_one(assessment)
	

	# assessmentfind = mydb.temp_assessment.find_one({"householdId":householdId,"userid":userid})

	# totalmemberCreated = assessmentfind.get('totalmemberCreated')
	# totalmembertobestarted = assessmentfind.get('totalmemberTobeStarted')
	# totalmemberTobeStarted = int(totalmembertobestarted) + 1

	# if(totalmemberCreated == totalmemberTobeStarted):
	# 	mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsINProgress": numberOfHouseholdsINProgress,"numberOfMembersINProgress":numberOfMembersINProgress}})
	# else:
	# 	mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfMembersINProgress":numberOfMembersINProgress}})


	# mydb.temp_assessment.find_one_and_update({"householdId":householdId,"userid":userid},{"$set":{"totalmemberTobeStarted": totalmemberTobeStarted}})

	


	response = {}
	response["msg"] = "Success"

	# print(assessment)

	return json.dumps(response)

@post('/update_assessmentSubmit')
def assessmentSubmit():
	assessment = request.json

	response = {}
	response["msg"] = "Success"

	# print(assessment)

	return json.dumps(response)

@post('/assessmentSaveLater')
def assessmentSaveLater():
	assessment = request.json
	userid = assessment.get('userid')
	householdId = assessment.get('householdId')
	memberId = assessment.get('memberId')
	updatedTime = assessment.get('updatedTime')



	assessmentfind = mydb.temp_assessment.find_one({"householdId":householdId,"userid":userid})

	# totalmemberCreated = assessmentfind.get('totalmemberCreated')
	totalmemberinprogress = assessmentfind.get('totalmemberInProgress')
	totalmemberInProgress = int(totalmemberinprogress) + 1





	userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})
	# print(userfind)

	numberofhouseholdsINProgress = userfind.get('numberOfHouseholdsINProgress')
	numberOfHouseholdsINProgress = int(numberofhouseholdsINProgress) + 1

	numberofmembersINProgress = userfind.get('numberOfMembersINProgress')
	numberOfMembersINProgress = int(numberofmembersINProgress) + 1

	mycol = mydb["assessmentMetaData"]
	x = mycol.insert_one(assessment)
	# print(x)

	assessmentfind = mydb.temp_assessment.find_one({"householdId":householdId,"userid":userid})

	totalmemberCreated = assessmentfind.get('totalmemberCreated')
	totalmembertobestarted = assessmentfind.get('totalmemberTobeStarted')
	totalmemberTobeStarted = int(totalmembertobestarted) + 1

	if(totalmemberCreated == totalmemberTobeStarted):
		mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsINProgress": numberOfHouseholdsINProgress,"numberOfMembersINProgress":numberOfMembersINProgress}})
		mydb.households.find_one_and_update({"householdId" : householdId,"createdUserId":userid},{"$set":{"modified_timestamp":updatedTime,"householdInterviewStatus":"InProgress"}})
		mydb.households.find_one_and_update({"householdId" : householdId,"createdUserId":userid, "members": { "$elemMatch": { "memberId": memberId } } },{"$set":{"members.$.memberInterviewStatus":"InProgress"}})
	else:
		mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfMembersINProgress":numberOfMembersINProgress}})
		mydb.households.find_one_and_update({"householdId" : householdId,"createdUserId":userid, "members": { "$elemMatch": { "memberId": memberId } } },{"$set":{"members.$.memberInterviewStatus":"InProgress"}})


	mydb.assessmentMetaData.find_one_and_update({"userid" : userid,"memberId":memberId,"householdId":householdId},{"$set":{"memberInterviewStatus":"InProgress","updatedTime":updatedTime}})

	mydb.temp_assessment.find_one_and_update({"householdId":householdId,"userid":userid},{"$set":{"totalmemberTobeStarted": totalmemberTobeStarted,"totalmemberInProgress": totalmemberInProgress}})

	householdfind = mydb.households.find_one({"householdId":householdId,"createdUserId":userid})

	

	


	response = {}
	response["msg"] = "Success"
	response["members"] = householdfind.get('members')


	print(assessment)

	return json.dumps(response)



@post('/assessmentFinalSubmit')
def assessmentFinalSubmit():
	assessment = request.json
	userid = assessment.get('userid')
	householdId = assessment.get('householdId')
	memberId = assessment.get('memberId')
	updatedTime = assessment.get('updatedTime')
	completeLocation = assessment.get('completeLocation')


	userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})
	# print(userfind)

	numberofhouseholdsINProgress = userfind.get('numberOfHouseholdsINProgress')
	numberOfHouseholdsINProgress = int(numberofhouseholdsINProgress) - 1

	numberofmembersINProgress = userfind.get('numberOfMembersINProgress')
	numberOfMembersINProgress = int(numberofmembersINProgress) - 1

	numberofhouseholdsCompleted = userfind.get('numberOfHouseholdsCompleted')
	numberOfHouseholdsCompleted = int(numberofhouseholdsCompleted) + 1

	numberofmembersCompleted = userfind.get('numberOfMembersCompleted')
	numberOfMembersCompleted = int(numberofmembersCompleted) + 1



	mydb.assessmentMetaData.find_one_and_update({"userid" : userid,"memberId":memberId,"householdId":householdId},{"$set":{"memberInterviewStatus":"Completed","completeLocation":completeLocation,"completedTime":updatedTime,"updatedTime":updatedTime}})


	assessmentfind = mydb.temp_assessment.find_one({"householdId":householdId,"userid":userid})

	totalmemberCreated = assessmentfind.get('totalmemberCreated')
	totalmembercompleted = assessmentfind.get('totalmemberCompleted')
	totalmemberCompleted = int(totalmembercompleted) + 1

	if(totalmemberCreated <= totalmemberCompleted):
		mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsINProgress": numberOfHouseholdsINProgress,"numberOfHouseholdsCompleted":numberOfHouseholdsCompleted,"numberOfMembersINProgress":0,"numberOfMembersCompleted":numberOfMembersCompleted}})
		mydb.households.find_one_and_update({"householdId" : householdId,"createdUserId":userid},{"$set":{"modified_timestamp":updatedTime,"householdInterviewStatus":"Completed"}})
		mydb.households.find_one_and_update({"householdId" : householdId,"createdUserId":userid, "members": { "$elemMatch": { "memberId": memberId } } },{"$set":{"members.$.memberInterviewStatus":"Completed"}})
		mydb.temp_assessment.find_one_and_update({"householdId":householdId,"userid":userid},{"$set":{"totalmemberCompleted": totalmemberCompleted}})
	else:
		mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfMembersINProgress":numberOfMembersINProgress,"numberOfMembersCompleted":numberOfMembersCompleted}})
		mydb.households.find_one_and_update({"householdId" : householdId,"createdUserId":userid, "members": { "$elemMatch": { "memberId": memberId } } },{"$set":{"members.$.memberInterviewStatus":"Completed"}})
		mydb.temp_assessment.find_one_and_update({"householdId":householdId,"userid":userid},{"$set":{"totalmemberCompleted": totalmemberCompleted}})

	householdfind = mydb.households.find_one({"householdId":householdId,"createdUserId":userid})

	

	


	response = {}
	response["msg"] = "Success"
	response["members"] = householdfind.get('members')

	print(assessment)

	return json.dumps(response)




@route('/ysSurveyorStatus')
def ncd_stress():
	#data = get_stress_json()
	return template('templates/ys_surveyStatus.tpl')

@route('/yshouseholdContinue')
def ncd_stress():
	#data = get_stress_json()
	return template('templates/ys_household_continue.tpl')


#Use this
@route('/ysAssessment')
def ncd_yuvaspandana():
	data = get_ys_json()
	return template('templates/assessment_ys_home.tpl', data=data)

@route('/<filename:re:.*\.*>')
def javascripts(filename):
    return static_file(filename, root='static')

@hook('after_request')
def enable_cors():
	response.headers['Access-Control-Allow-Origin'] = '*'
	response.headers['Access-Control-Allow-Methods'] = 'PUT, GET, POST, DELETE, OPTIONS'
	response.headers['Access-Control-Allow-Headers'] = 'Origin, Accept, Content-Type, X-Requested-With, X-CSRF-Token'

run(host='localhost', port=8080)