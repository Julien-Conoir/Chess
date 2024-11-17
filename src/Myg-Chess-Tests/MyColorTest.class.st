Class {
	#name : 'MyColorTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyColorTest >> testNegated [

	| myColor |
	myColor := MyBlackColor new.
	self assert: myColor negated equals: MyWhiteColor.
	myColor := MyWhiteColor new.
	self assert: myColor negated equals: MyBlackColor
]
