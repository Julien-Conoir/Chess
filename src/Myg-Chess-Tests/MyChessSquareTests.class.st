Class {
	#name : 'MyChessSquareTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderBishopWithBlackColor [

	| piece square |
	piece := MyBishop new color: Color black; yourself.
	square := MyChessSquare color: Color white.
	self assert: (square renderBishop: piece) equals: 'V'.
	square color: Color black.
	self assert: (square renderBishop: piece) equals: 'v'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderBishopWithWhiteColor [

	| piece square |
	piece := MyBishop new color: Color white; yourself.
	square := MyChessSquare color: Color white.
	self assert: (square renderBishop: piece) equals: 'B'.
	square color: Color black.
	self assert: (square renderBishop: piece) equals: 'b'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderKingkWithBlackColor [

	| piece square |
	piece := MyKing new color: Color black; yourself.
	square := MyChessSquare color: Color white.
	self assert: (square renderKing: piece) equals: 'L'.
	square color: Color black.
	self assert: (square renderKing: piece) equals: 'l'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderKingkWithWhiteColor [

	| piece square |
	piece := MyKing new color: Color white; yourself.
	square := MyChessSquare color: Color white.
	self assert: (square renderKing: piece) equals: 'K'.
	square color: Color black.
	self assert: (square renderKing: piece) equals: 'k'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderKnightkWithBlackColor [

	| piece square |
	piece := MyKnight new color: Color black; yourself.
	square := MyChessSquare color: Color white.
	self assert: (square renderKnight: piece) equals: 'M'.
	square color: Color black.
	self assert: (square renderKnight: piece) equals: 'm'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderKnightkWithWhiteColor [

	| piece square |
	piece := MyKnight new color: Color white; yourself.
	square := MyChessSquare color: Color white.
	self assert: (square renderKnight: piece) equals: 'N'.
	square color: Color black.
	self assert: (square renderKnight: piece) equals: 'n'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderPawnWithBlackColor [

	| piece square |
	piece := MyPawn new color: Color black; yourself.
	square := MyChessSquare color: Color white.
	self assert: (square renderPawn: piece) equals: 'O'.
	square color: Color black.
	self assert: (square renderPawn: piece) equals: 'o'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderPawnWithWhiteColor [

	| piece square |
	piece := MyPawn new color: Color white; yourself.
	square := MyChessSquare color: Color white.
	self assert: (square renderPawn: piece) equals: 'P'.
	square color: Color black.
	self assert: (square renderPawn: piece) equals: 'p'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderQueenkWithBlackColor [

	| piece square |
	piece := MyQueen new color: Color black; yourself.
	square := MyChessSquare color: Color white.
	self assert: (square renderQueen: piece) equals: 'W'.
	square color: Color black.
	self assert: (square renderQueen: piece) equals: 'w'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderQueenkWithWhiteColor [

	| piece square |
	piece := MyQueen new color: Color white; yourself.
	square := MyChessSquare color: Color white.
	self assert: (square renderQueen: piece) equals: 'Q'.
	square color: Color black.
	self assert: (square renderQueen: piece) equals: 'q'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderRookWithBlackColor [

	| piece square |
	piece := MyRook new color: Color black; yourself.
	square := MyChessSquare color: Color white.
	self assert: (square renderRook: piece) equals: 'T'.
	square color: Color black.
	self assert: (square renderRook: piece) equals: 't'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderRookWithWhiteColor [

	| piece square |
	piece := MyRook new color: Color white; yourself.
	square := MyChessSquare color: Color white.
	self assert: (square renderRook: piece) equals: 'R'.
	square color: Color black.
	self assert: (square renderRook: piece) equals: 'r'.
]
