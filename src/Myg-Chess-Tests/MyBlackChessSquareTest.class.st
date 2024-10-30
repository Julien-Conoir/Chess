Class {
	#name : 'MyBlackChessSquareTest',
	#superclass : 'TestCase',
	#instVars : [
		'square'
	],
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'running' }
MyBlackChessSquareTest >> setUp [
	super setUp.
	square := MyBlackChessSquare new
]

{ #category : 'tests' }
MyBlackChessSquareTest >> testForeground [
			
	| board |
	board := MyChessBoard empty blackColor: Color black.
	square board: board.
	self assert: square foreground equals: Color black
]

{ #category : 'tests' }
MyBlackChessSquareTest >> testNegatedColor [

	self assert: square negatedColor equals: Color white
]

{ #category : 'tests' }
MyBlackChessSquareTest >> testRenderBishopOnBlackSquare [

	| piece |
	piece := MyBishop new color: Color black; yourself.
	self assert: (square renderBishop: piece) equals: 'v'.
	piece color: Color white.
	self assert: (square renderBishop: piece) equals: 'b'.
]

{ #category : 'tests' }
MyBlackChessSquareTest >> testRenderKingOnBlackSquare [

	| piece |
	piece := MyKing new color: Color black; yourself.
	self assert: (square renderKing: piece) equals: 'l'.
	piece color: Color white.
	self assert: (square renderKing: piece) equals: 'k'.
]

{ #category : 'tests' }
MyBlackChessSquareTest >> testRenderKnightOnBlackSquare [

	| piece |
	piece := MyKnight new color: Color black; yourself.
	self assert: (square renderKnight: piece) equals: 'm'.
	piece color: Color white.
	self assert: (square renderKnight: piece) equals: 'n'.
]

{ #category : 'tests' }
MyBlackChessSquareTest >> testRenderPawnOnBlackSquare [

	| piece |
	piece := MyPawn new color: Color black; yourself.
	self assert: (square renderPawn: piece) equals: 'o'.
	piece color: Color white.
	self assert: (square renderPawn: piece) equals: 'p'.
]

{ #category : 'tests' }
MyBlackChessSquareTest >> testRenderQueenOnBlackSquare [

	| piece |
	piece := MyQueen new color: Color black; yourself.
	self assert: (square renderQueen: piece) equals: 'w'.
	piece color: Color white.
	self assert: (square renderQueen: piece) equals: 'q'.
]

{ #category : 'tests' }
MyBlackChessSquareTest >> testRenderRookOnBlackSquare [

	| piece |
	piece := MyRook new color: Color black; yourself.
	self assert: (square renderRook: piece) equals: 't'.
	piece color: Color white.
	self assert: (square renderRook: piece) equals: 'r'.
]

{ #category : 'tests' }
MyBlackChessSquareTest >> testRepresentationBasedOnColor [

	self assert: square representationBasedOnColor equals: 'x'
]
