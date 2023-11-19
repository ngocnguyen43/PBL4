from project import app
from project.service.predict import predict
from project.service.pre_train import pre_train
from flask import  request, Response,jsonify
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
        res = predict(img=fts)
        return jsonify({"type":res})
    except Exception as err:
        print(err)
        return jsonify({"a":"a"})