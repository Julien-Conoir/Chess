Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testInitializeWithCorrectFirstMove [
	
	| pawn |
	pawn := MyPawn new. 
	pawn initializePawn.
	self assert: pawn firstMove.

]
