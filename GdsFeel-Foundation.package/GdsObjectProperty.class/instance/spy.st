debugging
spy
	| spyWindow |
	spyWindow := (AnnouncementSpy on: self announcer) build. 
	spyWindow openInWorld.
	^spyWindow