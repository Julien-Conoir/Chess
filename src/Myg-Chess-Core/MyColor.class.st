"
Class representing a color
"
Class {
	#name : 'MyColor',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core-Chess',
	#package : 'Myg-Chess-Core',
	#tag : 'Chess'
}

{ #category : 'rendering' }
MyColor >> renderBishop: aSquare [

	self subclassResponsibility
]

{ #category : 'rendering' }
MyColor >> renderKing: aSquare [

	self subclassResponsibility
]

{ #category : 'rendering' }
MyColor >> renderKnight: aSquare [

	self subclassResponsibility
]

{ #category : 'rendering' }
MyColor >> renderPawn: aSquare [

	self subclassResponsibility
]

{ #category : 'rendering' }
MyColor >> renderQueen: aSquare [

	self subclassResponsibility
]

{ #category : 'rendering' }
MyColor >> renderRook: aSquare [

	self subclassResponsibility
]
