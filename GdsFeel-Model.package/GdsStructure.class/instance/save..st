objects from disk
save: aForceBoolean
	self
		saveBlock: [ GdsFeel fileOutXmlTopElement: self asXmlElement toFile: self storageFile ]
		force: aForceBoolean