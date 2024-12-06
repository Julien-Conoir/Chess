"
Class representing a chessboard player
"
Class {
	#name : 'MyPlayer',
	#superclass : 'Object',
	#instVars : [
		'game',
		'myColor'
	],
	#category : 'Myg-Chess-Core-Chess',
	#package : 'Myg-Chess-Core',
	#tag : 'Chess'
}

{ #category : 'constants' }
MyPlayer >> black [

	self myColor: MyBlackColor new
]

{ #category : 'accessing' }
MyPlayer >> game [

	^ game
]

{ #category : 'accessing' }
MyPlayer >> game: anObject [

	game := anObject
]

{ #category : 'testing' }
MyPlayer >> isWhite [
	
	^ myColor class = MyWhiteColor
]

{ #category : 'accessing' }
MyPlayer >> king [
	
	^ self pieces detect: [ :p | p isKing ]
]

{ #category : 'accessing' }
MyPlayer >> myColor [

	^ myColor
]

{ #category : 'constants' }
MyPlayer >> myColor: aMyColor [

	myColor := aMyColor
]

{ #category : 'accessing' }
MyPlayer >> pieces [

	^ game pieces select: [ :p | p notNil and: [ p myColor class = self myColor class ] ]
]

{ #category : 'playing' }
MyPlayer >> play [

	| pieces |
	pieces := self king isInCheck
		          ifTrue: [ OrderedCollection with: self king ]
		          ifFalse: [ self pieces copy asOrderedCollection ].


	[ pieces notEmpty ] whileTrue: [
		| piece legalMoves |
		piece := pieces atRandom.
		pieces remove: piece.
		legalMoves := piece legalTargetSquares.
		legalMoves ifNotEmpty: [
			game move: piece to: legalMoves atRandom.
			^ self ] ].

	self halt: 'NO MOVES AVAILABLE!'
]

{ #category : 'constants' }
MyPlayer >> white [

	self myColor: MyWhiteColor new
]
