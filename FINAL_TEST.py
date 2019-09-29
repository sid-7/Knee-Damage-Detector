
# coding: utf-8

from keras.preprocessing.image import img_to_array
import numpy as np
import argparse
import cv2
import os
from imutils import paths
from PIL import Image
from flask import Flask,jsonify,request
import pymysql
import keras
from  datetime import datetime,date
from keras import backend as bk
from keras.models import Sequential, load_model
from keras.layers import Dense, Dropout, Flatten
from keras.layers import Conv2D, MaxPooling2D


app = Flask(__name__)
result="no result"
@app.route("/")
def fn1():
    
    # VGG 16
    input_shape = (128, 128, 1)
    
    #Instantiate an empty model
    model = Sequential()
    model.add(Conv2D(64, (3, 3), input_shape=input_shape, padding="same", activation="relu"))
    model.add(Conv2D(64, (3, 3), activation="relu", padding="same"))
    model.add(MaxPooling2D(pool_size=(2, 2), strides=(2, 2)))
    model.add(Conv2D(128, (3, 3), activation="relu", padding="same"))
    model.add(Conv2D(128, (3, 3), activation="relu", padding="same"))
    model.add(MaxPooling2D(pool_size=(2, 2), strides=(2, 2)))
    model.add(Conv2D(256, (3, 3), activation="relu", padding="same"))
    model.add(Conv2D(256, (3, 3), activation="relu", padding="same"))
    model.add(Conv2D(256, (3, 3), activation="relu", padding="same"))
    model.add(MaxPooling2D(pool_size=(2, 2), strides=(2, 2)))
    model.add(Conv2D(512, (3, 3), activation="relu", padding="same"))
    model.add(Conv2D(512, (3, 3), activation="relu", padding="same"))
    model.add(Conv2D(512, (3, 3), activation="relu", padding="same"))
    model.add(MaxPooling2D(pool_size=(2, 2), strides=(2, 2)))
    model.add(Conv2D(512, (3, 3), activation="relu", padding="same"))
    model.add(Conv2D(512, (3, 3), activation="relu", padding="same"))
    model.add(Conv2D(512, (3, 3), activation="relu", padding="same"))
    model.add(MaxPooling2D(pool_size=(2, 2), strides=(2, 2)))
    model.add(Flatten())
    model.add(Dense(4096, activation="relu"))
    model.add(Dense(4096, activation="relu"))
    model.add(Dense(5, activation="softmax"))
     
    
    model.load_weights("C:/Users/Siddharth/Documents/Final Year Project/SKRA/FinalModel.hdf5")
    model.compile(loss='binary_crossentropy', optimizer='adam', metrics=['accuracy'])
    #print("Created model and loaded weights from file")
     
    
    #filename='testImages'
    #folder_name=os.listdir('C:/Users/Viral Prajapati/SKRA/' + filename)  
    filename= request.args.get("fileId")
    print(filename)
    
    #for img in folder_name:
    name = filename
    img = name.split(os.path.sep)[-1]
    image = cv2.imread(name,0)
    #image = np.asarray(Image.open(name))
    image = cv2.resize(image,(128,128))
    image = img_to_array(image)
    image1=image.astype("float")/255.0
    image1=np.expand_dims(image1, axis=0)
    x=model.predict(image1)
    bk.clear_session()
    y=x.argmax()
        
    if y==0:
        result="KL Grade 0"
        name='output/0/' + img
        cv2.imwrite(name,image)
        print(img + " 0 done")   
        response = {"detected": "KL Grade 0:Normal joint health with no signs of osteoarthritis"}
        response=jsonify(response)
        response.headers.add("Access-Control-Allow-Origin", '*')
        #return response
    
    if y==1:
        result="KL Grade 1"
        name='output/1/' + img
        cv2.imwrite(name,image)
        print(img + " 1 done")
        response = {"detected": "KL Grade 1:Early signs of osteoarthritis. Potential minor bone spur growth"}
        response=jsonify(response)
        response.headers.add("Access-Control-Allow-Origin", '*')
        #return response
    
    if y==2:
        result="KL Grade 2"
        name='output/2/' + img
        cv2.imwrite(name,image)
        print(img + " 2 done")
        response = {"detected": "KL Grade 2:Classified as mild osteoarthritis. Early erosion of surface cartilage and potential bone spur growth. Cartilage will likely still look healthy and a sufficient amount of synovial fluid is still present."}
        response=jsonify(response)
        response.headers.add("Access-Control-Allow-Origin", '*')
        #return response
    
    if y==3:
        result="KL Grade 3"
        name='output/3/' + img
        cv2.imwrite(name,image)
        print(img + " 3 done")
        response = {"detected": "KL Grade 3:Classified as moderate osteoarthritis. Definite joint space narrowing and cartilage damage. Decrease in the amount of synovial fluid surrounding the joint."}
        response=jsonify(response)
        response.headers.add("Access-Control-Allow-Origin", '*')
        #return response
        
    if y==4:
        result="KL Grade 4"
        name='output/4/' + img
        cv2.imwrite(name,image)
        print(img + " 4 done" )
        response = {"detected": "KL Grade 4:Classified as severe osteoarthritis. Extreme joint space narrowing; bone on bone contact. Little or no cartilage remaining and a dramatic reduction in the amount of synovial fluid surrounding the joint."}
        response=jsonify(response)
        response.headers.add("Access-Control-Allow-Origin", '*')
        #return response
    print(result)

    result1 = result
    mobileNumber = request.args.get("mobileNumber")
    name = request.args.get("name")
    email = request.args.get("email")
    gender = request.args.get("gender")
    fileId = request.args.get("fileId")
    print(name)
    Detectiondate = str(date.today())
    Detectiontime = str(datetime.time(datetime.now()))

    connection = pymysql.connect(
        host="localhost",
        user="root",
        password='root',
        db='smartkneereplacementproject'
    )
    cursor1 = connection.cursor()

    cursor1.execute (
        "INSERT INTO userxraytable(result,date,time,phoneNumber,name,email,gender,imagelink) VALUES('"+ result1 +"','"+ Detectiondate +"','"+Detectiontime+"','"+str(mobileNumber)+"','"+str(name)+"','"+str(email)+"','"+str(gender)+"','"+str(fileId)+"')"
    )
    connection.commit()
    cursor1.close()
    connection.close()

    return response

app.run()
