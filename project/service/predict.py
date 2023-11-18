from project.service.load_model import load_model


def predict(img):
    model,types = load_model()
    print(types)
    return model.predict(img)