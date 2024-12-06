"
Class representing a black color
"
Class {
	#name : 'MyBlackColor',
	#superclass : 'MyColor',
	#category : 'Myg-Chess-Core-Chess',
	#package : 'Myg-Chess-Core',
	#tag : 'Chess'
}

{ #category : 'arithmetic' }
MyBlackColor >> negated [

	^ MyWhiteColor
]

{ #category : 'rendering' }
MyBlackColor >> renderBishop: aSquare [

	^ aSquare renderBlackBishop
]

{ #category : 'rendering' }
MyBlackColor >> renderKing: aSquare [

	^ aSquare renderBlackKing
]

{ #category : 'rendering' }
MyBlackColor >> renderKnight: aSquare [

	^ aSquare renderBlackKnight
]

{ #category : 'rendering' }
MyBlackColor >> renderPawn: aSquare [

	^ aSquare renderBlackPawn
]

{ #category : 'rendering' }
MyBlackColor >> renderQueen: aSquare [

	^ aSquare renderBlackQueen
]

{ #category : 'rendering' }
MyBlackColor >> renderRook: aSquare [

	^ aSquare renderBlackRook
]
