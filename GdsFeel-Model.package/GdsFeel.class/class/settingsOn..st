settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #GdsFeel)
		with: [ 
			(aBuilder setting: #dependentEnabled)
				target: self;
				label: 'Dpendent enabled';
				description: 'Use Clasical dependent mechanizm.' ]