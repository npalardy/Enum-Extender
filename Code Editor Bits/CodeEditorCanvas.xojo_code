#tag Class
Protected Class CodeEditorCanvas
Inherits TextInputCanvas
	#tag Event
		Function BaselineAtIndex(index as integer) As integer
		  dbglog currentmethodname
		End Function
	#tag EndEvent

	#tag Event
		Function CharacterAtPoint(x as integer, y as integer) As integer
		  dbglog currentmethodname
		End Function
	#tag EndEvent

	#tag Event
		Sub DiscardIncompleteText()
		  dbglog currentmethodname
		End Sub
	#tag EndEvent

	#tag Event
		Function DoCommand(command as string) As boolean
		  dbglog currentmethodname + " " + command
		  
		  Select Case command
		    // 
		    // // NSResponder: Selection movement and scrolling
		  Case CmdMoveForward
		    mInsertionPosition = Min(mInsertionPosition + 1, Len(mTextBuffer))
		    dbglog " insertion pos = " + Str(mInsertionPosition)
		  Case CmdMoveRight
		    mInsertionPosition = Min(mInsertionPosition + 1, Len(mTextBuffer))
		    dbglog " insertion pos = " + Str(mInsertionPosition)
		  Case CmdMoveBackward
		    mInsertionPosition = Max(mInsertionPosition - 1, 0)
		    dbglog " insertion pos = " + Str(mInsertionPosition)
		  Case CmdMoveLeft
		    mInsertionPosition = Max(mInsertionPosition - 1, 0)
		    dbglog " insertion pos = " + Str(mInsertionPosition)
		    // Case CmdMoveUp
		    // Case CmdMoveDown
		    // Case CmdMoveWordForward
		    // Case CmdMoveWordBackward
		    // Case CmdMoveToBeginningOfLine
		    // Case CmdMoveToEndOfLine
		    // Case CmdMoveToBeginningOfParagraph
		    // Case CmdMoveToEndOfParagraph
		    // Case CmdMoveToEndOfDocument
		    // Case CmdMoveToBeginningOfDocument
		    // Case CmdPageDown
		    // Case CmdPageUp
		    // Case CmdCenterSelectionInVisibleArea
		    // 
		    // // NSResponder: Selection movement and scrolling
		    // Case CmdMoveBackwardAndModifySelection
		    // Case CmdMoveForwardAndModifySelection
		    // Case CmdMoveWordForwardAndModifySelection
		    // Case CmdMoveWordBackwardAndModifySelection
		    // Case CmdMoveUpAndModifySelection
		    // Case CmdMoveDownAndModifySelection
		    // 
		    // // NSResponder: Selection movement and scrolling
		    // Case CmdMoveToBeginningOfLineAndModifySelection
		    // Case CmdMoveToEndOfLineAndModifySelection
		    // Case CmdMoveToBeginningOfParagraphAndModifySelection
		    // Case CmdMoveToEndOfParagraphAndModifySelection
		    // Case CmdMoveToEndOfDocumentAndModifySelection
		    // Case CmdMoveToBeginningOfDocumentAndModifySelection
		    // Case CmdPageDownAndModifySelection
		    // Case CmdPageUpAndModifySelection
		    // Case CmdMoveParagraphForwardAndModifySelection
		    // Case CmdMoveParagraphBackwardAndModifySelection
		    // 
		    // // NSResponder: Selection movement and scrolling (added in 10.3)
		    // Case CmdMoveWordRight
		    // Case CmdMoveWordLeft
		    // Case CmdMoveRightAndModifySelection
		    // Case CmdMoveLeftAndModifySelection
		    // Case CmdMoveWordRightAndModifySelection
		    // Case CmdMoveWordLeftAndModifySelection
		    // 
		    // // NSResponder: Selection movement and scrolling (added in 10.6)
		    // Case CmdMoveToLeftEndOfLine
		    // Case CmdMoveToRightEndOfLine
		    // Case CmdMoveToLeftEndOfLineAndModifySelection
		    // Case CmdMoveToRightEndOfLineAndModifySelection
		    // 
		    // // NSResponder: Selection movement and scrolling
		    // Case CmdScrollPageUp
		    // Case CmdScrollPageDown
		    // Case CmdScrollLineUp
		    // Case CmdScrollLineDown
		    // 
		    // // NSResponder: Selection movement and scrolling
		    // Case CmdScrollToBeginningOfDocument
		    // Case CmdScrollToEndOfDocument
		    // 
		    // // NSResponder: Graphical Element transposition
		    // Case CmdTranspose
		    // Case CmdTransposeWords
		    // 
		    // // NSResponder: Selections
		    // Case CmdSelectAll
		    // Case CmdSelectParagraph
		    // Case CmdSelectLine
		    // Case CmdSelectWord
		    // 
		    // // NSResponder: Insertions and Indentations
		    // Case CmdIndent
		    // Case CmdInsertTab
		    // Case CmdInsertBacktab
		  Case CmdInsertNewline
		    mTextBuffer = mTextBuffer + EndOfLine
		    mInsertionPosition = mInsertionPosition + Len(EndOfLine)
		    Self.Invalidate
		    
		    dbglog CurrentMethodName + " insertion position = " + Str(mInsertionPosition)
		    
		  Case CmdInsertNewlineIgnoringFieldEditor
		    mTextBuffer = mTextBuffer + EndOfLine
		    mInsertionPosition = mInsertionPosition + Len(EndOfLine)
		    Self.Invalidate
		    dbglog CurrentMethodName + " insertion position = " + Str(mInsertionPosition)
		    
		  Case CmdInsertLineBreak
		    mTextBuffer = mTextBuffer + EndOfLine
		    mInsertionPosition = mInsertionPosition + Len(EndOfLine)
		    Self.Invalidate
		    dbglog CurrentMethodName + " insertion position = " + Str(mInsertionPosition)
		    
		    // Case CmdInsertParagraphSeparator
		    // Case CmdInsertTabIgnoringFieldEditor
		    // Case CmdInsertContainerBreak
		    // Case CmdInsertSingleQuoteIgnoringSubstitution
		    // Case CmdInsertDoubleQuoteIgnoringSubstitution
		    // 
		    // // NSResponder: Case changes
		    // Case CmdChangeCaseOfLetter
		    // Case CmdUppercaseWord
		    // Case CmdLowercaseWord
		    // Case CmdCapitalizeWord
		    // 
		    // // NSResponder: Deletions
		    // Case CmdDeleteForward
		    // Case CmdDeleteBackward
		    // Case CmdDeleteBackwardByDecomposingPreviousCharacter
		    // Case CmdDeleteWordForward
		    // Case CmdDeleteWordBackward
		    // Case CmdDeleteToBeginningOfLine
		    // Case CmdDeleteToEndOfLine
		    // Case CmdDeleteToBeginningOfParagraph
		    // Case CmdDeleteToEndOfParagraph
		    // Case CmdYank
		    // 
		    // // NSResponder: Completion
		    // Case CmdComplete
		    // 
		    // // NSResponder: Mark/Point manipulation
		    // Case CmdSetMark
		    // Case CmdDeleteToMark
		    // Case CmdSelectToMark
		    // Case CmdSwapWithMark
		    // 
		    // // NSResponder: Cancellation
		    // Case CmdCancelOperation
		    // 
		    // // NSResponder: Writing Direction
		    // Case CmdMakeBaseWritingDirectionNatural
		    // Case CmdMakeBaseWritingDirectionLeftToRight
		    // Case CmdMakeBaseWritingDirectionRightToLeft
		    // Case CmdMakeTextWritingDirectionNatural
		    // Case CmdMakeTextWritingDirectionLeftToRight
		    // Case CmdMakeTextWritingDirectionRightToLeft
		    // 
		    // // Not part of NSResponder, something custom we need for Windows
		    // Case CmdToggleOverwriteMode
		    // Case CmdCopy
		    // Case CmdCut
		    // Case CmdPaste
		    // Case CmdUndo
		    
		  End Select
		End Function
	#tag EndEvent

	#tag Event
		Function FontNameAtLocation(location as integer) As string
		  dbglog currentmethodname
		  
		  return self.TextFont
		End Function
	#tag EndEvent

	#tag Event
		Function FontSizeAtLocation(location as integer) As integer
		  dbglog currentmethodname
		  
		  Return Self.TextSize
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub GotFocus()
		  mBlinkTimer.Mode = Timer.ModeMultiple
		End Sub
	#tag EndEvent

	#tag Event
		Function IncompleteTextRange() As TextRange
		  dbglog currentmethodname
		  
		  Return New TextRange(mInsertionPosition-1, 1)
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub InsertText(text as string, range as TextRange)
		  Text = ReplaceLineEndings(Text, EndOfLine)
		  
		  If range Is Nil Then
		    dbglog currentmethodname + "[" + If(Text=EndOfLine,"<EOL>",Text) + "] nil range"
		  Else
		    dbglog currentmethodname + "[" + If(Text=EndOfLine,"<EOL>",Text) + "] range (location, length, end) = [" + Str(range.Location) + " ," + Str(range.Length) + ", " + Str(range.EndLocation) + "]"
		  End If
		  
		  mTextBuffer = mTextBuffer + Text
		  mInsertionPosition = mInsertionPosition + Len(Text)
		  
		  dbglog CurrentMethodName + " insertion position = " + Str(mInsertionPosition)
		  
		  Me.Invalidate
		End Sub
	#tag EndEvent

	#tag Event
		Function IsEditable() As boolean
		  ' dbglog currentmethodname + " " + Str(mEditable)
		  
		  Return mEditable
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Function KeyFallsThrough(key as string) As boolean
		  dbglog currentmethodname
		End Function
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  mBlinkTimer.Mode = Timer.ModeOff
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(x as Integer, y as Integer) As Boolean
		  // double and triple clicks are both TIME & SPACE
		  // if you click move a long way click this should not be a double or triple click
		  
		  // triple click ?
		  If (mClickType = ClickTypes.Double) _
		    And (Ticks - mLastClickTime < DoubleClickInterval) _
		    And ( Abs(x - mLastClickX) < 5) _
		    And ( Abs(y - mLastClickY) < 5)  Then
		    
		    mClickType  = ClickTypes.triple
		    dbglog currentmethodname + " triple click"
		    // double click ?
		  Elseif (mClickType = ClickTypes.Single) _
		    And (Ticks - mLastClickTime < DoubleClickInterval) _
		    And ( Abs(x - mLastClickX) < 5) _
		    And ( Abs(y - mLastClickY) < 5)  Then
		    
		    mClickType = ClickTypes.Double
		    dbglog currentmethodname + " double click"
		  Else
		    mClickType = ClickTypes.Single
		    dbglog currentmethodname + " single click"
		  End If
		  
		  mLastClickX = x
		  mLastClickY = y
		  
		  mLastClickTime = Ticks
		  
		  Dim p As Picture = GetMeasuringPicture
		  
		  Dim line, col As Integer
		  
		  XYToLineColumn(p.Graphics, x, y, line, col)
		  
		  Select Case mClickType
		    
		  Case ClickTypes.Single
		    mInsertionPosition = LineColumnToPosition( line, col )
		  End Select
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(x as Integer, y as Integer)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(x as Integer, y as Integer)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g as Graphics, areas() as object)
		  g.forecolor = &cFF000000
		  g.FillRect 0, 0, g.Height, g.width
		  
		  // our text buffer MAY have ultiple lines in it so lets 
		  // do the blindingly lazy and ReplaceLineEndings 
		  // and split on line endsins and just draw
		  
		  Dim lines() As String = Split( ReplaceLineEndings(mTextBuffer, EndOfLine), EndOfLine )
		  
		  g.ClearRect 0, 0, g.Height, g.width
		  
		  // ok now ... draw away !
		  
		  g.ForeColor = Self.TextColor
		  g.TextFont = Self.TextFont
		  g.TextUnit = CType(Self.TextUnit, REALbasic.FontUnits)
		  g.TextSize = Self.TextSize
		  g.Underline = Self.Underline
		  g.Bold = Self.Bold
		  g.Italic = Self.Italic
		  
		  mCachedTextAscent = g.TextAscent
		  mCachedTextHeight = g.TextHeight
		  
		  Dim drawAtX As Double
		  Dim drawAtY As Double
		  
		  drawAtY = g.TextAscent
		  For i As Integer = 0 To lines.ubound
		    drawAtX = 0
		    
		    g.DrawString lines(i), drawAtX, drawAtY
		    
		    drawAtX = g.StringWidth(lines(i))
		    
		    // if we're drawing the last line then we probably do not want to advance the Y position 
		    If i < lines.Ubound Then
		      drawAtY = drawAtY + g.TextHeight
		    End If
		    
		  Next
		  
		  // IF the cursor should be visible then draw it - otherwise dont and the clear above will have done the right thing
		  If mCursorVisible Then
		    Dim position As REALbasic.Point = PositionToLineAndColumn(mInsertionPosition)
		    Dim drawPosition As REAlbasic.point = LineColumnToXY(g, position.X, position.Y)
		    drawAtX = drawPosition.X
		    drawAtY = drawPosition.Y
		    
		    dbglog " draw cursor @ insertion pos = " + Str(mInsertionPosition) + " x,y = " + str(drawAtX) +"," + str(drawAtY)
		    
		    g.DrawLine drawAtX, drawAtY - g.TextAscent, drawAtX, drawAtY - g.TextAscent + g.TextHeight
		  End If
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function RectForRange(byref range as TextRange) As REALbasic.Rect
		  dbglog currentmethodname + " requested range =[" + Str(range.Location) + ", " + Str(range.Length) + "]"
		  
		  Dim pos As RealBasic.Point
		  
		  // get the position as a line & column #
		  pos = PositionToLineAndColumn( range.Location )
		  
		  Dim p As picture = GetMeasuringPicture
		  
		  // get the x (left) edge and (y) baseline for the position
		  Dim position As REAlbasic.point = LineColumnToXY(p.Graphics, pos.X, pos.Y)
		  
		  // now computer the rectangle
		  Dim width As Double = p.Graphics.StringWidth( Mid(mTextBuffer, range.Location, range.Length) )
		  Dim top As Double = position.Y - p.Graphics.TextAscent
		  
		  Dim rangeRect As New REALbasic.Rect(position.x, top, width, p.Graphics.TextHeight)
		  
		  Return rangeRect
		End Function
	#tag EndEvent

	#tag Event
		Function SelectedRange() As TextRange
		  dbglog currentmethodname
		  
		  Return New TextRange(mInsertionPosition, 0)
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub SetIncompleteText(text as string, replacementRange as TextRange, relativeSelection as TextRange)
		  dbglog currentmethodname
		End Sub
	#tag EndEvent

	#tag Event
		Function TextForRange(range as TextRange) As string
		  dbglog currentmethodname
		End Function
	#tag EndEvent

	#tag Event
		Function TextLength() As integer
		  dbglog currentmethodname
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub blinkTimerAction(instance as Timer)
		  mCursorVisible = Not mCursorVisible
		  
		  Self.invalidate
		  
		  // dbglog CurrentMethodName + " cursor visible = " + Str(mCursorVisible)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  mBlinkTimer = New Timer
		  mBlinkTimer.Mode = Timer.ModeOff
		  mBlinkTimer.Period = 500
		  AddHandler mBlinkTimer.Action, AddressOf blinkTimerAction
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DbgLog(msg as string)
		  If DebugBuild = False Then
		    Return
		  End If
		  
		  If Self.debugMe Then
		    System.debuglog msg
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DoubleClickInterval() As Double
		  // returns as double that is the # of TICKS
		  
		  #If TargetMacOS
		    
		    Const CocoaLib As String = "Cocoa.framework"
		    Declare Function NSClassFromString Lib CocoaLib(aClassName As CFStringRef) As ptr
		    Declare Function doubleClickInterval Lib CocoaLib selector "doubleClickInterval" (aClass As ptr) As Double
		    
		    Try
		      Dim RefToClass As Ptr = NSClassFromString("NSEvent")
		      Return doubleClickInterval(RefToClass) * 60
		    Catch err As ObjCException
		      Break
		      #If debugbuild
		        MsgBox err.message
		      #EndIf
		    End
		  #EndIf
		  
		  #If TargetWin32
		    Declare Function GetDoubleClickTime Lib "User32.DLL" () As Integer
		    Try
		      Return GetDoubleClickTime
		    Catch err As ObjCException
		      Break
		      #If debugbuild
		        MsgBox err.message
		      #EndIf
		    End
		  #EndIf
		  
		  Break
		  #If debugbuild
		    MsgBox CurrentMethodName + " Unhandled case"
		  #EndIf
		  Return 0
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetMeasuringPicture() As Picture
		  Dim p As Picture = Self.TrueWindow.BitmapForCaching(10, 10)
		  
		  p.Graphics.ForeColor = Self.TextColor
		  p.Graphics.TextFont = Self.TextFont
		  p.Graphics.TextUnit = CType(Self.TextUnit, REALbasic.FontUnits)
		  p.Graphics.TextSize = Self.TextSize
		  p.Graphics.Underline = Self.Underline
		  p.Graphics.Bold = Self.Bold
		  p.Graphics.Italic = Self.Italic
		  
		  return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LineColumnToPosition(line as integer, column as integer) As integer
		  // NOTE this is NOT EFFICIENT !!!!!!
		  // since we split things into lines in PAINT and again here
		  // if we really need lines we should figure out how to do this as few times as possible
		  
		  // if line , col exceeds the n entire text buffer then the position should be the end of the buffer
		  
		  Dim lines() As String = Split( ReplaceLineEndings(mTextBuffer, EndOfLine), EndOfLine )
		  
		  Dim tmpPosition As Integer
		  
		  // count up the lengths of whole lines
		  For i As Integer = 0 To min(line - 1, lines.Ubound)
		    tmpPosition = tmpPosition + lines(i).Len
		  Next
		  
		  // plus hte last line we add in just the columns since it may not be the wbole line
		  tmpPosition = tmpPosition + column
		  
		  Return Min(tmpPosition, mTextBuffer.Len)
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function LineColumnToXY(g as Graphics, lineNumber as integer, column as Integer) As REALbasic.Point
		  Dim xPos As Double
		  Dim yPos As Double
		  
		  // not this is not EFFICIENT
		  // since we split things into lines in PAINT and again here
		  // if we really need lines we should figure out how to do this as few times as possible
		  
		  Dim lines() As String = Split( ReplaceLineEndings(mTextBuffer, EndOfLine), EndOfLine )
		  
		  Dim X As Double
		  Dim Y As Double
		  
		  Y = g.TextAscent // line 0
		  y = y + (g.TextHeight * lineNumber)
		  
		  If lineNumber >= 0 And lineNumber <= lines.ubound Then
		    Dim lineSeg As String = Left( lines(lineNumber), column ) 
		    
		    dbglog CurrentMethodName + " [" + lineSeg + "]"
		    
		    X = g.StringWidth( lineseg )
		  End If
		  
		  Return New REALbasic.Point(x, y)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PositionToLineAndColumn(position as integer) As REALbasic.Point
		  Dim currPos As Integer
		  Dim line As Integer
		  Dim col As Integer
		  
		  While currPos <= position
		    
		    If mTextBuffer.Mid(currPos,1) = EndOfLine Then
		      line = line + 1
		      col = 0
		    Else
		      col = col + 1
		    End If
		    
		    currPos = currPos + 1
		    
		  Wend
		  
		  dbglog CurrentMethodName + " [line,col] = [" + str(line) + ", " + str(col) + "]"
		  
		  Return New realbasic.point( line, col )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub XYToLineColumn(g as Graphics, x as double, y as double, byref lineNumber as integer, byref column as Integer)
		  Dim xPos As Double
		  Dim yPos As Double
		  
		  // NOTE this is NOT EFFICIENT !!!!!!
		  // since we split things into lines in PAINT and again here
		  // if we really need lines we should figure out how to do this as few times as possible
		  
		  Dim lines() As String = Split( ReplaceLineEndings(mTextBuffer, EndOfLine), EndOfLine )
		  
		  // no lines then ANY click inside our bounds is line 0 column 0 
		  If lines.ubound < 0 Then
		    lineNumber = 0
		    column = 0
		    Return
		  End If
		  
		  Dim lineTopY As Double
		  
		  lineTopY = 0
		  lineNumber = 0
		  
		  // so a person may not click rih on the baseline ans we need to see if the 
		  // click is anywhere from the top of the line to the bottom
		  While lineTopY < Y And lineTopY + g.TextHeight <= Y
		    lineNumber = lineNumber + 1
		    
		    lineTopY = lineTopY + g.TextHeight
		  Wend
		  
		  If lineNumber >= 0 And lineNumber <= lines.ubound Then
		    // ok wo what column does this X represent ?
		    
		    column = 0
		    Dim lineX As Double = 0
		    Dim lineSeg As String = lines(lineNumber).Left(column)
		    While column <= lines(lineNumber).Len and g.StringWidth( lineseg ) < x 
		      column = column + 1
		      lineSeg = lines(lineNumber).Left(column)
		    Wend
		    // column has been incremented once too many times
		    column = column - 1
		    
		    dbglog CurrentMethodName + "[x,y] => [line,col] = [" + Str(lineNumber) + ", " + Str(column) + "] + [" + lineSeg + "]"
		    
		  End If
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Bold As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Italic As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mBlinkTimer As Timer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mCachedTextAscent As double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mCachedTextHeight As double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mClickType As ClickTypes
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mCursorVisible As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mEditable As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mInsertionPosition As integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mLastClickTime As double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mLastClickX As Double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mLastClickY As double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mShiftClick As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected mTextBuffer As string
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return not mEditable
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mEditable = Not Value
			  
			  
			End Set
		#tag EndSetter
		ReadOnly As boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		TextColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		TextFont As string
	#tag EndProperty

	#tag Property, Flags = &h0
		TextSize As double
	#tag EndProperty

	#tag Property, Flags = &h0
		TextUnit As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Underline As boolean
	#tag EndProperty


	#tag Constant, Name = debugMe, Type = Boolean, Dynamic = False, Default = \"true", Scope = Private
	#tag EndConstant


	#tag Enum, Name = ClickTypes, Type = Integer, Flags = &h1
		none=0
		  single=1
		  double=2
		triple=3
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Group="Position"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Font"
			InitialValue="System"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Font"
			InitialValue="&c000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Italic"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Bold"
			Visible=true
			Group="Font"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Underline"
			Visible=true
			Group="Font"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextUnit"
			Visible=true
			Group="Font"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ReadOnly"
			Visible=true
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
