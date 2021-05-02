import tensorflow as tf
import time

device_name = tf.test.gpu_device_name()

if "GPU" not in device_name:
	print("GPU device not found")
else:
	print(f"Found GPU at: {device_name}")


class Data:
	def __init__(self):
		(self.x_train, self.y_train), (self.x_test, self.y_test) = tf.keras.datasets.mnist.load_data()
		self.x_train, self.x_test = self.x_train/255.0, self.x_test/255.0

	def get_data(self):
		return (self.x_train, self.y_train), (self.x_test, self.y_test)


class Model:
	def __init__(self):
		self.n_classes = 10
		self.resolution = [28, 28]

		self.model = self.build_model()
		self.model.compile(optimizer='adam', metrics=['accuracy'], loss='sparse_categorical_crossentropy')
		tf.keras.utils.plot_model(self.model, to_file='model.png', show_shapes=True)


	def build_model(self):
		C = lambda c: tf.keras.layers.Conv2D(c, kernel_size=(3, 3), strides=(1, 1), padding='same')
		R = lambda: tf.keras.layers.Activation('relu')
		P = lambda: tf.keras.layers.MaxPooling2D(pool_size=(2, 2))

		x = x_in = tf.keras.layers.Input(shape=self.resolution, name="input_layer")
		x = tf.keras.layers.Reshape(target_shape=(self.resolution[0], self.resolution[1], 1))(x)

		layers = [C(32), R(), P()
				, C(64), R(), P()
				, C(128), R()
				, C(256), R()
				, C(512), R()]

		for layer in layers:
			x = layer(x)


		x = C(self.n_classes)(x)
		x = tf.keras.layers.GlobalAveragePooling2D()(x)
		x = tf.keras.layers.Activation('softmax')(x)
		return tf.keras.Model(inputs=x_in, outputs=x)


def main():
	start_time_train = time.time()

	(x_train, y_train), (x_test, y_test) = Data().get_data()

	model = Model().model
	model.fit(x_train, y_train, epochs=5)

	print(f"train time: {time.time()-start_time_train:.3f}[s]")

	model.evaluate(x_test, y_test, verbose=2)
	

if(__name__=="__main__"):
	main()