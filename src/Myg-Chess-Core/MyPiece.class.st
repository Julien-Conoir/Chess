"
Class representing a chessboard piece
"
Class {
	#name : 'MyPiece',
	#superclass : 'Object',
	#instVars : [
		'square',
		'myColor'
	],
	#category : 'Myg-Chess-Core-Chess',
	#package : 'Myg-Chess-Core',
	#tag : 'Chess'
}

{ #category : 'constants' }
MyPiece class >> black [

	^ self new
		myColor: MyBlackColor new;
		yourself
]

{ #category : 'constants' }
MyPiece class >> white [

	^ self new
		myColor: MyWhiteColor new;
		yourself
	
]

{ #category : 'as yet unclassified' }
MyPiece >> attackingSquares [

	^ self legalTargetSquares
]

{ #category : 'path commands' }
MyPiece >> board [

	^ square board
]

{ #category : 'rendering' }
MyPiece >> collectSquares: aBlock [

	^ self collectSquares: aBlock legal: false
]

{ #category : 'rendering' }
MyPiece >> collectSquares: aBlock legal: shouldBeLegal [

	^ self collectSquares: aBlock while: [ :aSquare |
		  aSquare notNil and: [ shouldBeLegal ==> aSquare hasPiece not ] ]
]

{ #category : 'rendering' }
MyPiece >> collectSquares: collectBlock while: untilBlock [

	| targets next |
	targets := OrderedCollection new.

	"Collect up right"
	next := square.
	[ untilBlock value: (next := collectBlock value: next) ]
		whileTrue: [ targets add: next ].

	"If we can it the next piece, then add it too"
	(next notNil and: [ next contents myColor class ~= myColor class ]) ifTrue: [ targets add: next ].

	^ targets
]

{ #category : 'rendering' }
MyPiece >> downFile [

	^ self downFileLegal: false
]

{ #category : 'rendering' }
MyPiece >> downFileLegal: aBoolean [

	^ self collectSquares: [ :aSquare | aSquare down ] legal: aBoolean
]

{ #category : 'rendering' }
MyPiece >> downLeftDiagonal [

	^ self downLeftDiagonalLegal: false
]

{ #category : 'rendering' }
MyPiece >> downLeftDiagonalLegal: aBoolean [

	^ self
		  collectSquares: [ :aSquare | aSquare down ifNotNil: #left ]
		  legal: aBoolean
]

{ #category : 'rendering' }
MyPiece >> downRightDiagonal [

	^ self downRightDiagonalLegal: false
]

{ #category : 'rendering' }
MyPiece >> downRightDiagonalLegal: aBoolean [

	^ self
		  collectSquares: [ :aSquare | aSquare down ifNotNil: #right ]
		  legal: aBoolean
]

{ #category : 'accessing' }
MyPiece >> id [

	^ 'Q'
]

{ #category : 'testing' }
MyPiece >> isKing [
	
	^ false
]

{ #category : 'testing' }
MyPiece >> isPiece [
	
	^ true
]

{ #category : 'testing' }
MyPiece >> isWhite [
	
	^ myColor class = MyWhiteColor
]

{ #category : 'rendering' }
MyPiece >> leftFile [

	^ self leftFileLegal: false
]

{ #category : 'rendering' }
MyPiece >> leftFileLegal: aBoolean [

	^ self collectSquares: [ :aSquare | aSquare left ] legal: aBoolean
]

{ #category : 'path commands' }
MyPiece >> legalTargetSquares [

	^ self targetSquaresLegal: true
]

{ #category : 'path commands' }
MyPiece >> moveTo: aSquare [

	(self legalTargetSquares includes: aSquare) ifFalse: [ ^ self ].

	square emptyContents.
	square := aSquare.
	self board lastMoveFrom: self square.
	aSquare contents: self.
	self board lastMoveTo: aSquare.
	self board lastPieceMove: self
]

{ #category : 'accessing' }
MyPiece >> myColor [

	^ myColor
]

{ #category : 'accessing' }
MyPiece >> myColor: aMyColor [

	myColor := aMyColor
]

{ #category : 'rendering' }
MyPiece >> renderPieceOn: aSquare [

	^ self subclassResponsibility
]

{ #category : 'rendering' }
MyPiece >> rightFile [

	^ self rightFileLegal: false
]

{ #category : 'rendering' }
MyPiece >> rightFileLegal: aBoolean [

	^ self collectSquares: [ :aSquare | aSquare right ] legal: aBoolean
]

{ #category : 'accessing' }
MyPiece >> square [
	^ square
]

{ #category : 'accessing' }
MyPiece >> square: aMyChessSquare [ 
	
	square := aMyChessSquare
]

{ #category : 'rendering' }
MyPiece >> targetSquares [

	^ self targetSquaresLegal: false
]

{ #category : 'rendering' }
MyPiece >> targetSquaresLegal: aBoolean [

	self subclassResponsibility
]

{ #category : 'rendering' }
MyPiece >> upFile [

	^ self upFileLegal: false
]

{ #category : 'rendering' }
MyPiece >> upFileLegal: aBoolean [

	^ self collectSquares: [ :aSquare | aSquare up ] legal: aBoolean
]

{ #category : 'rendering' }
MyPiece >> upLeftDiagonal [

	^ self upLeftDiagonalLegal: false
]

{ #category : 'rendering' }
MyPiece >> upLeftDiagonalLegal: aBoolean [

	^ self collectSquares: [ :aSquare | aSquare up ifNotNil: #left ] legal: aBoolean
]

{ #category : 'rendering' }
MyPiece >> upRightDiagonal [

	^ self upRightDiagonalLegal: false
]

{ #category : 'rendering' }
MyPiece >> upRightDiagonalLegal: aBoolean [

	^ self
		  collectSquares: [ :aSquare | aSquare up ifNotNil: #right ]
		  legal: aBoolean
]
