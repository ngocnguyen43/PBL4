from project import app
from project.service import model
from flask import render_template, request, url_for,make_response,jsonify
from PIL import Image
import numpy as np
@app.route('/', methods = ['POST'])
def index():
    try:
        imagefile = request.files.get('img', '')
        img = Image.open(imagefile)
        img = np.array(img)
        img = img.reshape(img.)
        print(img)
        res = model.predict(img=img)
        return jsonify({"alr":res})
    except Exception as err:
        print(err)
        return make_response(jsonify({"a":"a"}))