as yet unclassified
reMakeGDSreaderSample
	<script>
	"self reMakeGDSreaderSample"
	| file |
	file := './GdsFeel/BGHIER.DB' asFileReference.
	file ensureDelete.
	self makeGDSreaderSample.
	