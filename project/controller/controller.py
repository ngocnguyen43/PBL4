from project import app
from project.service.predict import predict
from project.service.pre_train import pre_train
from project.service.classifier import classifier
from flask import  request, make_response,jsonify
from PIL import Image
import numpy as np
@app.route('/pred', methods = ['POST'])
def index():
    try:
        imagefile = request.files.get('img', '')
        img = Image.open(imagefile)
        img = img.resize((224,224))
        img = np.array(img)
        fts = pre_train(img)
        pred = predict(img=fts)
        clss, tps = classifier(pred)
        return make_response(jsonify({"type":tps , "class": clss}),200)
    except Exception as err:
        print(err)
        return make_response(jsonify({"msg":""}),400)