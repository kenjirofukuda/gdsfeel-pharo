as yet unclassified
allDispose
	<script>
	Cursor wait
		showWhile: [ 
			GdsStation quit.
			GdsStation initialize.
			GdsLibrary allInstancesDo: [ :l | l allDispose ].
			GdsStructure allInstancesDo: [ :l | l allDispose ].
			10 timesRepeat: [ Smalltalk garbageCollect ] ].
	SmalltalkImage current informSpaceLeftAfterGarbageCollection