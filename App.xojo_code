#tag Class
Protected Class App
Inherits Application
	#tag MenuHandler
		Function ViewEnumEditor() As Boolean Handles ViewEnumEditor.Action
			winEnumEditor.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewExtendWriter() As Boolean Handles ViewExtendWriter.Action
			winExtendWriter.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewGenericItemCreator() As Boolean Handles ViewGenericItemCreator.Action
			winGenericClassWriter.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewPragmaWriter() As Boolean Handles ViewPragmaWriter.Action
			winPragmaWriter.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewPropertyPaster() As Boolean Handles ViewPropertyPaster.Action
			winPropertyPaster.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
