*GdsFeel-UI-Athens-extension
primInverseDistanceTransformX: x Y: y

	<primitive: #primitiveNativeCall module: #NativeBoostPlugin>
	
	^self nbCall: #(
		void cairo_device_to_user_distance (AthensCairoCanvas canvas,
                                                         double * x,
                                                         double * y) )
