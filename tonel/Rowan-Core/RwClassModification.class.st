"
Represents modifications to a single class definition or class extension.

Instvars:

propertiesModification			PropertiesModification -- changes to class or class extension properties
instanceMethodsModification	MethodsModification -- changes to instance methods defined
classMethodsModification		MethodsModification -- changes to class methods defined
"
Class {
	#name : 'RwClassModification',
	#superclass : 'RwModification',
	#instVars : [
		'instanceMethodsModification',
		'classMethodsModification'
	],
	#category : 'Rowan-Core'
}

{ #category : 'visiting' }
RwClassModification >> acceptVisitor: aVisitor [

	^aVisitor visitClassModification: self
]

{ #category : 'Accessing' }
RwClassModification >> classMethodsModification [
	^classMethodsModification

]

{ #category : 'Updating' }
RwClassModification >> classMethodsModification: newValue [
	classMethodsModification := newValue

]

{ #category : 'initialization' }
RwClassModification >> initialize [
	"Dummy initialization that understands isEmpty for printing."

	super initialize.
	instanceMethodsModification := #().
	classMethodsModification := #()
]

{ #category : 'Accessing' }
RwClassModification >> instanceMethodsModification [
	^instanceMethodsModification

]

{ #category : 'Updating' }
RwClassModification >> instanceMethodsModification: newValue [
	instanceMethodsModification := newValue

]

{ #category : 'testing' }
RwClassModification >> isEmpty [

	^super isEmpty & instanceMethodsModification isEmpty
		& classMethodsModification isEmpty
]