ui building
sampleTab
	^ self newTab
		closeable: false;
		label: 'SampleTab';
		contents:
				(BorderedMorph new
						borderWidth: 5;
						borderColor: Color red;
						yourself);
		yourself