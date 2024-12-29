Class {
	#name : 'MyChessMovesTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessMovesTest >> testDoubleDownGoesTwoSquaresDown [

	| square chessMoves|
	square := MyChessSquare new.
  square name: 'b4'.
  chessMoves := MyChessMoves new.
  chessMoves square: square.

  chessMoves doubleDown.
	
	self assert: (square name) equals: 'b2'
]

{ #category : 'tests' }
MyChessMovesTest >> testDoubleUpDownGoesTwoSquaresUp [

	| square chessMoves|
	square := MyChessSquare new.
  square name: 'b4'.
  chessMoves := MyChessMoves new.
  chessMoves square: square.

  chessMoves doubleDown.
	
	self assert: (square name) equals: 'b6'
]

{ #category : 'tests' }
MyChessMovesTest >> testSingleDiagonalDownRightGoesRightDown [

	| square chessMoves|
	square := MyChessSquare new.
  square name: 'b4'.
  chessMoves := MyChessMoves new.
  chessMoves square: square.

  chessMoves doubleDown.
	
	self assert: (square name) equals: 'c3'
]

{ #category : 'tests' }
MyChessMovesTest >> testSingleDiagonalDownLeftGoesLeftDown [

	| square chessMoves|
	square := MyChessSquare new.
  square name: 'b4'.
  chessMoves := MyChessMoves new.
  chessMoves square: square.

  chessMoves doubleDown.
	
	self assert: (square name) equals: 'a3'
]

{ #category : 'tests' }
MyChessMovesTest >> testSingleDiagonalUpLeftGoesLeftUp [

	| square chessMoves|
	square := MyChessSquare new.
  square name: 'b4'.
  chessMoves := MyChessMoves new.
  chessMoves square: square.

  chessMoves doubleDown.
	
	self assert: (square name) equals: 'a5'
]

{ #category : 'tests' }
MyChessMovesTest >> testSingleDiagonalUpRightGoesRightUp [

	| square chessMoves|
	square := MyChessSquare new.
  square name: 'b4'.
  chessMoves := MyChessMoves new.
  chessMoves square: square.

  chessMoves doubleDown.
	
	self assert: (square name) equals: 'c5'
]

