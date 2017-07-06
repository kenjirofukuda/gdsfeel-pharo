ui building
newTabForLibrary: aGdsLibrary
	| balloonView athensView |
	balloonView := self createBalloonView.
	self window announcer when: WindowResizing do: [:ann | balloonView inspectFastdrawing: ann].
	balloonView 
		bindKeyCombination: Character escape 
		toAction: [ 
			balloonView structure ifNotNil: [ :s | s idSelection idClear] ].

	athensView := self createAthensStructureView.
	athensView
		ifNotNil: [
			athensView setProperty: #library toValue: aGdsLibrary.
			athensView setProperty: #toggleView toValue: balloonView].
	
	balloonView setProperty: #library toValue: aGdsLibrary.
	balloonView setProperty: #toggleView toValue: athensView.
	^ self newTab
		closeable: false;
		label: (self tabNameForLibrary: aGdsLibrary);
		icon: (self iconFor: aGdsLibrary);
		contents: balloonView;
		yourself