initialization
initializeSensorLayer
	| m |
	m := self createSensorLayer .

	m setDrawOnBlock: [:localCanvas :morph |
		self sensorDrawOn: localCanvas layerMorph:  morph].

	m setStepBlock: [:morph |
		self stepSensorLayerMorph: morph].

	m stepTime: 10.
	