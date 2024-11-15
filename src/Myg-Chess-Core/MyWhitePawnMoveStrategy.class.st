Class {
	#name : 'MyWhitePawnMoveStrategy',
	#superclass : 'MyMoveStrategy',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyWhitePawnMoveStrategy >> firstMoveSquareLegals [

	|possibleMoves possibleAttacks |
	possibleMoves := {self chessMovesInstance doubleUp . self chessMovesInstance up}.
	possibleAttacks := { self chessMovesInstance singleDiagonalUpRight. self chessMovesInstance singleDiagonalUpLeft }.
	^ ((possibleMoves select: [ :move | move hasPiece not]) union: (possibleAttacks select: [ :attack | attack hasPiece]) )

]

{ #category : 'rendering' }
MyWhitePawnMoveStrategy >> moveSquareLegals [

	|possibleMoves possibleAttacks |
	possibleMoves := {self chessMovesInstance up}.
	possibleAttacks := { self chessMovesInstance singleDiagonalUpRight. self chessMovesInstance singleDiagonalUpLeft }.
	^ ((possibleMoves select: [ :move | move hasPiece not]) union: (possibleAttacks select: [ :attack | attack hasPiece]) )

]
