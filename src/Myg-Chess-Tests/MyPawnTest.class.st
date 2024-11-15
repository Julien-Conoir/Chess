Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testBlackPawnDoesNotHavePermissionToMoveOverPieceWhenFirstMove [

	| pawnBlack piece targetSquaresBlack board |
	board := MyChessBoard empty.
	pawnBlack := MyPawn new.
	pawnBlack color: Color black.
	piece := MyBishop new.
	piece color: Color white.

	board at: 'c7' put: pawnBlack.
	board at: 'c6' put: piece .

	targetSquaresBlack := pawnBlack targetSquaresLegal: false.
	self assert: targetSquaresBlack size equals: 0.
]

{ #category : 'tests' }
MyPawnTest >> testBlackPawnHas1ChoiceWhenFirstMoveAndPieceIsTwoSquaresForward [

	| pawnBlack piece targetSquaresBlack board |
	board := MyChessBoard empty.
	pawnBlack := MyPawn new.
	pawnBlack color: Color black.
	piece := MyRook new.
	piece color: Color white.

	board at: 'c7' put: pawnBlack.
	board at: 'c5' put: piece.

	targetSquaresBlack := pawnBlack targetSquaresLegal: false.
	self assert: targetSquaresBlack size equals: 1.
	self assert: (targetSquaresBlack includes: (board at: 'c6'))
]

{ #category : 'tests' }
MyPawnTest >> testBlackPawnTargetSquaresLegalHas1ChoiceWhenNotFirstMove [
	| pawn targetSquares board |
	board := MyChessBoard empty.
	pawn := MyPawn new.
	pawn color: Color black.
	pawn firstMove: false.
	board at: 'c5' put: pawn .
	targetSquares := pawn targetSquaresLegal: false.
	self assert: targetSquares size equals: 1.
	self assert: (targetSquares includes: (board at: 'c4')).
]

{ #category : 'tests' }
MyPawnTest >> testBlackPawnTargetSquaresLegalHas2ChoicesWhenFirstMove [
	| pawn targetSquares board |
	board := MyChessBoard empty.
	pawn := MyPawn new.
	pawn color: Color black.
	board at: 'c7' put: pawn .
	targetSquares := pawn targetSquaresLegal: false.
	self assert: targetSquares size equals: 2.
	self assert: (targetSquares includes: (board at: 'c6')).
	self assert: (targetSquares includes: (board at: 'c5')).
]

{ #category : 'tests' }
MyPawnTest >> testInitializeWithCorrectFirstMove [
	
	| pawn |
	pawn := MyPawn new. 
	self assert: pawn firstMove.

]

{ #category : 'tests' }
MyPawnTest >> testMoveToChangeTheValueOfFirstMoveAttributeAfterActualFirstMove [
	| pawn board |
	board := MyChessBoard empty.
	pawn := MyPawn new.
	pawn color: Color black.
	board at: 'c7' put: pawn .
	pawn moveTo: 'c6'.
	self assert: pawn firstMove not.
	
]

{ #category : 'tests' }
MyPawnTest >> testPawnDoesNotHavePermissionToTakePieceForward [

	| pawnBlack pawnWhite targetSquaresBlack targetSquaresWhite board |
	board := MyChessBoard empty.
	pawnBlack := MyPawn new.
	pawnBlack color: Color black.
	pawnBlack firstMove: false.
	pawnWhite := MyPawn new.
	pawnWhite color: Color white.
	pawnWhite firstMove: false.
	
	board at: 'c5' put: pawnBlack .
	board at: 'c4' put: pawnWhite .
	
	targetSquaresBlack := pawnBlack targetSquaresLegal: false.
	self assert: targetSquaresBlack size equals: 0.
	
	targetSquaresWhite := pawnWhite targetSquaresLegal: false.
	self assert: targetSquaresWhite size equals: 0.
]

{ #category : 'tests' }
MyPawnTest >> testPawnId [

	| pawn |
	pawn := MyPawn new.
	self assert: pawn id equals: 'P'
]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnDoesNotHavePermissionToMoveOverPieceWhenFirstMove [

	| pawnWhite piece targetSquaresWhite board |
	board := MyChessBoard empty.
	pawnWhite := MyPawn white.
	piece := MyRook new.
	piece color: Color white.

	board at: 'c2' put: pawnWhite.
	board at: 'c3' put: piece.

	targetSquaresWhite := pawnWhite targetSquaresLegal: false.
	self assert: targetSquaresWhite size equals: 0
]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnHas1ChoiceWhenFirstMoveAndPieceIsTwoSquaresForward [

	| pawnWhite piece targetSquaresWhite board |
	board := MyChessBoard empty.
	pawnWhite := MyPawn new.
	pawnWhite white.
	piece := MyRook new.
	piece color: Color black.

	board at: 'c2' put: pawnWhite.
	board at: 'c4' put: piece.

	targetSquaresWhite := pawnWhite targetSquaresLegal: false.
	self assert: targetSquaresWhite size equals: 1.
	self assert: (targetSquaresWhite includes: (board at: 'c3'))
]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnTargetSquaresLegalHas1ChoiceWhenNotFirstMove [
	| pawn targetSquares board |
	board := MyChessBoard empty.
	pawn := MyPawn new.
	pawn color: Color white.
	pawn firstMove: false.
	board at: 'b4' put: pawn .
	targetSquares := pawn targetSquaresLegal: false.
	self assert: targetSquares size equals: 1.
	self assert: (targetSquares includes: (board at: 'b5')).
]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnTargetSquaresLegalHas2ChoicesWhenFirstMove [
	| pawn targetSquares board |
	board := MyChessBoard empty.
	pawn := MyPawn new.
	pawn color: Color white.
	board at: 'b2' put: pawn .
	targetSquares := pawn targetSquaresLegal: true.
	self assert: targetSquares size equals: 2.
	self assert: (targetSquares includes: (board at: 'b3')).
	self assert: (targetSquares includes: (board at: 'b4')).
]
