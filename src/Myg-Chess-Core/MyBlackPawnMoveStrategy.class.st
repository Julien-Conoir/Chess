Class {
	#name : 'MyBlackPawnMoveStrategy',
	#superclass : 'MyMoveStrategy',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyBlackPawnMoveStrategy >> firstMoveSquareLegals: aSquare [

	| possibleMoves possibleAttacks |
	self chessMovesInstance square: aSquare.
	possibleMoves := aSquare down hasPiece
		                 ifTrue: [ #(  ) ]
		                 ifFalse: [
			                 {
				                 self chessMovesInstance doubleDown.
				                 self chessMovesInstance down } ].
	possibleAttacks := {
		                   self chessMovesInstance singleDiagonalDownRight.
		                   self chessMovesInstance singleDiagonalDownLeft }.
	^ (possibleMoves select: [ :move |
		   move isNotNil and: [ move hasPiece not ] ]) union:
		  (possibleAttacks select: [ :attack |
			   attack isNotNil and: [
				   attack hasPiece and: [attack contents isWhite] ] ])
]

{ #category : 'rendering' }
MyBlackPawnMoveStrategy >> moveSquareLegals: aSquare [

	| possibleMoves possibleAttacks |
	self chessMovesInstance square: aSquare.
	possibleMoves := { self chessMovesInstance down }.
	possibleAttacks := {
		                   self chessMovesInstance singleDiagonalDownRight.
		                   self chessMovesInstance singleDiagonalDownLeft }.
	^ (possibleMoves select: [ :move |
		   move isNotNil and: [ move hasPiece not ] ]) union:
		  (possibleAttacks select: [ :attack |
			   attack isNotNil and: [
				   attack hasPiece and: [attack contents isWhite] ] ])
]
