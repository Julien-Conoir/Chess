"
Class representing a white color
"
Class {
	#name : 'MyWhiteColor',
	#superclass : 'MyColor',
	#category : 'Myg-Chess-Core-Chess',
	#package : 'Myg-Chess-Core',
	#tag : 'Chess'
}

{ #category : 'rendering' }
MyWhiteColor >> renderBishop: aSquare [

	^ aSquare renderWhiteBishop
]

{ #category : 'rendering' }
MyWhiteColor >> renderKing: aSquare [

	^ aSquare renderWhiteKing
]

{ #category : 'rendering' }
MyWhiteColor >> renderKnight: aSquare [

	^ aSquare renderWhiteKnight
]

{ #category : 'rendering' }
MyWhiteColor >> renderPawn: aSquare [

	^ aSquare renderWhitePawn
]

{ #category : 'rendering' }
MyWhiteColor >> renderQueen: aSquare [

	^ aSquare renderWhiteQueen
]

{ #category : 'rendering' }
MyWhiteColor >> renderRook: aSquare [

	^ aSquare renderWhiteRook
]
