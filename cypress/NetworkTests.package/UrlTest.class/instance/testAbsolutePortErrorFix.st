"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: tests
"
testAbsolutePortErrorFix
	
	self shouldnt: [Url absoluteFromText: 'http://swikis.ddo.jp:8823/'] raise: Error.

	self should: [Url absoluteFromText: 'http://swikis.ddo.jp:-1/'] raise: Error.
	self should: [Url absoluteFromText: 'http://swikis.ddo.jp:65536/'] raise: Error.
	self should: [Url absoluteFromText: 'http://swikis.ddo.jp:auau/'] raise: Error.