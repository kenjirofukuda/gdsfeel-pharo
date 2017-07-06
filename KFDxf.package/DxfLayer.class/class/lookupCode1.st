development support
lookupCode1
	<script>
	(((Soup fromString: ('http://sub-atomic.com/~moses/acadcolors.html' asZnUrl retrieveContents ))
		 findAllTags: [ :t | t name = 'tr' ]) allButFirst: 3 ) explore.