﻿"Filed out from Dolphin Smalltalk 7"!

Object subclass: #XMLUtil
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
XMLUtil guid: (GUID fromString: '{c234f5e7-c472-42ba-b139-1fa529ccafb6}')!
XMLUtil comment: 'This class provides utility methods for working with XML.'!
!XMLUtil categoriesForClass!Unclassified! !
!XMLUtil class methodsFor!

defaultEncoding

escape: aString 

flag: aSymbol 
	!

isComment: aString 

isName: aString 

isURI: aString 
	"answer whether aString is a URI"

	| alpha authority digit fragment hierPart pathAbempty query scheme uri |
	self flag: #todo.	"This isn't working yet."
	"^URI fromString: aString"

	"See http://gbiv.com/protocols/uri/rfc/rfc3986.html#generic-syntax."
	alpha := ''.
	authority := ''.
	digit := ''.
	fragment := ''.
	pathAbempty := ''.
	hierPart := '//' , authority , pathAbempty.
	query := ''.
	scheme := alpha , '(' , alpha , '|' , digit , '|\+|-|\.)*'.
	uri := scheme , ':' , hierPart , '(' , query , ')?(#' , fragment , ')?'.
	^true!

isVersion: aSymbol

latinNameRegex

verifyComment: aString

verifyName: aString

verifyURI: aString

verifyVersion: aSymbol

xmlSchemaInstanceNS
!XMLUtil class categoriesFor: #defaultEncoding!constants!public! !
!XMLUtil class categoriesFor: #escape:!public!transforming! !
!XMLUtil class categoriesFor: #flag:!public! !
!XMLUtil class categoriesFor: #isComment:!public!testing! !
!XMLUtil class categoriesFor: #isName:!public!testing! !
!XMLUtil class categoriesFor: #isURI:!public!testing! !
!XMLUtil class categoriesFor: #isVersion:!public!testing! !
!XMLUtil class categoriesFor: #latinNameRegex!private! !
!XMLUtil class categoriesFor: #verifyComment:!public!testing! !
!XMLUtil class categoriesFor: #verifyName:!public!testing! !
!XMLUtil class categoriesFor: #verifyURI:!public!testing! !
!XMLUtil class categoriesFor: #verifyVersion:!public!testing! !
!XMLUtil class categoriesFor: #xmlSchemaInstanceNS!constants!public! !
