Class {
	#name : 'MyChessSquareTests',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessSquareTests >> testRenderBishopOnBlackSquare [

	| piece square |
	piece := MyBishop new color: Color black; yourself.
	square := MyBlackChessSquare new.
	self assert: (square renderBishop: piece) equals: 'v'.
	piece color: Color white.
	self assert: (square renderBishop: piece) equals: 'b'.
]

{ #category : 'tests' }
MyChessSquareTests >> testRenderBishopOnWhiteSquare [

	| piece square |
	piece := MyBishop new color: Color black; yourself.
	square := MyWhiteChessSquare new.
	self assert: (square renderBishop: piece) equals: 'V'.
	piece color: Color white.
	self assert: (square renderBishop: piece) equals: 'B'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderKingOnBlackSquare [

	| piece square |
	piece := MyKing new color: Color black; yourself.
	square := MyBlackChessSquare new.
	self assert: (square renderKing: piece) equals: 'l'.
	piece color: Color white.
	self assert: (square renderKing: piece) equals: 'k'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderKingOnWhiteSquare [

	| piece square |
	piece := MyKing new color: Color black; yourself.
	square := MyWhiteChessSquare new.
	self assert: (square renderKing: piece) equals: 'L'.
	piece color: Color white.
	self assert: (square renderKing: piece) equals: 'K'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderKnightOnBlackSquare [

	| piece square |
	piece := MyKnight new color: Color black; yourself.
	square := MyBlackChessSquare new.
	self assert: (square renderKnight: piece) equals: 'm'.
	piece color: Color white.
	self assert: (square renderKnight: piece) equals: 'n'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderKnightOnWhiteSquare [

	| piece square |
	piece := MyKnight new color: Color black; yourself.
	square := MyWhiteChessSquare new.
	self assert: (square renderKnight: piece) equals: 'M'.
	piece color: Color white.
	self assert: (square renderKnight: piece) equals: 'N'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderPawnOnBlackSquare [

	| piece square |
	piece := MyPawn new color: Color black; yourself.
	square := MyBlackChessSquare new.
	self assert: (square renderPawn: piece) equals: 'o'.
	piece color: Color white.
	self assert: (square renderPawn: piece) equals: 'p'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderPawnOnWhiteSquare [

	| piece square |
	piece := MyPawn new color: Color black; yourself.
	square := MyWhiteChessSquare new.
	self assert: (square renderPawn: piece) equals: 'O'.
	piece color: Color white.
	self assert: (square renderPawn: piece) equals: 'P'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderQueenOnBlackSquare [

	| piece square |
	piece := MyQueen new color: Color black; yourself.
	square := MyBlackChessSquare new.
	self assert: (square renderQueen: piece) equals: 'w'.
	piece color: Color white.
	self assert: (square renderQueen: piece) equals: 'q'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderQueenOnWhiteSquare [

	| piece square |
	piece := MyQueen new color: Color black; yourself.
	square := MyWhiteChessSquare new.
	self assert: (square renderQueen: piece) equals: 'W'.
	piece color: Color white.
	self assert: (square renderQueen: piece) equals: 'Q'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderRookOnBlackSquare [

	| piece square |
	piece := MyRook new color: Color black; yourself.
	square := MyBlackChessSquare new.
	self assert: (square renderRook: piece) equals: 't'.
	piece color: Color white.
	self assert: (square renderRook: piece) equals: 'r'.
]

{ #category : 'as yet unclassified' }
MyChessSquareTests >> testRenderRookOnWhiteSquare [

	| piece square |
	piece := MyRook new color: Color black; yourself.
	square := MyWhiteChessSquare new.
	self assert: (square renderRook: piece) equals: 'T'.
	piece color: Color white.
	self assert: (square renderRook: piece) equals: 'R'.
]
