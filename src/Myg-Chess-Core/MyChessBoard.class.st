"
Class representing a chessboard
"
Class {
	#name : 'MyChessBoard',
	#superclass : 'BlElement',
	#instVars : [
		'grid',
		'selected',
		'state',
		'whiteColor',
		'blackColor',
		'game',
		'lastPieceMove',
		'lastMoveTo',
		'lastMoveFrom'
	],
	#category : 'Myg-Chess-Core-Chess',
	#package : 'Myg-Chess-Core',
	#tag : 'Chess'
}

{ #category : 'instance creation' }
MyChessBoard class >> empty [

	^ super new
]

{ #category : 'instance creation' }
MyChessBoard class >> fromFENBoard: aFENBoard [

	^ super new
		  initializeFromFENBoard: aFENBoard;
		  yourself
]

{ #category : 'instance creation' }
MyChessBoard class >> new [

	self error: 'Please use the other constructors'
]

{ #category : 'accessing' }
MyChessBoard >> at: coordinate [

	^ grid at: coordinate ifAbsent: nil
]

{ #category : 'accessing' }
MyChessBoard >> at: aString ifAbsent: aFullBlockClosure [

	^ grid at: aString ifAbsent: aFullBlockClosure
]

{ #category : 'accessing' }
MyChessBoard >> at: coordinate put: aPiece [

	| square |
	square := grid at: coordinate.
	square contents: aPiece.
	aPiece square: square
]

{ #category : 'accessing' }
MyChessBoard >> blackColor [

	^ blackColor
]

{ #category : 'accessing' }
MyChessBoard >> blackColor: anObject [

	blackColor := anObject
]

{ #category : 'event handling' }
MyChessBoard >> click: aMyChessSquare [ 
	
	state := state clickOn: aMyChessSquare
]

{ #category : 'accessing' }
MyChessBoard >> game [

	^ game
]

{ #category : 'accessing' }
MyChessBoard >> game: aGame [

	game := aGame
]

{ #category : 'highlighting' }
MyChessBoard >> highLightTargets: squares [

	squares do: [ :sq | sq ifNotNil: #highlightTarget ]
]

{ #category : 'initialization' }
MyChessBoard >> initialize [

	super initialize.

	self blackColor: Color blue.
	self whiteColor: Color orange.

	state := MyUnselectedState board: self.
	grid := Dictionary new.

	self background: (BlBackground paint: Color veryVeryLightGray).
	self layout: (BlGridLayout vertical
			 cellSpacing: 5;
			 columnCount: 8;
			 rowCount: 8;
			 yourself).
	self constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal fitContent.
		aLayoutConstraints vertical fitContent ].

	self initializeSquares
]

{ #category : 'initialization' }
MyChessBoard >> initializeFromFENBoard: aFENBoard [

	aFENBoard keysAndValuesDo: [ :k :v |
		v ~= 'empty' ifTrue: [
			| substrings color piece |
			substrings := v substrings.
			color := substrings first.
			piece := substrings second.
			self
				at: k
				put:
					((self class environment at: ('My' , piece capitalized) asSymbol)
						 perform: color asLowercase asSymbol) ] ]
]

{ #category : 'initialization' }
MyChessBoard >> initializeSquares [

	| black |
	black := false.
	$a asciiValue to: $h asciiValue do: [ :column |
		8 to: 1 by: -1 do: [ :file |
			| squareNotation square |
			squareNotation := column asCharacter asString , file asString.
			square := black
				          ifTrue: [
					          black := false.
					          MyBlackChessSquare basicNew
						          board: self;
						          initialize;
						          contents: nil;
						          yourself ]
				          ifFalse: [
					          black := true.
					          MyWhiteChessSquare basicNew
						          board: self;
						          initialize;
						          contents: nil;
						          yourself ].
			square name: squareNotation.
			grid at: squareNotation put: square.
			self addChild: square ].
		black := black not ]
]

{ #category : 'accessing' }
MyChessBoard >> lastMoveFrom [
^lastMoveFrom 
]

{ #category : 'accessing' }
MyChessBoard >> lastMoveFrom: aSquare [

	lastMoveFrom := aSquare
]

{ #category : 'accessing' }
MyChessBoard >> lastMoveTo [
	^lastMoveTo 
]

{ #category : 'accessing' }
MyChessBoard >> lastMoveTo: aSquare [

	lastMoveTo := aSquare 
]

{ #category : 'accessing' }
MyChessBoard >> lastPieceMove [
^lastPieceMove 
]

{ #category : 'accessing' }
MyChessBoard >> lastPieceMove: aPiece [

	lastPieceMove := aPiece 
]

{ #category : 'accessing' }
MyChessBoard >> pieces [
	
	^ children collect: [ :square | square contents ]
]

{ #category : 'accessing' }
MyChessBoard >> select: aSquare [ 
	
	state select: aSquare
]

{ #category : 'accessing' }
MyChessBoard >> selected: aMyChessSquare [ 
	
	selected := aMyChessSquare
]

{ #category : 'highlighting' }
MyChessBoard >> unhighLightTargets: squares [

	squares do: [ :sq | sq ifNotNil: #unhighlightTarget ]
]

{ #category : 'selection' }
MyChessBoard >> unselectSelected [
	
	selected ifNil: [ ^ self ].
	selected doUnselect
]

{ #category : 'accessing' }
MyChessBoard >> whiteColor [

	^ whiteColor
]

{ #category : 'accessing' }
MyChessBoard >> whiteColor: anObject [

	whiteColor := anObject
]
