Class {
	#name : 'MyWhitePawnMoveStrategy',
	#superclass : 'MyMoveStrategy',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyWhitePawnMoveStrategy >> firstMoveSquareLegals: aSquare [

	| possibleMoves possibleAttacks |
	self chessMovesInstance square: aSquare.
	possibleMoves := aSquare up hasPiece
		                 ifTrue: [ #(  ) ]
		                 ifFalse: [
			                 {
				                 self chessMovesInstance doubleUp.
				                 self chessMovesInstance up } ].
	possibleAttacks := {
		                   self chessMovesInstance singleDiagonalUpRight.
		                   self chessMovesInstance singleDiagonalUpLeft }.
	^ (possibleMoves select: [ :move |
		   move isNotNil and: [ move hasPiece not ] ]) union:
		  (possibleAttacks select: [ :attack |
			   attack isNotNil and: [ attack hasPiece ] ])
]

{ #category : 'rendering' }
MyWhitePawnMoveStrategy >> moveSquareLegals: aSquare [

	| possibleMoves possibleAttacks |
	self chessMovesInstance square: aSquare.
	possibleMoves := { self chessMovesInstance up }.
	possibleAttacks := {
		                   self chessMovesInstance singleDiagonalUpRight.
		                   self chessMovesInstance singleDiagonalUpLeft }.
	^ (possibleMoves select: [ :move |
		   move isNotNil and: [ move hasPiece not ] ]) union:
		  (possibleAttacks select: [ :attack |
			   attack isNotNil and: [ attack hasPiece ] ])
]
