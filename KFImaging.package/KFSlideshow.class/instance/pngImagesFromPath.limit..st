service
pngImagesFromPath: aDirectoryPath limit: aLimitCount
	|col |
	col := OrderedCollection new.
	((aDirectoryPath asDirectoryEntry)  
		filesMatches: [ :fe | fe extension sameAs: 'png'])
		do: [ :fe2 |
			(col size <= aLimitCount)
				ifTrue:[
					col add: (ImageReadWriter formFromFileNamed: fe2 pathName)]].
	^col asArray.
