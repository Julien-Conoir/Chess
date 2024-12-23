"
Class representing a chessboard pawn
"
Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core-Chess',
	#package : 'Myg-Chess-Core',
	#tag : 'Chess'
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
MyPawn >> id [

	^ 'P'
]

{ #category : 'initialize' }
MyPawn >> initialize [

	firstMove := true
]

{ #category : 'initialize' }
MyPawn >> initializeBlack [

	moveStrategy := MyBlackPawnMoveStrategy new.
	moveStrategy chessMovesInstance: MyChessMoves new.
	moveStrategy chessMovesInstance square: square.
	^ self
]

{ #category : 'initialize' }
MyPawn >> initializeWhite [

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

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

	^ (self firstMove
		   ifTrue: [ moveStrategy firstMoveSquareLegals: self square ]
		   ifFalse: [ moveStrategy moveSquareLegals: self square ]) select: [ :s |
		  s notNil ]
]
