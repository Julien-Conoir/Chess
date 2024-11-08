Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#instVars : [
		'firstMove'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyPawn >> firstMove [
	^ firstMove 
]

{ #category : 'accessing' }
MyPawn >> firstMove: aBoolean [
	firstMove := aBoolean 
]

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'initialize' }
MyPawn >> initialize [

	firstMove := true
]

{ #category : 'path commands' }
MyPawn >> moveTo: aSquare [

	super moveTo: aSquare.
	self firstMove ifTrue: [self firstMove: false]
]

{ #category : 'as yet unclassified' }
MyPawn >> previewOfTargetSquaresLegal [

	^ self isWhite
		  ifTrue: [ { square up} ]
		  ifFalse: [ { square down } ]
]

{ #category : 'as yet unclassified' }
MyPawn >> previewOfTargetSquaresLegalFirstMove [

	^ self isWhite
		  ifTrue: [ self targetNotPieceForward: (square up) and: (square up up) ]
		  ifFalse: [
		  self targetNotPieceForward: (square down) and: (square down down) ]
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'as yet unclassified' }
MyPawn >> targetNotPieceForward: firstSquare and:secondSquare [

	^ (firstSquare notNil and: [ firstSquare hasPiece not ])
		  ifTrue: [
			  {
				  firstSquare.
				  secondSquare } ]
		  ifFalse: [ {  } ]
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

	^ (self firstMove
		   ifTrue: [ self previewOfTargetSquaresLegalFirstMove ]
		   ifFalse: [ self previewOfTargetSquaresLegal ]) select: [ :s |
		  s notNil and: s hasPiece not]
]
