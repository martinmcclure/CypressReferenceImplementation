Class {
	#name : 'TDRowanTool',
	#superclass : 'TDStandardTool',
	#category : 'Rowan-Tode'
}

{ #category : 'initialization' }
TDRowanTool class >> initialize [
  self install
]

{ #category : 'initialization' }
TDRowanTool class >> installExampleOn: aTDTopezServer [
  "nothing for now"
]

{ #category : 'initialization' }
TDRowanTool class >> priority [
    <topezCommandPriority>
    ^ 50
]

{ #category : 'rowan' }
TDRowanTool class >> rowan [
  "self initialize"

  <topezCommand: 'rowan' manPage: #'rowanManPage'>
  ^ [ :topez :objIn :tokens :command | 
  self
    performSubCommand: topez
    objIn: objIn
    commandOptions: {#('help' $h #'none')}
    todeCommand: command ] 
]

{ #category : 'rowan' }
TDRowanTool class >> rowanManPage [

	^RwTool new manPage
]

{ #category : 'initialization' }
TDRowanTool class >> toolName [
  ^ 'rowan'
]

{ #category : 'initialization' }
TDRowanTool class >> toolReadMe [
  ^ self commandPath , ' provides Rowan project/package management support.'
]

{ #category : 'commands' }
TDRowanTool >> rowanclone [
]

{ #category : 'commands' }
TDRowanTool >> rowancommit [
]

{ #category : 'commands' }
TDRowanTool >> rowandiff [
  "
  rowan diff [-h|--help] <specUrl>
"

  | diffText |
  self getSubcommandOptsMixedLongShort: {}.
  subArguments size < 1
    ifTrue: [ 
      self
        error:
          'Missing required argument <specUrl>. See `man rowan diff` for details.' ].
  diffText := RwTool diff specUrl: (subArguments at: 1).
  diffText
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'edit')
        windowName: #'mcDiff';
        yourself)
]

{ #category : 'commands' }
TDRowanTool >> rowanlist [
]

{ #category : 'commands' }
TDRowanTool >> rowanload [
]

{ #category : 'commands' }
TDRowanTool >> rowanlog [
]

{ #category : 'commands' }
TDRowanTool >> rowanpull [
]

{ #category : 'commands' }
TDRowanTool >> rowanpush [
]

{ #category : 'commands' }
TDRowanTool >> rowanregister [
]

{ #category : 'commands' }
TDRowanTool >> rowanregistry [
]

{ #category : 'commands' }
TDRowanTool >> rowanrevert [
]

{ #category : 'commands' }
TDRowanTool >> rowansave [
]

{ #category : 'commands' }
TDRowanTool >> rowantest [
]

{ #category : 'commands' }
TDRowanTool >> rowanunregister [
]