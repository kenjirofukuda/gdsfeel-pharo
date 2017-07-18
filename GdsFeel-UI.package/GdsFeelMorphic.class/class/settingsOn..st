settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder setting: #goodiesEnabled)
		parent: #GdsFeel;
		target: self;
		label: 'Show developer Tools';
		description: 'optional tools enabled'.
	(aBuilder setting: #debugFindElement)
		parent: #GdsFeel;
		target: self;
		label: 'Explore Find Infomation in GET''s ';
		description: 'explore find element information by GET command'.
	(aBuilder setting: #useCustomCursor)
		parent: #GdsFeel;
		target: self;
		label: 'Use custom cursor';
		description: 'Use custom cursor'