"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: testing
"
testPackageBranchAndAuthorOnly
	"Syntax: packageName[.branch][-author][.version]"

	self
		assert: 'Announcements.v3-dhk'
			parsesToPackageName: 'Announcements'
			author: 'dhk'
			branch: 'v3'
			version: 0
