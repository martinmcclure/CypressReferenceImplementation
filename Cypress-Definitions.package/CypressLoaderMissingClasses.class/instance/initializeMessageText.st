initializing - private
initializeMessageText

	messageText := String streamContents: 
					[:stream |
					stream nextPutAll: 'Missing classes:'.
					self requirementsMap keysAndValuesDo: 
							[:className :definitions |
							stream
								space;
								nextPutAll: className printString , '(' , definitions size printString
											, ')']]