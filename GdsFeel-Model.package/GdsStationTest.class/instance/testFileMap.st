tests-private
testFileMap
	GdsStation default fileMap keys allSatisfy: [ :f | f isFile ]. 
	GdsStation default fileMap values allSatisfy: [ :lib | lib isKindOf: GdsLibrary ]. 	