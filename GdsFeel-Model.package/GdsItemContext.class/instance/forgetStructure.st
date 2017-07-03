private
forgetStructure
	"structure ifNotNil: [
		self removeDependent: structure.
		self announcer unsubscribe: structure.
		structure := nil]"
	