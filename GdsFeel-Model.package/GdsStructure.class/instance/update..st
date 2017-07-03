updating
update: anObject.
	GdsFeel ifDebugOn: [:s |
		s nextPutAll:  self class printString.
		s nextPutAll: ' recieve: '.
		s nextPutAll: anObject printString.].
	(self markDirtySelectors includes: anObject)
		ifTrue: [
			self markDirty.
			dataExtentForElements := nil.
			self changed: #geometry.
			self changed].
	anObject == #geometry
		ifTrue: [
			dataExtentForElements := nil.
			self changed.].
	anObject == #unget
		ifTrue: [
			self revertDirty].
	({ #put . #wipe . #idDelete } includes: anObject)
		ifTrue: [
			self comitDirty.
			self changed: anObject].
	anObject == #get
		ifTrue: [self changed].
	"anObject == #id
		ifTrue: [
			self changedIdGroup.			
			self changed]."
	anObject == #tstructEnabled
		ifTrue: [self changed: #tstructEnabled].
	anObject == self currentItem
		ifTrue: [self changed: #geometry].		
	super update: anObject.