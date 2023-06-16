#tag Class
Protected Class propertyDef
	#tag Method, Flags = &h0
		Function ToData() As string
		  // we're ging to write into a binarystream that is back by a memoryblock
		  Dim mb As New memoryblock(0)
		  mb.LittleEndian = False
		  
		  Dim bs As New BinaryStream(mb)
		  
		  // write this block type
		  Dim g As New GroupWriter( bs, "Cnst" )
		  
		  Dim s As New StringWriter( bs, "name", propName )
		  s = Nil
		  
		  s = New StringWriter( bs, "Comp", "" )
		  s = Nil
		  
		  Dim i As New IntWriter( bs, "Vsbl", &h01 )
		  i = Nil
		  
		  // we have no reasonable way to craft a unique new 
		  // part id but the paste assigns a new one anyway
		  i = New IntWriter( bs, "PtID", &h4c347fff ) 
		  i = Nil
		  
		  Dim g1 As New GroupWriter( bs, "sorc" )
		  i = New IntWriter( bs, "Enco", Encodings.UTF8.code )
		  i = Nil
		  
		  s = New StringWriter( bs, "srcl", If(isShared, "Shared ", "") + propName + " As " + type )
		  s = Nil
		  
		  s = New StringWriter( bs, "srcl", "" )
		  s = Nil
		  
		  // end of src line group
		  g1 = Nil
		  
		  i = New IntWriter( bs, "Enco", Encodings.UTF8.code )
		  i = Nil
		  
		  s = New StringWriter( bs, "decl", propName + " As " + type )
		  s = Nil
		  
		  Dim flags As Integer
		  Select Case LanguageUtils.ScopeFromString(scope)
		  Case LanguageUtils.Scope.GlobalScope
		    
		  Case LanguageUtils.Scope.PrivateScope
		    flags = &h21
		  Case LanguageUtils.Scope.ProtectedScope
		    flags = &h01
		  Case LanguageUtils.Scope.PublicScope
		  Else
		  End Select
		  
		  i = New IntWriter( bs, "flag", flags )
		  i = Nil
		  
		  i = New IntWriter( bs, "shrd", If(isShared,1,0) )
		  i = Nil
		  
		  // end of Cnst group
		  g = Nil
		  
		  Dim result As String = mb.StringValue(0, bs.Length)
		  
		  Return result 
		  
		  // Dim c As New Clipboard
		  // 
		  // Dim sizeMB As New MemoryBlock(4)
		  // sizeMB.Int32Value(0) = result.LenB
		  // 
		  // c.AddRawData( sizeMB.StringValue(0,4) + "Prop" + result , "RSCI")
		  // 
		  // 
		  // 
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As string
		  
		  Return scope + " " + If(isShared, "Shared ", "") + "Property " + propName + " As " + type 
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		isNew As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		isShared As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		optionalDefault As String
	#tag EndProperty

	#tag Property, Flags = &h0
		propName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		scope As String
	#tag EndProperty

	#tag Property, Flags = &h0
		type As String
	#tag EndProperty


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
			Name="isShared"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="scope"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="propName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="isNew"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="type"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="optionalDefault"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
