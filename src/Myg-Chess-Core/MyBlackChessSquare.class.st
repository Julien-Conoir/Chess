Class {
	#name : 'MyBlackChessSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
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
MyBlackChessSquare >> renderBishop: aPiece [

	^ aPiece isWhite
		  ifTrue: [ 'b' ]
		  ifFalse: [ 'v' ]
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderKing: aPiece [

	^ aPiece isWhite
		  ifTrue: [ 'k' ]
		  ifFalse: [ 'l' ]
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderKnight: aPiece [

	^ aPiece isWhite
		  ifTrue: [ 'n' ]
		  ifFalse: [ 'm' ]
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderPawn: aPiece [

	^ aPiece isWhite
		  ifTrue: [ 'p' ]
		  ifFalse: [ 'o' ]
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderQueen: aPiece [

	^ aPiece isWhite
		  ifTrue: [ 'q' ]
		  ifFalse: [ 'w' ]
]

{ #category : 'rendering' }
MyBlackChessSquare >> renderRook: aPiece [

	^ aPiece isWhite
		  ifTrue: [ 'r' ]
		  ifFalse: [ 't' ]
]

{ #category : 'as yet unclassified' }
MyBlackChessSquare >> representationBasedOnColor [

	^ 'x'

	
]
