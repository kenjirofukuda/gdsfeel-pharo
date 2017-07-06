documentation
readMeTitle
	^'README - ', (((self category asString splitOn: '-') allButLast) joinUsing: '-')