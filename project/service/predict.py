import pickle
model_path = open("model_29_10","rb")
model = pickle.load(model_path)
model_path.close()

def predict(img):
    return model.predict(img)