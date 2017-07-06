*GdsFeel-UI-ElementAddition
fromUser
	<script>
	| file  |
	file := GdsFeelMorphic
		chooseFullFileName: 'Choose dxf file'
		extensions: #('dxf').
	file ifNil: [^ nil].
	^ DxfFile new file: file; yourself.
	
	