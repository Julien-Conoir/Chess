Class {
	#name : 'MyWhitePawnMoveStrategy',
	#superclass : 'MyMoveStrategy',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyWhitePawnMoveStrategy >> enPassantSquareLegals [

	| enPassantAttack |
	enPassantAttack := OrderedCollection new.
	self isOnFifthRow ifTrue: [
		self chessMovesInstance right hasPiece ifTrue: [
			enPassantAttack add: self chessMovesInstance upRightDiagonal ].
		self chessMovesInstance left hasPiece ifTrue: [
			enPassantAttack add: self chessMovesInstance upLeftDiagonal ] ].
	^ enPassantAttack
]

{ #category : 'accessing' }
MyWhitePawnMoveStrategy >> firstMovePossibleSquares: aSquare [

	^ (aSquare up hasPiece
		ifTrue: [ #(  ) ]
		ifFalse: [
			{
				self chessMovesInstance doubleUp.
				self chessMovesInstance up } ])
]

{ #category : 'rendering' }
MyWhitePawnMoveStrategy >> firstMoveSquareLegals: aSquare [

	| possibleMoves possibleAttacks |
	self chessMovesInstance square: aSquare.
	possibleMoves := self firstMovePossibleSquares: aSquare.
	possibleAttacks := self movePossibleAttacks .
	^ (possibleMoves select: [ :move |
		   move isNotNil and: [ move hasPiece not ] ]) union:
		  (possibleAttacks select: [ :attack |
			   attack isNotNil and: [
				   attack hasPiece and: [ attack contents isWhite not ] ] ])
]

{ #category : 'testing' }
MyWhitePawnMoveStrategy >> isOnFifthRow [

	^ ((self chessMovesInstance square name) asInteger = 5)
]

{ #category : 'as yet unclassified' }
MyWhitePawnMoveStrategy >> movePossibleAttacks [
	^ {
		                   self chessMovesInstance singleDiagonalUpRight.
		                   self chessMovesInstance singleDiagonalUpLeft }
]

{ #category : 'rendering' }
MyWhitePawnMoveStrategy >> moveSquareLegals: aSquare [

	| possibleMoves possibleAttacks legalMoves |
	legalMoves := OrderedCollection new.
	self chessMovesInstance square: aSquare.
	possibleMoves := { self chessMovesInstance up }.
	possibleAttacks := self movePossibleAttacks .
	^ (possibleMoves select: [ :move |
		   move isNotNil and: [ move hasPiece not ] ]) union:
		  (possibleAttacks select: [ :attack |
			   attack isNotNil and: [
				   attack hasPiece and: [ attack contents isWhite not ] ] ])
]
