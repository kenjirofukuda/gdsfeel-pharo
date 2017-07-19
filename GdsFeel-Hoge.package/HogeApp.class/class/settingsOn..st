settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #HogeApp)
		with: [ (aBuilder setting: #pngSaveDirectory)
				type: #Directory;
				target: HogeAppSettings;
				targetSelector: #instance;
				description: 'The path of a directory where png file';
				label: 'PNG Save directory'.	"TODO: move to KFImaging"
			(aBuilder range: #handleSize)
				target: HogeAppSettings;
				targetSelector: #instance;
				default: 6;
				description: 'Selection marker size';
				label: 'Handle size';
				range: (6 to: 16 by: 2).	"TODO: grouping"
			(aBuilder range: #pointDisplaySize)
				target: HogeAppSettings;
				targetSelector: #instance;
				default: 4;
				description: 'Selection marker size';
				label: 'Point display size';
				range: (4 to: 16 by: 2)	"TODO: grouping" ]