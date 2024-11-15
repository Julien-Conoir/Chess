Class {
	#name : 'MyBlackPawnMoveStrategy',
	#superclass : 'MyMoveStrategy',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyBlackPawnMoveStrategy >> firstMoveSquareLegals [

	|possibleMoves possibleAttacks |
	possibleMoves := {self chessMovesInstance doubleDown . self chessMovesInstance down}.
	possibleAttacks := { self chessMovesInstance singleDiagonalDownRight. self chessMovesInstance singleDiagonalDownLeft }.
	^ ((possibleMoves select: [ :move | move hasPiece not]) union: (possibleAttacks select: [ :attack | attack hasPiece]) )

]

{ #category : 'rendering' }
MyBlackPawnMoveStrategy >> moveSquareLegals [

	|possibleMoves possibleAttacks |
	possibleMoves := {self chessMovesInstance down}.
	possibleAttacks := { self chessMovesInstance singleDiagonalDownRight. self chessMovesInstance singleDiagonalDownLeft }.
	^ ((possibleMoves select: [ :move | move hasPiece not]) union: (possibleAttacks select: [ :attack | attack hasPiece]) )

]
