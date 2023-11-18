from project import app
from project.service.predict import predict
from project.service.pre_train import pre_train
from flask import  request, make_response,jsonify
from PIL import Image
import numpy as np
@app.route('/', methods = ['POST'])
def index():
    try:
        imagefile = request.files.get('img', '')
        img = Image.open(imagefile)
        img = img.resize((224,224))
        img = np.array(img)
        fts = pre_train(img)
        res = predict(img=fts)
        print(res)
        return jsonify({"alr":"alr"})
    except Exception as err:
        print(err)
        return make_response(jsonify({"a":"a"}))