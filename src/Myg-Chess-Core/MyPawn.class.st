Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#instVars : [
		'firstMove',
		'moveStrategy'
	],
	#classInstVars : [
		'moveStrategy'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'constants' }
MyPawn class >> black [

	^ super black initializeBlack
]

{ #category : 'accessing' }
MyPawn class >> moveStrategy [ 
	^ moveStrategy
]

{ #category : 'constants' }
MyPawn class >> white [

	^ super white initializeWhite
]

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

{ #category : 'initialize' }
MyPawn >> initializeBlack [

	firstMove := true.
	moveStrategy := MyBlackPawnMoveStrategy new.
   ^self.
]

{ #category : 'initialize' }
MyPawn >> initializeWhite [

	firstMove := true.
	moveStrategy := MyWhitePawnMoveStrategy new.
	moveStrategy chessMovesInstance: MyChessMoves new.
	moveStrategy chessMovesInstance square: square.
	^ self
]

{ #category : 'accessing' }
MyPawn >> moveStrategy [ 
	^ moveStrategy
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
		   ifTrue: [ moveStrategy firstMoveSquareLegals ]
		   ifFalse: [ moveStrategy moveSquareLegals ]) select: [ :s |
		  s notNil ]
]
