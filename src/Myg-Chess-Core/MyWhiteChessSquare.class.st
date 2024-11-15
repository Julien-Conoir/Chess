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
MyWhiteChessSquare >> renderBlackBishop [

	^ 'V'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderBlackKing [

	^ 'L'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderBlackKnight [

	^ 'M'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderBlackPawn [

	^ 'O'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderBlackQueen [

	^ 'W'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderBlackRook [

	^ 'T'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderWhiteBishop [

	^ 'B'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderWhiteKing [

	^ 'K'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderWhiteKnight [

	^ 'N'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderWhitePawn [

	^ 'P'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderWhiteQueen [

	^ 'Q'
]

{ #category : 'rendering' }
MyWhiteChessSquare >> renderWhiteRook [

	^ 'R'
]

{ #category : 'as yet unclassified' }
MyWhiteChessSquare >> representationBasedOnColor [

	^ 'z'

]
