#tag Window
Begin Window winExtendWriter
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1875030015
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Enum Extender"
   Visible         =   True
   Width           =   600
   Begin Canvas Canvas1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   20
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   100
   End
   Begin TextArea TextArea1
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   360
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   143
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   437
   End
   Begin CheckBox chkExtends
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Extends"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   39
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   1
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   74
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   100
   End
   Begin CheckBox chkToString
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "#ToStringFromString"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   55
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   39
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   1
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   88
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   100
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Write as"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   48
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin PushButton HelpButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "8"
      Cancel          =   False
      Caption         =   "?"
      Default         =   False
      Enabled         =   True
      Height          =   36
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   -4
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   371
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   36
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  #Pragma unused x
		  #Pragma unused y
		  #Pragma unused action
		  
		  ShouldAcceptDrag(obj)
		End Function
	#tag EndEvent

	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  #Pragma unused action
		  
		  HandleDrop(obj)
		  
		  mShouldFill = False
		  Canvas1.Invalidate
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  mShouldFill = False
		  Canvas1.Invalidate
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  Me.AcceptRawDataDrop("RIDE")
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub HandleDrop(obj as DragItem)
		  Redim droppedData(-1)
		  
		  mShouldFill = False
		  
		  Canvas1.Invalidate
		  
		  Do
		    
		    If obj.RawDataAvailable("RIDE") = False Then
		      
		    Else
		      
		      Dim data As String = obj.RawData("RIDE")
		      droppedData.Append data
		      
		      processOneDrop( data )
		      
		    End If
		    
		  Loop Until obj.NextItem = False
		  
		  
		  Dim c As New Clipboard
		  
		  c.AddRawData(TextArea1.Text, "public.utf8-plain-text")
		  c.Text = TextArea1.Text
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessOneDrop(data as string)
		  // a dropped enum looks like
		  // Role=CodeItem
		  // Type=Enum
		  // Data=436E7374477275700000014000009B02456E636F496E7420080001006E616D655374726E0000000C536F72744F72646572696E67666C6167496E742000000001747970655374726E00000007496E7465676572206E616D655374726E0000000C536F72744F72646572696E67436F6D705374726E000000005673626C496E74200000000150744944496E742029FEE7FF736F726347727570000000A400009B03456E636F496E7420080001007372636C5374726E000000096E6F6E65203D202D312020207372636C5374726E00000009636F6E7374616E74732020207372636C5374726E000000106576656E74646566696E6974696F6E737372636C5374726E0000000A70726F7065727469657320207372636C5374726E0000000D6576656E7468616E646C6572732020207372636C5374726E000000076D6574686F647320456E6447496E742000009B03456E6447496E742000009B02
		  // PartID=1334783999
		  // Properties=ItemID:373034353731333931
		  // Compatibility=30
		  
		  // data is a hexed version of the binary data
		  
		  Dim parts() As String = Split( ReplaceLineEndings( data, EndOfLine ), EndOfLine )
		  
		  For i As Integer = 0 To parts.ubound
		    Dim key As String
		    Dim value As String
		    key = parts(i).NthField("=",1)
		    value = parts(i).NthField("=",2)
		    
		    If key = "Data" Then
		      
		      Dim thisEnum As New EnumItem( value )
		      
		      If chkExtends.Value Then
		        TextArea1.AppendText thisEnum.AsExtensions + EndOfLine
		      End If
		      If chkToString.Value Then
		        TextArea1.AppendText thisEnum.AsToStringFromString + EndOfLine
		      End If
		      
		    End If
		    
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShouldAcceptDrag(obj as DragItem)
		  Dim canAccept As Boolean = True
		  
		  Do
		    
		    If obj.RawDataAvailable("RIDE") = False Then
		      canAccept = false
		      
		    Else
		      
		      // we have to poke through the data itself
		      // what ROLE ? Type ? 
		      Dim data As String = obj.RawData("RIDE")
		      Dim parts() As String = Split( ReplaceLineEndings( data, EndOfLine ), EndOfLine )
		      
		      Dim hasRightRole As Boolean
		      Dim hasRightType As Boolean
		      
		      For i As Integer = 0 To parts.ubound
		        Dim key As String
		        Dim value As String
		        key = parts(i).NthField("=",1)
		        value = parts(i).NthField("=",2)
		        Select Case key
		          
		        Case "Role"
		          If value = "CodeItem" Then
		            hasRightRole = True
		          End If
		          
		        Case "Type"
		          If value = "Enum" Then
		            hasRightType = True
		          End If
		          
		        End Select
		        
		      Next
		      
		      canAccept = canAccept And (hasRightRole And hasRightType)
		      
		    End If
		    
		  Loop Until obj.NextItem = False
		  
		  mShouldFill = canAccept
		  Canvas1.Invalidate
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private droppedData() As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mShouldFill As boolean
	#tag EndProperty


	#tag Constant, Name = ToStringFromString, Type = String, Dynamic = False, Default = \"ToString /\nFromString", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  #Pragma unused x
		  #Pragma unused y
		  #Pragma unused action
		  
		  ShouldAcceptDrag(obj)
		End Function
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  #Pragma unused action
		  
		  HandleDrop(obj)
		  
		  mShouldFill = False
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.AcceptRawDataDrop("RIDE")
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma unused areas
		  
		  Const mFillDropRectColor = &c00FF00
		  
		  g.ClearRect 0,0,g.width,g.height
		  
		  If mShouldFill Then
		    g.forecolor = mFillDropRectColor
		    g.FillRect 0,0,g.width,g.height
		  End If
		  
		  g.forecolor = &cffffff
		  g.DrawRect 0,0,g.width,g.height
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  mShouldFill = false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextArea1
	#tag Event
		Sub Open()
		  Me.AcceptRawDataDrop("RIDE")
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  #Pragma unused x
		  #Pragma unused y
		  #Pragma unused action
		  
		  ShouldAcceptDrag(obj)
		End Function
	#tag EndEvent
	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  #Pragma unused action
		  
		  HandleDrop(obj)
		  
		  mShouldFill = False
		  Canvas1.Invalidate
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  mShouldFill = False
		  Canvas1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkExtends
	#tag Event
		Sub Action()
		  TextArea1.Text = ""
		  
		  For i As Integer = 0 To droppedData.Ubound
		    
		    processOneDrop( droppedData(i) )
		    
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events chkToString
	#tag Event
		Sub Open()
		  Me.Caption = "ToString" + EndOfLine + "FromString"
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  TextArea1.Text = ""
		  
		  For i As Integer = 0 To droppedData.Ubound
		    
		    processOneDrop( droppedData(i) )
		    
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HelpButton
	#tag Event
		Sub Action()
		  Dim w As New HelpWindow
		  
		  w.ShowModalWithin ( Self )
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
