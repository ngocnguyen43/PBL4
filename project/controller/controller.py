from project import app
from project.service.predict import predict
from project.service.pre_train import pre_train
from project.service.classifier import classifier
from flask import  request, make_response,jsonify
from PIL import Image
import numpy as np
import io
import base64
@app.route('/pred', methods = ['POST'])
def index():
    try:
        # imagefile = io.BytesIO(request.get_data()).read()
        # # print(request.form['img'])
        # # img = Image.frombytes(mode="RGB",size=(224,224),data=imagefile)

        base64_image = request.form['img']
        # print(base64_image)
        # Decode base64 string to bytes
        image_data = base64.b64decode(base64_image)
        img = Image.open(io.BytesIO(image_data))
        img = img.resize((224,224))
        img = np.array(img)
        fts = pre_train(img)
        pred = predict(img=fts)
        clss, tps = classifier(pred)
        return make_response(jsonify({"type":tps , "class": clss}),200)
    except Exception as err:
        print(err)
        return make_response(jsonify({"msg":""}),400)