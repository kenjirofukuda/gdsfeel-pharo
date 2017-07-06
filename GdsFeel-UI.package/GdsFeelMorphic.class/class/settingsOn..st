settings
settingsOn: aBuilder 
	<systemsettings>
	(aBuilder group: #GdsFeel)
		label: 'GdsFeel';
		with: [
			(aBuilder setting: #goodiesEnabled)
				target: self; 
				label: 'Show developer Tools';
		 		description: 'optional tools enabled'.
			(aBuilder setting: #debugFindElement)
				target: self; 
				label: 'Explore Find Infomation in GET''s ';
		 		description: 'explore find element information by GET command'.
			(aBuilder setting: #useCustomCursor)
				target: self; 
				label: 'Use custom cursor';
		 		description: 'Use custom cursor'.
				]