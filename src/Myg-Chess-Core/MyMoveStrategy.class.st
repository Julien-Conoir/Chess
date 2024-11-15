Class {
	#name : 'MyMoveStrategy',
	#superclass : 'Object',
	#instVars : [
		'chessMovesInstance'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyMoveStrategy >> chessMovesInstance [
	
	^ chessMovesInstance
]

{ #category : 'accessing' }
MyMoveStrategy >> chessMovesInstance: aChessMovesInstance [

	chessMovesInstance := aChessMovesInstance 
]

{ #category : 'rendering' }
MyMoveStrategy >> firstMoveSquareLegals [
	self subclassResponsibility 
]

{ #category : 'as yet unclassified' }
MyMoveStrategy >> moveSquareLegals [

	self subclassResponsibility
]
