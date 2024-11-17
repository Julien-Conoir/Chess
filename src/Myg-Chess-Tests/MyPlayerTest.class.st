Class {
	#name : 'MyPlayerTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPlayerTest >> testIsWhite [

	| player |
	player := MyPlayer new white.
	self assert: player isWhite equals: true.
	player black.
	self assert: player isWhite equals: false
]
