Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testBlackPawnTargetSquaresLegalHas2ChoicesWhenFirstMove [
	| pawn targetSquares board |
	board := MyChessBoard empty.
	pawn := MyPawn new.
	pawn color: Color black.
	board at: 'c7' put: pawn .
	targetSquares := pawn targetSquaresLegal: false.
	self assert: targetSquares size equals: 2.
	self assert: (targetSquares includes: (board at: 'c6')).
	self assert: (targetSquares includes: (board at: 'c5')).
]

{ #category : 'tests' }
MyPawnTest >> testInitializeWithCorrectFirstMove [
	
	| pawn |
	pawn := MyPawn new. 
	self assert: pawn firstMove.

]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnTargetSquaresLegalHas2ChoicesWhenFirstMove [
	| pawn targetSquares board |
	board := MyChessBoard empty.
	pawn := MyPawn new.
	pawn color: Color white.
	board at: 'b2' put: pawn .
	targetSquares := pawn targetSquaresLegal: true.
	self assert: targetSquares size equals: 2.
	self assert: (targetSquares includes: (board at: 'b3')).
	self assert: (targetSquares includes: (board at: 'b4')).
]
