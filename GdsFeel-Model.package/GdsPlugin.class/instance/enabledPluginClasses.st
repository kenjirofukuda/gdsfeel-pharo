as yet unclassified
enabledPluginClasses
	"GdsPlugin new enabledPluginClasses explore."
	^ self pluginClasses select: [ :clazz | (clazz respondsTo: #enabled) and: [ clazz enabled ]]