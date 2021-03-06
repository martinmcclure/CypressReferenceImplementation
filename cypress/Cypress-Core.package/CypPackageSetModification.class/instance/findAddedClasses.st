"
notice: Copyright 2013,2016 GemTalk Systems, LLC. Open source under the MIT license.
category: private - moves
"
findAddedClasses

	| addedClasses |
	addedClasses := Dictionary new.
	elementsModified do: 
			[:packageModification |
			| classesModification |
			classesModification := packageModification classesModification.
			classesModification elementsModified do: 
					[:classModification |
					classModification before isEmpty
						ifTrue: 
							[| newClass |
							newClass := classModification after.
							addedClasses at: newClass key
								put: (CypClassAdditionOrRemoval
										packageDefinition: packageModification before
										classKey: newClass key
										classesModification: classesModification)]]].
	^addedClasses