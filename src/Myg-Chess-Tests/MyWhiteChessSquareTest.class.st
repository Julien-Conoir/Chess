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
	piece := MyBishop black.
	self assert: (square renderBishop: piece) equals: 'V'.
	piece myColor: MyWhiteColor new.
	self assert: (square renderBishop: piece) equals: 'B'.
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRenderKingOnWhiteSquare [

	| piece |
	piece := MyKing black.
	self assert: (square renderKing: piece) equals: 'L'.
	piece myColor: MyWhiteColor new.
	self assert: (square renderKing: piece) equals: 'K'.
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRenderKnightOnWhiteSquare [

	| piece |
	piece := MyKnight black.
	self assert: (square renderKnight: piece) equals: 'M'.
	piece myColor: MyWhiteColor new.
	self assert: (square renderKnight: piece) equals: 'N'.
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRenderPawnOnWhiteSquare [

	| piece |
	piece := MyPawn black.
	self assert: (square renderPawn: piece) equals: 'O'.
	piece myColor: MyWhiteColor new.
	self assert: (square renderPawn: piece) equals: 'P'.
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRenderQueenOnWhiteSquare [

	| piece |
	piece := MyQueen black.
	self assert: (square renderQueen: piece) equals: 'W'.
	piece myColor: MyWhiteColor new.
	self assert: (square renderQueen: piece) equals: 'Q'.
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRenderRookOnWhiteSquare [

	| piece |
	piece := MyRook black.
	self assert: (square renderRook: piece) equals: 'T'.
	piece myColor: MyWhiteColor new.
	self assert: (square renderRook: piece) equals: 'R'.
]

{ #category : 'tests' }
MyWhiteChessSquareTest >> testRepresentationBasedOnColor [

	self assert: square representationBasedOnColor equals: 'z'
]
