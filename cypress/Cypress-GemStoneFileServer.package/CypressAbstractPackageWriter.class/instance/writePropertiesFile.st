"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: writing
"
writePropertiesFile

	self
		writeInDirectoryName: '.'
		fileName: 'properties'
		extension: self propertiesFileNameExtension
		visit: [:fileStream | Dictionary new _writeCypressJsonOn: fileStream]
