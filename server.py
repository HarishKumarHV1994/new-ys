import bottle
from bottle import *
import pymongo
#from bson.json_util import dumps
from datetime import datetime
import time
import json
import os
from bson import json_util, ObjectId
import urllib.parse


# from config_vars import *
#from all_functions import *
#from offline_functions import *
from ys_data_json import *

app = Bottle(__name__)

# myclient = pymongo.MongoClient("mongodb://localhost:27017/")
# myclient = pymongo.MongoClient("mongodb+srv://harishhv:harish007@newys.ibk0a.mongodb.net/test?retryWrites=true&w=majority")
mongo_uri = "mongodb+srv://harishhv:" + urllib.parse.quote("harish007") + "@newys.ibk0a.mongodb.net/new_ys?retryWrites=true&w=majority"
# print(mongo_uri)
myclient = pymongo.MongoClient(mongo_uri)
mydb = myclient["new_ys"]

@app.route('/hello/<name>')
def index(name):
    return template('<b>Hello {{name}}</b>!', name=name)

#Use this
@app.route('/login')
def root():
	# return template('templates/login.tpl', msg='')
	return static_file('ysLanding.html', root='templates/')


@app.post('/loginSubmit')
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
@app.route('/ysHome')
def ncd_home():
	
	return static_file('ysHome.html', root='templates/')

@app.route('/ysHousehold')
def ncd_stress():
	#data = get_stress_json()
	return template('templates/ys_household.tpl')

@app.post('/householdSubmit')
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
		

	
	print(household)
	

	return json.dumps(response)
@app.post('/assessmentSubmit')
def assessmentSubmit():
	assessment = request.json


	response = {}
	response["msg"] = "Success"

	# print(assessment)

	return json.dumps(response)

@app.post('/update_assessmentSubmit')
def assessmentSubmit():
	assessment = request.json

	response = {}
	response["msg"] = "Success"

	# print(assessment)

	return json.dumps(response)

@app.post('/assessmentSaveLaterJS')
def assessmentSaveLaterJS():

    assessment_data = request.forms.get('data')
    time_stamp = time.time()
    householdId = ""
    memberId = ""
    userid = ""
    updatedTime = ""
    location = ""
    metadata={}

    try:
        assessment_data = json.loads(assessment_data)
        # Check if the assessment data for the HH and MM exists. If yes, then update the record. If not, then insert the record
        
        metadata = assessment_data[189]
        
        
        
        subelements = metadata['metadata']
        householdId = subelements['householdId']
        memberId = subelements["memberId"]
        userid = subelements["userid"]
        updatedTime = subelements["updatedTime"]
        location =subelements["location"]
        status = subelements["status"]
        metadataRec={"householdId":householdId,"memberId":memberId,"userid":userid,"updatedTime":updatedTime,"location":location,"status":status}
        
        #data = {"data":assessment_data,"householdId":householdId,"memberId":memberId,"userid":userid,"updatedTime":updatedTime,"location":location}
        #mycol = mydb["dummy"]
        #y=mycol.drop()
        #x = mycol.insert_one(data)
        
        assessmentforMember = mydb.assessmentData.find_one({ "memberId":memberId,"householdId":householdId})
        if(assessmentforMember == None ):
            print("Insert")
            #Insert into Assessment data tablee
            data = {"data":assessment_data,"householdId":householdId,"memberId":memberId,"userid":userid,"updatedTime":updatedTime,"location":location,"status":status}
            mydb.assessmentData.insert_one(data)
            #Insert into Assessment metadata table
            mydb.assessmentMetaData.insert_one(metadataRec)
            #Update at the user level information with numbr of members in progress to +1
            userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})
            numberOfMembersINProgress = userfind.get('numberOfMembersINProgress')
            numberOfHouseholdsINProgress = userfind.get('numberOfHouseholdsINProgress')
            numberOfMembersINProgress = int(numberOfMembersINProgress) + 1
            print(numberOfMembersINProgress)
            mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfMembersINProgress":numberOfMembersINProgress}})
            #Check the user if the status of this household is already In progress. if yes, numberOfHouseholdsINProgress will remain same, If no numberOfHouseholdsINProgress will be +1
            print(householdId)
            print(memberId)
            householdfind=mydb.households.find_one({"householdId" : householdId})
            print("householdfind")
            householdstatus=householdfind.get("householdInterviewStatus")
            print("householdstatus"+householdstatus)
            if(householdstatus != 'InProgress'):
                print("inhousehold Progress")
                numberOfHouseholdsINProgress = int(numberOfHouseholdsINProgress) + 1
                mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsINProgress":numberOfHouseholdsINProgress}})
            #Update the household record at household level and at member level
            #Update the household record to in progress. update the member level record to in progress
            mydb.households.find_one_and_update({"householdId" : householdId},{"$set":{"modified_user":userid,"modified_timestamp":updatedTime,"householdInterviewStatus":"InProgress"}})
            print("inhousehold updated")
            mydb.households.find_one_and_update({"householdId" : householdId, "members": { "$elemMatch": { "memberId": memberId } } },{"$set":{"members.$.memberInterviewStatus":"InProgress", "members.$.modified_timestamp":updatedTime, "members.$.location":location}})
            print("inhousehold member updated")
            
        else:
            print("Update")
            #Update assessment data table
            data = {"data":assessment_data}
            mydb.assessmentData.find_one_and_update({"memberId":memberId,"householdId":householdId},{"$set":{"data":assessment_data,"updatedTime":updatedTime,"location":location,"userid":userid}})
            #Update medatadata table
            mydb.assessmentMetaData.find_one_and_update({"memberId":memberId,"householdId":householdId},{"$set":{"memberInterviewStatus":"InProgress","updatedTime":updatedTime,"location":location}})
            #Update the household record at household level and at member level
            #Update the household record to in progress. update the member level record to in progress
            mydb.households.find_one_and_update({"householdId" : householdId},{"$set":{"modified_user":userid,"modified_timestamp":updatedTime,"householdInterviewStatus":"InProgress"}})
            mydb.households.find_one_and_update({"householdId" : householdId, "members": { "$elemMatch": { "memberId": memberId } } },{"$set":{"members.$.memberInterviewStatus":"InProgress", "members.$.modified_timestamp":updatedTime, "members.$.location":location}})
            #No changes in the User level record as the update would have already been taken care of
            
            
    except Exception as e:
        print(e)
    return {'status': 'ok'}

@app.post('/assessmentFinalSubmitJS')
def assessmentFinalSubmitJS():

    assessment_data = request.forms.get('data')
    time_stamp = time.time()
    householdId = ""
    memberId = ""
    userid = ""
    updatedTime = ""
    location = ""
    metadata={}

    try:
        assessment_data = json.loads(assessment_data)
        # Check if the assessment data for the HH and MM exists. If yes, then update the record. If not, then insert the record
        
        metadata = assessment_data[189]
        
        
        
        subelements = metadata['metadata']
        householdId = subelements['householdId']
        memberId = subelements["memberId"]
        userid = subelements["userid"]
        updatedTime = subelements["updatedTime"]
        location =subelements["location"]
        status = subelements["status"]
        metadataRec={"householdId":householdId,"memberId":memberId,"userid":userid,"updatedTime":updatedTime,"location":location,"status":status}
        
        #data = {"data":assessment_data,"householdId":householdId,"memberId":memberId,"userid":userid,"updatedTime":updatedTime,"location":location}
        #mycol = mydb["dummy"]
        #y=mycol.drop()
        #x = mycol.insert_one(data)
                 
        assessmentforMember = mydb.assessmentData.find_one({ "memberId":memberId,"householdId":householdId})
        if(assessmentforMember == None ):
            #Insert into assessment data
            print("Insert")
            #Insert into Assessment data tablee
            data = {"data":assessment_data,"householdId":householdId,"memberId":memberId,"userid":userid,"updatedTime":updatedTime,"location":location,"status":status}
            mydb.assessmentData.insert_one(data)
            #Insert into Assessment metadata table
            mydb.assessmentMetaData.insert_one(metadataRec)
            #As it is a first time entry, then at user level, numberOfMembersCompleted will be +1
            userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})
            numberOfMembersCompleted = userfind.get('numberOfMembersCompleted')
            numberOfMembersINProgress = userfind.get('numberOfMembersINProgress')
            numberOfHouseholdsCompleted = userfind.get('numberOfHouseholdsCompleted')
            numberOfHouseholdsINProgress = userfind.get('numberOfHouseholdsINProgress')
            print("Before Change")
            print(numberOfMembersCompleted)
            print(numberOfMembersINProgress)
            print(numberOfHouseholdsCompleted)
            print(numberOfHouseholdsINProgress)    
                
            
            numberOfMembersCompleted = numberOfMembersCompleted + 1
            mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfMembersCompleted":numberOfMembersCompleted}})
            #For the user , at household level, if this is the only member, then numberOfHouseholdsCompleted will be + numberOfHouseholdsCompleted
            #If it more than 1 member and the other member is not started or is in progress, then numberOfHouseholdsINProgress will be + numberOfHouseholdsINProgress
            
            
                
            print("About to strt entry into user for house")
            
            householdfind=mydb.households.find_one({"householdId" : householdId})
            householdInterviewStatus=householdfind.get("householdInterviewStatus")
            actualmembers = householdfind.get("members")
            print("length of actual members") 
            print(len(actualmembers)) 
            members=[]
            memberIndex=0
            for y in actualmembers:
                if(y['agein15to30'] =='Yes'):
                    member={'memberId':y['memberId'],'memberInterviewStatus':y['memberInterviewStatus']}
                    members.append(member)
            print("length of members") 
            print(len(members))
            
            if (len(members) == 1):
                userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})
                numberOfHouseholdsCompleted = userfind.get('numberOfHouseholdsCompleted')
                numberOfHouseholdsCompleted=numberOfHouseholdsCompleted + 1
                print(numberOfHouseholdsCompleted)
                mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsCompleted":numberOfHouseholdsCompleted}})
                #Update the information at households object 
                mydb.households.find_one_and_update({"householdId" : householdId},{"$set":{"modified_user":userid,"modified_timestamp":updatedTime,"householdInterviewStatus":"Completed","completedLocation":location,"completed_timestamp":updatedTime}})
                print("inhousehold updated")
                mydb.households.find_one_and_update({"householdId" : householdId, "members": { "$elemMatch": { "memberId": memberId } } },{"$set":{"members.$.memberInterviewStatus":"Completed", "members.$.modified_timestamp":updatedTime, "members.$.location":location,"members.$.completed_timestamp":updatedTime}})
                print('Done with the single member insert')
            else:
                print("To be done if members >1")
                #If the other members are also completed, then numberOfHouseholdsCompleted will be +1
                #Update the member level status to completed
                mydb.households.find_one_and_update({"householdId" : householdId, "members": { "$elemMatch": { "memberId": memberId } } },{"$set":{"members.$.memberInterviewStatus":"Completed", "members.$.modified_timestamp":updatedTime, "members.$.location":location,"members.$.completed_timestamp":updatedTime}})
                householdCompletedToBeincremented = True
                userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})
                numberOfHouseholdsCompleted = userfind.get('numberOfHouseholdsCompleted')
                numberOfHouseholdsINProgress = userfind.get('numberOfHouseholdsINProgress')
                #Loop through the members in household and see if all are completed.
                
                householdfind=mydb.households.find_one({"householdId" : householdId})
                householdInterviewStatus=householdfind.get("householdInterviewStatus")
                actualmembers = householdfind.get("members")
                print("length of actual members") 
                print(len(actualmembers)) 
                members=[]
                memberIndex=0
                for y in actualmembers:
                    if(y['agein15to30'] =='Yes'):
                        member={'memberId':y['memberId'],'memberInterviewStatus':y['memberInterviewStatus']}
                        members.append(member)
                print("length of members") 
                print(len(members))
                
                for y in members:
                    print(y['memberInterviewStatus'])
                    if(y['memberInterviewStatus'] != 'Completed'):
                        householdCompletedToBeincremented = False
                        break
                #If all are completed and household interview status is IN progress, then no of households completed should be made +1
                #If the previous household status was "INProgress", then the inprogress count should be made -1
                if(householdCompletedToBeincremented ==  True and householdInterviewStatus == 'InProgress'):
                    numberOfHouseholdsCompleted = numberOfHouseholdsCompleted + 1
                    numberOfHouseholdsINProgress = numberOfHouseholdsINProgress - 1
                    mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsCompleted":numberOfHouseholdsCompleted,"numberOfHouseholdsINProgress":numberOfHouseholdsINProgress}})
                    print("householdCompletedToBeincremented ==  True and householdInterviewStatus == InProgress")
                
                #If all are completed and household interview status is To be started, then no of households completed should be made +1
                #NO change in the in progress count for that user
                if(householdCompletedToBeincremented ==  True and householdInterviewStatus == 'TobeStarted'):
                    numberOfHouseholdsCompleted = numberOfHouseholdsCompleted + 1
                    mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsCompleted":numberOfHouseholdsCompleted}})
                    print("householdCompletedToBeincremented ==  True and householdInterviewStatus == TobeStarted")
                
                if(householdCompletedToBeincremented ==  False and householdInterviewStatus == 'TobeStarted'):
                    numberOfHouseholdsINProgress = numberOfHouseholdsINProgress + 1
                    mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsINProgress":numberOfHouseholdsINProgress}})
                    print("householdCompletedToBeincremented ==  False and householdInterviewStatus == TobeStarted")
                    
                if(householdCompletedToBeincremented ==  False and householdInterviewStatus == 'InProgress'):
                    #numberOfHouseholdsINProgress = numberOfHouseholdsINProgress + 1
                    #mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsINProgress":numberOfHouseholdsINProgress}})
                    print("householdCompletedToBeincremented ==  False and householdInterviewStatus == InProgress --> Do nothing")
                    
                
                #If all members are completed, then household should be marked completed in teh households table
                if(householdCompletedToBeincremented ==  True):
                    mydb.households.find_one_and_update({"householdId" : householdId},{"$set":{"modified_user":userid,"modified_timestamp":updatedTime,"householdInterviewStatus":"Completed","completedLocation":location,"completed_timestamp":updatedTime}})
                    print("householdCompletedToBeincremented ==  True")
                else:
                    #If all members are not completed, then household should be marked InProgress in the households table
                    mydb.households.find_one_and_update({"householdId" : householdId},{"$set":{"modified_user":userid,"modified_timestamp":updatedTime,"householdInterviewStatus":"InProgress"}})
                    print("householdCompletedToBeincremented ==  false")
            userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})
            numberOfMembersCompleted = userfind.get('numberOfMembersCompleted')
            numberOfMembersINProgress = userfind.get('numberOfMembersINProgress')
            numberOfHouseholdsCompleted = userfind.get('numberOfHouseholdsCompleted')
            numberOfHouseholdsINProgress = userfind.get('numberOfHouseholdsINProgress')
            print("After Change")
            print(numberOfMembersCompleted)
            print(numberOfMembersINProgress)
            print(numberOfHouseholdsCompleted)
            print(numberOfHouseholdsINProgress)        
        else:
            print("Update the record to Completed")
            #Update assessment data table and metadata table
            data = {"data":assessment_data}
            mydb.assessmentData.find_one_and_update({"memberId":memberId,"householdId":householdId},{"$set":{"data":assessment_data,"updatedTime":updatedTime,"location":location,"userid":userid,"status":"Completed","completedLocation":location,"completed_timestamp":updatedTime}})
            print("Updated assessment")
            #Update medatadata table
            mydb.assessmentMetaData.find_one_and_update({"memberId":memberId,"householdId":householdId},{"$set":{"memberInterviewStatus":"Completed","updatedTime":updatedTime,"location":location,"completed_timestamp":updatedTime}})
            #Update the member level status to completed
            print("Updated metadata")
            mydb.households.find_one_and_update({"householdId" : householdId, "members": { "$elemMatch": { "memberId": memberId } } },{"$set":{"members.$.memberInterviewStatus":"Completed", "members.$.modified_timestamp":updatedTime, "members.$.location":location,"members.$.completed_timestamp":updatedTime}})
            print("Updated households.memberid")
            #Incrememnt numberOfMembersCompleted to + 1  and numberOfMembersINProgress to numberOfMembersINProgress - 1 
            userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})
            numberOfMembersCompleted = userfind.get('numberOfMembersCompleted')
            numberOfMembersINProgress=userfind.get('numberOfMembersINProgress')
            numberOfHouseholdsCompleted = userfind.get('numberOfHouseholdsCompleted')
            numberOfHouseholdsINProgress = userfind.get('numberOfHouseholdsINProgress')
            print("Before Change")
            print(numberOfMembersCompleted)
            print(numberOfMembersINProgress)
            print(numberOfHouseholdsCompleted)
            print(numberOfHouseholdsINProgress)  
            
            numberOfMembersCompleted = numberOfMembersCompleted + 1
            numberOfMembersINProgress = numberOfMembersINProgress - 1
            print(numberOfMembersCompleted)
            mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfMembersCompleted":numberOfMembersCompleted,"numberOfMembersINProgress":numberOfMembersINProgress}})
            print("Updated numberOfMembersCompleted and numberOfMembersINProgress")
            
            householdfind=mydb.households.find_one({"householdId" : householdId})
            householdInterviewStatus=householdfind.get("householdInterviewStatus")
            actualmembers = householdfind.get("members")
            print("length of actual members") 
            print(len(actualmembers)) 
            members=[]
            memberIndex=0
            for y in actualmembers:
                if(y['agein15to30'] =='Yes'):
                    member={'memberId':y['memberId'],'memberInterviewStatus':y['memberInterviewStatus']}
                    members.append(member)
            print("length of members") 
            print(len(members))
            
            householdCompletedToBeincremented = True
            
            
            for y in members:
                print(y['memberInterviewStatus'])
                if(y['memberInterviewStatus'] != 'Completed'):
                    householdCompletedToBeincremented = False
                    break
            
            #If all are completed and household interview status is IN progress, then no of households completed should be made +1
            #If the previous household status was "INProgress", then the inprogress count should be made -1
            if(householdCompletedToBeincremented ==  True and householdInterviewStatus == 'InProgress'):
                numberOfHouseholdsCompleted = numberOfHouseholdsCompleted + 1
                numberOfHouseholdsINProgress = numberOfHouseholdsINProgress - 1
                mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsCompleted":numberOfHouseholdsCompleted,"numberOfHouseholdsINProgress":numberOfHouseholdsINProgress}})
                print("householdCompletedToBeincremented ==  True and householdInterviewStatus == InProgress")

            #If all are completed and household interview status is To be started, then no of households completed should be made +1
            #NO change in the in progress count for that user
            if(householdCompletedToBeincremented ==  True and householdInterviewStatus == 'TobeStarted'):
                numberOfHouseholdsCompleted = numberOfHouseholdsCompleted + 1
                mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsCompleted":numberOfHouseholdsCompleted}})
                print("householdCompletedToBeincremented ==  True and householdInterviewStatus == TobeStarted")
            
            if(householdCompletedToBeincremented ==  False and householdInterviewStatus == 'TobeStarted'):
                numberOfHouseholdsINProgress = numberOfHouseholdsINProgress + 1
                mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsINProgress":numberOfHouseholdsINProgress}})
                print("householdCompletedToBeincremented ==  False and householdInterviewStatus == TobeStarted")

            if(householdCompletedToBeincremented ==  False and householdInterviewStatus == 'InProgress'):
                #numberOfHouseholdsINProgress = numberOfHouseholdsINProgress + 1
                #mydb.users.find_one_and_update({"_id" : ObjectId(userid)},{"$set":{"numberOfHouseholdsINProgress":numberOfHouseholdsINProgress}})
                print("householdCompletedToBeincremented ==  False and householdInterviewStatus == InProgress --> Do nothing")

            #If all members are completed, then household should be marked completed in teh households table
            if(householdCompletedToBeincremented ==  True):
                mydb.households.find_one_and_update({"householdId" : householdId},{"$set":{"modified_user":userid,"modified_timestamp":updatedTime,"householdInterviewStatus":"Completed","completedLocation":location,"completed_timestamp":updatedTime}})
                print("householdCompletedToBeincremented ==  true")
            else:
                #If all members are not completed, then household should be marked InProgress in the households table
                mydb.households.find_one_and_update({"householdId" : householdId},{"$set":{"modified_user":userid,"modified_timestamp":updatedTime,"householdInterviewStatus":"InProgress"}})
                print("householdCompletedToBeincremented ==  False")
            
            userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})
            numberOfMembersCompleted = userfind.get('numberOfMembersCompleted')
            numberOfMembersINProgress=userfind.get('numberOfMembersINProgress')
            numberOfHouseholdsCompleted = userfind.get('numberOfHouseholdsCompleted')
            numberOfHouseholdsINProgress = userfind.get('numberOfHouseholdsINProgress')
            print("After Change")
            print(numberOfMembersCompleted)
            print(numberOfMembersINProgress)
            print(numberOfHouseholdsCompleted)
            print(numberOfHouseholdsINProgress)
            print("Completed Update")
    except Exception as e:
        print(e)
    return {'status': 'ok'}



@app.post('/assessmentSaveLater')
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



@app.post('/assessmentFinalSubmit')
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




@app.route('/ysSurveyorStatus')
def ysSurveyorStatus():
	#data = get_stress_json()
	return template('templates/ys_surveyStatus.tpl')

@app.route('/ysSupervisorView')
def ysSupervisorView():
	#data = get_stress_json()
	return template('templates/ys_supervisorStatus.tpl')

@app.post('/householdCompletedInfo')
def householdCompletedInfo():

	requestData = request.json
	userid = requestData.get('userid')

	userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})

	numberOfHouseholdsCompleted = userfind.get("numberOfHouseholdsCompleted")

	numberOfMembersCompleted = userfind.get("numberOfMembersCompleted") 


	response = {}
	response["msg"] = "Success"
	response["numberOfHouseholdsCompleted"] = numberOfHouseholdsCompleted
	response["numberOfMembersCompleted"] = numberOfMembersCompleted

	print(requestData)

	return json.dumps(response)

@app.post('/householdPendingInfo')
def householdPendingInfo():

	requestData = request.json
	userid = requestData.get('userid')

	userfind = mydb.users.find_one( { "_id" : ObjectId(userid)})

	myData = []

	households = mydb.households.find({"createdUserId":userid,"householdInterviewStatus": { "$nin" : ['Completed'] }},{"_id":0,"householdId":1})

	for x in households:
		myData.append(x)


	response = {}
	response["msg"] = "Success"
	response["data"] = myData
	

	print(requestData)

	return json.dumps(response)

@app.post('/householdInfo')
def householdInfo():

	requestData = request.json

	userid = requestData.get('userid')
	householdId = requestData.get('householdId')


	householdfind = mydb.households.find_one({"householdId":householdId,"createdUserId":userid},{"_id":0})


	response = {}
	response["msg"] = "Success"
	response["data"] = householdfind
	

	print(requestData)

	return json.dumps(response)

@app.post('/allusersdataInfo')
def allusersdataInfo():
	requestData = request.json

	userid = requestData.get('userid')

	

	users = mydb.users.find({},{"_id":0})

	households_completed = 0;
	households_inprogress = 0;
	households_tobestarted = 0;
	members_completed = 0;
	members_inprogress = 0;
	members_tobestarted = 0;

	for x in users:
		numberofhouseholdsCompleted = x.get('numberOfHouseholdsCompleted')
		numberofhouseholdsINProgress = x.get('numberOfHouseholdsINProgress')
		numberofhouseholdsCreated = x.get('totalNumberOfHouseholdsCreated')

		households_tobestarted += int(numberofhouseholdsCreated) - int(numberofhouseholdsINProgress) - int(numberofhouseholdsCompleted)
		households_inprogress += int(numberofhouseholdsINProgress)
		households_completed += int(numberofhouseholdsCompleted)

		numberofmembersCompleted = x.get('numberOfMembersCompleted')
		numberofmembersINProgress = x.get('numberOfMembersINProgress')
		numberofmembersCreated = x.get('totalNumberOfMembersCreated')

		members_tobestarted += int(numberofmembersCreated) - int(numberofmembersINProgress) - int(numberofmembersCompleted)
		members_inprogress += int(numberofmembersINProgress)
		members_completed += int(numberofmembersCreated)


	


	response = {}
	response["msg"] = "Success"
	response["data"] = ({"households_tobestarted":households_tobestarted,"households_inprogress":households_inprogress,"households_completed":households_completed,"members_tobestarted":members_tobestarted,"members_inprogress":members_inprogress,"members_completed":members_completed})
	

	print(requestData)

	return json.dumps(response)

@app.post('/userdataInfo')
def userdataInfo():
	requestData = request.json

	userid = requestData.get('userid')

	myData = []

	users = mydb.users.find({},{"_id":0})

	for x in users:
		myData.append(x)


	response = {}
	response["msg"] = "Success"
	response["data"] = myData
	

	print(requestData)

	return json.dumps(response)



@app.route('/yshouseholdContinue')
def ncd_stress():
	#data = get_stress_json()
	return template('templates/ys_household_continue.tpl')

@app.route('/ysAssessmentContinue/<headerparams>')
def ncd_yuvaspandanaContinue(headerparams):
    print('here')
    print(headerparams)
    x = headerparams.split("^")
    memberID = x[1]
    householdID = x[0]
    print(memberID)
    print(householdID)
    print('here after getting member and hh')
    data = get_ys_json()
    assessmentforMember = mydb.assessmentData.find_one({ "memberId":memberID,"householdId":householdID})

    assessmentdata = assessmentforMember['data']
    #print(assessmentdata[0]['value'])
    #question_data_rec = question_data['data']
    #print(question_data_rec[0]['ph'])
    q_ind=0
    for y in data["data"]:
       
        #print(assessmentdata[q_ind]['value'])
        #print(assessmentdata[q_ind]['qid'])
        y["ans_required"]=assessmentdata[q_ind]['ans_required']
        y["answered"]=assessmentdata[q_ind]['answered']
        if(assessmentdata[q_ind]['qtype'] == 'time'):
            y["hhvalue"]=assessmentdata[q_ind]['hhvalue']
            y["mmvalue"]=assessmentdata[q_ind]['mmvalue']
        if(assessmentdata[q_ind]['qtype'] == 'bp'):
            y["sys_value"]=assessmentdata[q_ind]['sys_value']
            y["dia_value"]=assessmentdata[q_ind]['dia_value']
        if(assessmentdata[q_ind]['qtype'] == 'radio'):
            y["others_data"]=assessmentdata[q_ind]['others_data']
            y["value"]=assessmentdata[q_ind]['value']
            #print(assessmentdata[q_ind]['qid'])
        if(assessmentdata[q_ind]['qtype'] == 'text' or assessmentdata[q_ind]['qtype'] == 'num' or assessmentdata[q_ind]['qtype'] == 'date'):
            y["value"]=assessmentdata[q_ind]['value']
        if(assessmentdata[q_ind]['qtype'] == 'num_na'):
             y["value"]=assessmentdata[q_ind]['value']
            
        
        #print(q_ind)
        q_ind = q_ind+1
    
    #for y in data["data"]:
        #print('//////')
        #print(y["qtype"])
        #print(y["qid"])
        #print(y)
        #if(y["qtype"] == 'radio'):
            #print(y["value"])
            
            
    print('Done adding details')
    
    response = {}
    response["msg"] = "Success"
    response["data"] = data
    
    #data = get_ys_json()

    return template('templates/assessment_ys_home_Edit.tpl', data=data)


@app.route('/ysAssessmentView/<headerparams>')
def ncd_yuvaspandanaView(headerparams):
    #print('here')
    #print(headerparams)
    x = headerparams.split("^")
    memberID = x[1]
    householdID = x[0]
    print(memberID)
    print(householdID)
    print('here after getting member and hh')
    data = get_ys_json()
    assessmentforMember = mydb.assessmentData.find_one({ "memberId":memberID,"householdId":householdID})

    assessmentdata = assessmentforMember['data']
    #print(assessmentdata[0]['value'])
    #question_data_rec = question_data['data']
    #print(question_data_rec[0]['ph'])
    q_ind=0
    for y in data["data"]:
       
        #print(assessmentdata[q_ind]['value'])
        #print(assessmentdata[q_ind]['qid'])
        y["ans_required"]=assessmentdata[q_ind]['ans_required']
        y["answered"]=assessmentdata[q_ind]['answered']
        if(assessmentdata[q_ind]['qtype'] == 'time'):
            y["hhvalue"]=assessmentdata[q_ind]['hhvalue']
            y["mmvalue"]=assessmentdata[q_ind]['mmvalue']
        if(assessmentdata[q_ind]['qtype'] == 'bp'):
            y["sys_value"]=assessmentdata[q_ind]['sys_value']
            y["dia_value"]=assessmentdata[q_ind]['dia_value']
        if(assessmentdata[q_ind]['qtype'] == 'radio'):
            y["others_data"]=assessmentdata[q_ind]['others_data']
            y["value"]=assessmentdata[q_ind]['value']
            #print(assessmentdata[q_ind]['qid'])
        if(assessmentdata[q_ind]['qtype'] == 'text' or assessmentdata[q_ind]['qtype'] == 'num' or assessmentdata[q_ind]['qtype'] == 'date'):
            y["value"]=assessmentdata[q_ind]['value']
        if(assessmentdata[q_ind]['qtype'] == 'num_na'):
             y["value"]=assessmentdata[q_ind]['value']
            
        
        #print(q_ind)
        q_ind = q_ind+1
            
            
    print('Done adding details')
    
    response = {}
    response["msg"] = "Success"
    response["data"] = data
    
    #data = get_ys_json()

    return template('templates/assessment_ys_home_view.tpl', data=data)

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

# db.users.insert({"userid": 1,"username": "test1","password": "test@123","role": "Surveyor","lastLoginTimestamp":"","lastLoginLocation":"","numberOfHouseholdsCompleted":0,"numberOfHouseholdsINProgress":0,"totalNumberOfHouseholdsCreated":0,"numberOfMembersCompleted":0,"numberOfMembersINProgress":0,"totalNumberOfMembersCreated":0})
# db.users.insert({"userid": 2,"username": "test2","password": "test@123","role": "Data_Superviser","lastLoginTimestamp":"","lastLoginLocation":"","numberOfHouseholdsCompleted":0,"numberOfHouseholdsINProgress":0,"totalNumberOfHouseholdsCreated":0,"numberOfMembersCompleted":0,"numberOfMembersINProgress":0,"totalNumberOfMembersCreated":0})
# db.users.insert({"userid": 3,"username": "test3","password": "test@123","role": "Superviser","lastLoginTimestamp":"","lastLoginLocation":"","numberOfHouseholdsCompleted":0,"numberOfHouseholdsINProgress":0,"totalNumberOfHouseholdsCreated":0,"numberOfMembersCompleted":0,"numberOfMembersINProgress":0,"totalNumberOfMembersCreated":0})
