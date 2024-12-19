Class {
	#name : 'MyChessMoves',
	#superclass : 'Object',
	#instVars : [
		'square'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyChessMoves >> doubleDown [

	^ square down down ifNil: [ square ]
]

{ #category : 'rendering' }
MyChessMoves >> doubleUp [

	^ square up up ifNil: [ square ]
]

{ #category : 'rendering' }
MyChessMoves >> down [

	^ square down ifNil: [ square ]
]

{ #category : 'accessing' }
MyChessMoves >> left [

	^ square left ifNil: [ square ]
]

{ #category : 'accessing' }
MyChessMoves >> right [

	^ square right ifNil: [ square ]
]

{ #category : 'rendering' }
MyChessMoves >> singleDiagonalDownLeft [

    ^ square down ifNotNil: [ :downSquare | downSquare left ].

]

{ #category : 'rendering' }
MyChessMoves >> singleDiagonalDownRight [

    ^ square down ifNotNil: [ :downSquare | downSquare right ].

]

{ #category : 'rendering' }
MyChessMoves >> singleDiagonalUpLeft [

	    ^ square up ifNotNil: [ :upSquare | upSquare left ].
]

{ #category : 'rendering' }
MyChessMoves >> singleDiagonalUpRight [

	    ^ square up ifNotNil: [ :upSquare | upSquare right ].
]

{ #category : 'accessing' }
MyChessMoves >> square [
    
	^ square

]

{ #category : 'accessing' }
MyChessMoves >> square: aMyChessSquare [
    
	square := aMyChessSquare

]

{ #category : 'rendering' }
MyChessMoves >> up [

	^ square up ifNil: [ square ]
]
