"
Class representing a white chessboard square
"
Class {
	#name : 'MyWhiteChessSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core-Chess',
	#package : 'Myg-Chess-Core',
	#tag : 'Chess'
}

{ #category : 'accessing' }
MyWhiteChessSquare >> foreground [
			
	^ board whiteColor
]

{ #category : 'as yet unclassified' }
MyWhiteChessSquare >> negatedColor [

	^ Color black
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderBishop: aPiece [

	^ aPiece isWhite
		  ifTrue: [ 'B' ]
		  ifFalse: [ 'V' ]
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderKing: aPiece [

	^ aPiece isWhite
		  ifTrue: [ 'K' ]
		  ifFalse: [ 'L' ]
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderKnight: aPiece [

	^ aPiece isWhite
		  ifTrue: [ 'N' ]
		  ifFalse: [ 'M' ]
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderPawn: aPiece [

	^ aPiece isWhite
		  ifTrue: [ 'P' ]
		  ifFalse: [ 'O' ]
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderQueen: aPiece [

	^ aPiece isWhite
		  ifTrue: [ 'Q' ]
		  ifFalse: [ 'W' ]
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderRook: aPiece [

	^ aPiece isWhite
		  ifTrue: [ 'R' ]
		  ifFalse: [ 'T' ]
]

{ #category : 'as yet unclassified' }
MyWhiteChessSquare >> representationBasedOnColor [

	^ 'z'

]
