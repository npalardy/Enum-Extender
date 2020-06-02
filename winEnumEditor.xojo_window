#tag Window
Begin Window winEnumEditor
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
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "Untitled"
   Visible         =   True
   Width           =   600
   Begin TextArea txtEnumValues
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
      Height          =   263
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
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
      ReadOnly        =   False
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
      Top             =   85
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   560
   End
   Begin PushButton pushCreateClipboard
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Create on clipboard"
      Default         =   False
      Enabled         =   False
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   437
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   360
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   143
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Enumeration name"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   123
   End
   Begin Label Label2
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
      Text            =   "Values (1 per line)"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   123
   End
   Begin TextField txtEnumName
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   165
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   19
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   415
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h1
		Protected Sub DoEnableButtons()
		  
		  pushCreateClipboard.Enabled = (txtEnumName.Text <> "") And (txtEnumValues.Text <> "")
		  
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events txtEnumValues
	#tag Event
		Sub TextChange()
		  DoEnableButtons
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pushCreateClipboard
	#tag Event
		Sub Action()
		  // we're ging to write into a binarystream that is back by a memoryblock
		  Dim mb As New memoryblock(0)
		  mb.LittleEndian = False
		  
		  Dim bs As New BinaryStream(mb)
		  
		  #If False
		    // the test sample we have in Module1.Untitled
		    
		    // =00000000:  c0 00 00 00 45 6e 75 6d 43 6e  ¿...EnumCn
		    // =00000010:  73 74 47 72 75 70 00 00 00 a8  stGrup...®
		    // =00000020:  00 00 7a 54 45 6e 63 6f 49 6e  ..zTEncoIn
		    // =00000030:  74 20 08 00 01 00 6e 61 6d 65  t ....name
		    // =00000040:  53 74 72 6e 00 00 00 08 55 6e  Strn....Un
		    // =00000050:  74 69 74 6c 65 64 66 6c 61 67  titledflag
		    // =00000060:  49 6e 74 20 00 00 00 00 6e 61  Int ....na
		    // =00000070:  6d 65 53 74 72 6e 00 00 00 08  meStrn....
		    // =00000080:  55 6e 74 69 74 6c 65 64 43 6f  UntitledCo
		    // =00000090:  6d 70 53 74 72 6e 00 00 00 00  mpStrn....
		    // =00000100:  56 73 62 6c 49 6e 74 20 00 00  VsblInt ..
		    // =00000110:  00 01 50 74 49 44 49 6e 74 20  ..PtIDInt 
		    // =00000120:  4c 34 7f ff 73 6f 72 63 47 72  L4..sorcGr
		    // =00000130:  75 70 00 00 00 28 00 00 7a 55  up...(..zU
		    // =00000140:  45 6e 63 6f 49 6e 74 20 08 00  EncoInt ..
		    // =00000150:  01 00 73 72 63 6c 53 74 72 6e  ..srclStrn
		    // =00000160:  00 00 00 09 61 f0 9f 91 8d 62  ....a...b
		    // =00000170:  c3 ba 63 20 20 20 45 6e 64 47  √∫c   EndG
		    // =00000180:  49 6e 74 20 00 00 7a 55 45 6e  Int ..zUEn
		    // =00000190:  64 47 49 6e 74 20 00 00 7a 54  dGInt ..zT
		    
		    // write this block type
		    Dim g As New GroupWriter( bs, "Cnst" )
		    
		    Dim i As New IntWriter( bs, "Enco", Encodings.UTF8.code)
		    i = Nil
		    
		    Dim s As New StringWriter( bs, "name", "Untitled" )
		    s = Nil
		    
		    i = New IntWriter( bs, "flag", &h0 )
		    i = Nil
		    
		    s =  New StringWriter( bs, "name", "Untitled" )
		    s = Nil
		    
		    s =  New StringWriter( bs, "Comp", "" )
		    s = Nil
		    
		    i = New IntWriter( bs, "Vsbl", &h01 )
		    i = Nil
		    
		    // we have no reasonable way to craft a unique new 
		    // part id but the paste assigns a new one anyway
		    i = New IntWriter( bs, "PtID", &h4c347fff )
		    i = Nil
		    
		    Dim g1 As New GroupWriter( bs, "sorc" )
		    
		    i = New IntWriter( bs, "Enco", Encodings.UTF8.code )
		    i = Nil
		    
		    s =  New StringWriter( bs, "srcl", "a👍búc" )
		    s = Nil
		    
		    
		    g1 = Nil
		    
		    g = Nil
		  #EndIf
		  
		  #If True
		    // write this block type
		    Dim g As New GroupWriter( bs, "Cnst" )
		    
		    Dim i As New IntWriter( bs, "Enco", Encodings.UTF8.code)
		    i = Nil
		    
		    Dim s As New StringWriter( bs, "name", txtEnumName.Text )
		    s = Nil
		    
		    i = New IntWriter( bs, "flag", &h0 )
		    i = Nil
		    
		    s =  New StringWriter( bs, "name", txtEnumName.Text )
		    s = Nil
		    
		    s =  New StringWriter( bs, "Comp", "" )
		    s = Nil
		    
		    i = New IntWriter( bs, "Vsbl", &h01 )
		    i = Nil
		    
		    // we have no reasonable way to craft a unique new 
		    // part id but the paste assigns a new one anyway
		    i = New IntWriter( bs, "PtID", &h4c347fff ) 
		    i = Nil
		    
		    Dim lines() As String = Split( ReplaceLineEndings( Trim(txtEnumValues.Text), EndOfLine), EndOfLine )
		    
		    Dim g1 As New GroupWriter( bs, "sorc" )
		    i = New IntWriter( bs, "Enco", Encodings.UTF8.code )
		    i = Nil
		    
		    For Each line As String In lines
		      s =  New StringWriter( bs, "srcl", line )
		      s = Nil
		    Next
		    
		    // end of src line group
		    g1 = Nil
		    
		    // end of Cnst group
		    g = Nil
		  #EndIf
		  
		  Dim result As String = mb.StringValue(0, bs.Length)
		  
		  Dim c As New Clipboard
		  
		  Dim sizeMB As New MemoryBlock(4)
		  sizeMB.Int32Value(0) = result.LenB
		  
		  c.AddRawData( sizeMB.StringValue(0,4) + "Enum" + result , "RSCI")
		  
		  Break
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events txtEnumName
	#tag Event
		Sub TextChange()
		  DoEnableButtons
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
