settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #HogeApp)
		with: [ 
			(aBuilder setting: #pngSaveDirectory)
				type: #Directory;
				target: self;
				description: 'The path of a directory where png file';
				label: 'PNG Save directory' ]