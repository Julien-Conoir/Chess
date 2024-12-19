Class {
	#name : 'MyBlackPawnMoveStrategy',
	#superclass : 'MyMoveStrategy',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyBlackPawnMoveStrategy >> enPassantSquareLegals [

	| enPassantAttack |
	enPassantAttack := OrderedCollection new.
	self isOnFifthRow ifTrue: [
		self chessMovesInstance right hasPiece ifTrue: [
			enPassantAttack add: self chessMovesInstance downRightDiagonal ].
		self chessMovesInstance left hasPiece ifTrue: [
			enPassantAttack add: self chessMovesInstance downLeftDiagonal ] ].
	^ enPassantAttack
]

{ #category : 'accessing' }
MyBlackPawnMoveStrategy >> firstMovePossibleSquares: aSquare [

	^ (aSquare down hasPiece
		ifTrue: [ #(  ) ]
		ifFalse: [
			{
				self chessMovesInstance doubleDown.
				self chessMovesInstance down } ])
]

{ #category : 'rendering' }
MyBlackPawnMoveStrategy >> firstMoveSquareLegals: aSquare [

	| possibleMoves possibleAttacks |
	self chessMovesInstance square: aSquare.
	possibleMoves := self firstMovePossibleSquares: aSquare.
	possibleAttacks := self movePossibleAttacks.
	^ (possibleMoves select: [ :move |
		   move isNotNil and: [ move hasPiece not ] ]) union:
		  (possibleAttacks select: [ :attack |
			   attack isNotNil and: [
				   attack hasPiece and: [ attack contents isWhite ] ] ])
]

{ #category : 'testing' }
MyBlackPawnMoveStrategy >> isOnFifthRow [

	^ ((self chessMovesInstance square name) asInteger = 4)
]

{ #category : 'as yet unclassified' }
MyBlackPawnMoveStrategy >> movePossibleAttacks [

	^ {
		  self chessMovesInstance singleDiagonalDownRight.
		  self chessMovesInstance singleDiagonalDownLeft }
]

{ #category : 'rendering' }
MyBlackPawnMoveStrategy >> moveSquareLegals: aSquare [

	| possibleMoves possibleAttacks legalMoves |
	legalMoves := OrderedCollection new.
	self chessMovesInstance square: aSquare.
	possibleMoves := { self chessMovesInstance down }.
	possibleAttacks := self movePossibleAttacks.
	^ (possibleMoves select: [ :move |
		   move isNotNil and: [ move hasPiece not ] ]) union:
		  (possibleAttacks select: [ :attack |
			   attack isNotNil and: [
				   attack hasPiece and: [ attack contents isWhite ] ] ])
]
