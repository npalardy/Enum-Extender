#tag Window
Begin Window winPropertyPaster
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   0
   FullScreen      =   False
   HasBackColor    =   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   428
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Untitled"
   Type            =   0
   Visible         =   True
   Width           =   600
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
      Height          =   100
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   0
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
      UnicodeMode     =   1
      UseFocusRing    =   True
      Visible         =   True
      Width           =   560
   End
   Begin PushButton pbCreate
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Create "
      Default         =   False
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
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   132
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   124
   End
   Begin Listbox Listbox1
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   2
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   216
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   2
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      ShowDropIndicator=   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   164
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   560
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PushButton pbCopy
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   0
      Cancel          =   False
      Caption         =   "Copy Selected"
      Default         =   False
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
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   392
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   124
   End
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events pbCreate
	#tag Event
		Sub Action()
		  listbox1.DeleteAllRows
		  
		  // split the text into lines
		  Dim lines() As String = Split(ReplaceLineEndings(textarea1.Text, EndOfLine), EndOfLine)
		  
		  
		  For Each line As String In lines
		    
		    // parse the lines in to property decl
		    Dim isShared As Boolean
		    Dim scope As String
		    Dim propName As String
		    Dim isNew As Boolean
		    Dim type As String
		    Dim optionalDefault As String
		    
		    if LanguageUtils.CrackPropertyDeclaration(line, isShared, scope, propName, isNew, type, optionalDefault, true) <> True then
		      //flag that line as not a property in the original text ?
		      Continue
		    End If
		    
		    // create property instances as binary
		    Dim propDef As New propertyDef
		    propdef.isNew = isNew
		    propDef.isShared = isShared
		    propdef.optionalDefault = optionalDefault
		    propdef.propName = propName
		    propDef.scope = scope
		    propDef.type = type
		    
		    // And attach them As rowtags To the rows
		    listbox1.AddRow line
		    listbox1.RowTag(listbox1.LastIndex) = propDEf
		    
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Listbox1
	#tag Event
		Sub Open()
		  me.ColumnType(0) = Listbox.TypeCheckbox
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pbCopy
	#tag Event
		Sub Action()
		  Dim allData As String
		  Dim allText As String
		  
		  For i As Integer = 0 To Listbox1.ListCount - 1
		    
		    If listbox1.CellCheck(i, 0) Then
		      
		      Dim propdef As propertyDef = listbox1.RowTag(i)
		      
		      Dim result As String = propdef.ToData
		      
		      Dim sizeMB As New MemoryBlock(8 + result.LenB )
		      sizeMB.Int32Value(0) = result.LenB
		      sizeMB.StringValue(4,4) = "Prop"
		      sizeMB.StringValue(8,result.LenB) = result
		      
		      allData = allData + sizeMB.StringValue(0, sizeMB.Size)
		      
		      'c.AddRawData( sizeMB.StringValue(0,4) + "Prop" + result , "RSCI")
		      '
		      'c.SetText(propdef.ToString)
		      allText = allText + propDef.ToString + &u0A
		    End If
		    
		  Next
		  
		  Dim c As New clipboard
		  
		  c.AddRawData( allData, "RSCI")
		  
		  c.SetText(allText)
		End Sub
	#tag EndEvent
#tag EndEvents
