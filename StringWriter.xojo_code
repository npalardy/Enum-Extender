#tag Class
Protected Class StringWriter
	#tag Method, Flags = &h0
		Sub Constructor(outputStream as binaryStream, stringName as string, value as string)
		  
		  
		  // 7372636C srcl    // srcline <<<<<< name
		  // 5374726E Strn    // type    <<<<<< type
		  // 00000009 •••     // length (in bytes or ?)
		  // 6E6F6E65 none    // value padded to even multiple of 4
		  // 203D202D  = -
		  // 31202020 1       
		  
		  outputStream.write stringName.Left(4)
		  outputStream.Write "Strn"
		  
		  Dim paddedString As String = value
		  
		  While (paddedString.LenB Mod 4) <> 0
		    paddedString = paddedString + " "
		  Wend
		  
		  outputStream.WriteInt32 value.LenB
		  
		  If value.Len <> 0 Then
		    outputStream.Write paddedString
		  End If
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
