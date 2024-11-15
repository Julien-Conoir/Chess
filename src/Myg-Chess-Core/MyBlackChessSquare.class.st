"
Class representing a black chessboard square
"
Class {
	#name : 'MyBlackChessSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core-Chess',
	#package : 'Myg-Chess-Core',
	#tag : 'Chess'
}

{ #category : 'accessing' }
MyBlackChessSquare >> foreground [
			
	^ board blackColor
]

{ #category : 'as yet unclassified' }
MyBlackChessSquare >> negatedColor [

	^ Color white
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackBishop [

	^ 'v'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackKing [

	^ 'l'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackKnight [

	^ 'm'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackPawn [

	^ 'o'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackQueen [

	^ 'w'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderBlackRook [

	^ 't'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteBishop [

	^ 'b'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteKing [

	^ 'k'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteKnight [

	^ 'n'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhitePawn [

	^ 'p'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteQueen [

	^ 'q'
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderWhiteRook [

	^ 'r'
]

{ #category : 'as yet unclassified' }
MyBlackChessSquare >> representationBasedOnColor [

	^ 'x'

	
]
