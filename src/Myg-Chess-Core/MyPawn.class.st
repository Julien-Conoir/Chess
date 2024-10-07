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

{ #category : 'as yet unclassified' }
MyPawn >> methodSelectorAndArgumentNames [
	| firstSquare secondSquare |
	^ self isWhite
	ifTrue: [
					   firstSquare := square up.
					   secondSquare := square up up.
					   (firstSquare notNil and: [ firstSquare hasPiece not ])
						   ifTrue: [ { firstSquare. secondSquare } ]
						   ifFalse: [ { firstSquare } ] ]
]

{ #category : 'path commands' }
MyPawn >> moveTo: aSquare [

	super moveTo: aSquare.
	self firstMove ifTrue: [self firstMove: false]
]

{ #category : 'as yet unclassified' }
MyPawn >> previewOfTargetSquaresLegal [

	^ (self isWhite
		  ifTrue: [ {square up} ]
		  ifFalse: [ {square down} ])
]

{ #category : 'as yet unclassified' }
MyPawn >> previewOfTargetSquaresLegalFirstMove [

	| firstSquare secondSquare |
	self isWhite
		ifTrue: [
			firstSquare := square up.
			secondSquare := square up up ]
		ifFalse: [
			firstSquare := square down.
			secondSquare := square down down ].
	^ (firstSquare notNil and: [ firstSquare hasPiece not ])
		  ifTrue: [
			  {
				  firstSquare.
				  secondSquare } ]
		  ifFalse: [ { } ]
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

	^ (self firstMove
				   ifTrue: [self previewOfTargetSquaresLegalFirstMove ]
				   ifFalse: [self previewOfTargetSquaresLegal ] ) select: [ :s |
		  s notNil and: [ s hasPiece not ] ]
]
