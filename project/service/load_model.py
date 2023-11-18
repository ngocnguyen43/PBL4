import pickle

model = None
types = None

def load_model():
    global model
    global types
    if not model and not types:
        print("true not model")
        model_path = open("model","rb")
        temp = pickle.load(model_path)
        model , types = temp
        model_path.close()
    return model,types
