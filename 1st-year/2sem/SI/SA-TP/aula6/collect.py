import requests
import json
import xmltodict
import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore

API_KEY = "fEfGR1nCzLO9jHUHkPICb0RGyVuUvGos"
url = "https://api.tomtom.com/traffic/services/4/flowSegmentData/absolute/10/xml?key="+API_KEY+"&point=52.41072,4.84239"

def getrafficData():
    response = requests.get(url)
    decoded_response = response.content.decode("utf-8")

    response_json = json.loads(json.dumps(xmltodict.parse(decoded_response)))
    return response_json

def saveFirebase(data):
    cred = credentials.Certificate("C:\\Users\\joaop\\Documents\\GitHub\\MEI\\1st-year\\2sem\\SI\\SA-TP\\aula6\\collect-traffic-firebase-adminsdk-7bgva-b10a81ea30.json")
    firebase_admin.initialize_app(cred)
    DB = firestore.client()
    if DB is not None:
        doc_ref = DB.collection("traffic").document("data")
        doc_ref.set(data)


data=getrafficData()
saveFirebase(data)