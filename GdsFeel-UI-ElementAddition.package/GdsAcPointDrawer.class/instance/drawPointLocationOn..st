drawing
drawPointLocationOn: aCanvas
	| text center |
	center := self element centerPoint.
	text := '(<1s>, <2s>)' expandMacrosWith: center x asString with: center y asString.
	morph drawOn: aCanvas text: text asString at: center.