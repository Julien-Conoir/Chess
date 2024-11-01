Class {
	#name : 'MyWhiteChessSquareTest',
	#superclass : 'TestCase',
	#instVars : [
		'square'
	],
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'running' }
MyWhiteChessSquareTest >> setUp [
	super setUp.
	square := MyWhiteChessSquare new
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testForeground [
			
	| board |
	board := MyChessBoard empty whiteColor: Color white.
	square board: board.
	self assert: square foreground equals: Color white
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testNegatedColor [

	self assert: square negatedColor equals: Color black
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRenderBishopOnWhiteSquare [

	| piece |
	piece := MyBishop new color: Color black; yourself.
	self assert: (square renderBishop: piece) equals: 'V'.
	piece color: Color white.
	self assert: (square renderBishop: piece) equals: 'B'.
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRenderKingOnWhiteSquare [

	| piece |
	piece := MyKing new color: Color black; yourself.
	self assert: (square renderKing: piece) equals: 'L'.
	piece color: Color white.
	self assert: (square renderKing: piece) equals: 'K'.
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRenderKnightOnWhiteSquare [

	| piece |
	piece := MyKnight new color: Color black; yourself.
	self assert: (square renderKnight: piece) equals: 'M'.
	piece color: Color white.
	self assert: (square renderKnight: piece) equals: 'N'.
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRenderPawnOnWhiteSquare [

	| piece |
	piece := MyPawn new color: Color black; yourself.
	self assert: (square renderPawn: piece) equals: 'O'.
	piece color: Color white.
	self assert: (square renderPawn: piece) equals: 'P'.
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRenderQueenOnWhiteSquare [

	| piece |
	piece := MyQueen new color: Color black; yourself.
	self assert: (square renderQueen: piece) equals: 'W'.
	piece color: Color white.
	self assert: (square renderQueen: piece) equals: 'Q'.
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRenderRookOnWhiteSquare [

	| piece |
	piece := MyRook new color: Color black; yourself.
	self assert: (square renderRook: piece) equals: 'T'.
	piece color: Color white.
	self assert: (square renderRook: piece) equals: 'R'.
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRepresentationBasedOnColor [

	self assert: square representationBasedOnColor equals: 'z'
]
