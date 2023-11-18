from project.service.load_model import load_model


def predict(img):
    model,types = load_model()
    pre = model.predict(img)
    return types[pre[0]]