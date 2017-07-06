as yet unclassified
createViewingBaseForm
	"self createViewingBaseForm display"
	^  (Form
	extent: 16 @ 16
	depth: 1
	fromArray: #(
		16rE000000
		16r31800000
		16r40400000
		16r40400000
		16r80200000
		16r80200000
		16r80200000
		16r40600000
		16r40400000
		16r31E00000
		16rF700000
		16r380000
		16r1C0000
		16rE0000
		16r70000
		16r30000)
	offset: -5 @ -5)