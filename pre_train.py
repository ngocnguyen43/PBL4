from keras.applications.vgg16 import VGG16
VGG_model=VGG16(input_shape=(224,224,3),include_top=False,weights='imagenet')
for layer in VGG_model.layers:
    layer.trainable=False

VGG_model.save("pre_train.keras")

