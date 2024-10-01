Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testInitializeWithCorrectFirstMove [
	
	| pawn |
	pawn := MyPawn new. 
	self assert: pawn firstMove.

]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnFirstMove [
	| pawn targetSquares startSquare |
	pawn := MyPawn new.
	pawn color: Color white.
	startSquare := MyChessSquare new.
	startSquare color: Color white.
	startSquare name: '4'.
	pawn square: startSquare.
	targetSquares := pawn targetSquaresLegal: true.
	self assert: targetSquares size equals: 2.
]
