"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: support-definitionBuilding
"
propertiesForSimpleClassNamed: className

	| dict |
	dict := Dictionary new.
	dict
		at: 'category' put: 'CypressTestData';
		at: 'classinstvars' put: Array new;
		at: 'classvars' put: Array new;
		at: 'comment'
			put: 'I am a class generated by Cypress tests. My name is ' , className
					, ', what''s yours?';
		at: 'gs_SymbolDictionary' put: 'CypressTestData';
		at: 'instvars'
			put: (Array with: 'iv1In' , className with: 'iv2In' , className);
		at: 'name' put: className;
		at: 'pools' put: Array new;
		at: 'super' put: 'Object';
		at: 'type' put: 'normal'.
	^dict