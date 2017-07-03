T-GdsModel
checkAnnouncer: anInstance
	((anInstance respondsTo: #announcer) and: [(anInstance perform: #announcer) class = Announcer])
		ifFalse: [
			self error: ('no Announcer instance: ', anInstance printString).
			 ]
