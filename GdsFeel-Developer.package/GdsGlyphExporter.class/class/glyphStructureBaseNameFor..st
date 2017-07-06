private
glyphStructureBaseNameFor: anAsciiCode
	 ^(anAsciiCode radix: 8) padLeftTo: 3  with: $0.