id operation
unId: keyNumber
	ids
		remove: keyNumber
		ifAbsent: [ Transcript
				cr;
				show: '*** WARNING *** UNID: ';
				show: keyNumber printString;
				show: ' not in id selection' ]