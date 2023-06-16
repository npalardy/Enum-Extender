#tag Class
Protected Class token
	#tag Method, Flags = &h0
		Sub Constructor(type as Types, what as string)
		  tokentype = type
		  stringvalue = what
		  read = what.Len
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(type as Types, what as string, bytesread as integer)
		  tokentype = type
		  stringvalue = what
		  read = bytesread
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		read As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		stringvalue As string
	#tag EndProperty

	#tag Property, Flags = &h0
		tokentype As Types
	#tag EndProperty


	#tag Enum, Name = Types, Type = Integer, Flags = &h0
		unknown
		  whitespace
		  comment
		  string
		  number
		  operator
		EndOfLine
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="read"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="stringvalue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="tokentype"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Types"
			EditorType="Enum"
			#tag EnumValues
				"0 - unknown"
				"1 - whitespace"
				"2 - comment"
				"3 - string"
				"4 - number"
				"5 - operator"
				"6 - EndOfLine"
			#tag EndEnumValues
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
