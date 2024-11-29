Class {
	#name : 'MyChessMoves',
	#superclass : 'Object',
	#instVars : [
		'square'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyChessMoves >> doubleDown [
	^square down down

]

{ #category : 'rendering' }
MyChessMoves >> doubleUp [
	^ square up up

]

{ #category : 'rendering' }
MyChessMoves >> down [
	^ square down

]

{ #category : 'rendering' }
MyChessMoves >> singleDiagonalDownLeft [
	^ square down left

]

{ #category : 'rendering' }
MyChessMoves >> singleDiagonalDownRight [
	^ square down right

]

{ #category : 'rendering' }
MyChessMoves >> singleDiagonalUpLeft [
	^ square up left
]

{ #category : 'rendering' }
MyChessMoves >> singleDiagonalUpRight [
	^ square up right

]

{ #category : 'accessing' }
MyChessMoves >> square [
    
	^ square

]

{ #category : 'accessing' }
MyChessMoves >> square: aMyChessSquare [
    
	square := aMyChessSquare

]

{ #category : 'rendering' }
MyChessMoves >> up [
	^ square up

]
