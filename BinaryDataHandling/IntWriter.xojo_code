#tag Class
Protected Class IntWriter
	#tag Method, Flags = &h0
		Sub Constructor(outputStream as binaryStream, name as string, value as integer)
		  
		  // for example 
		  // 456E636F Enco     << encoding
		  // 496E7420 Int      << data type of next bit
		  // 08000100 ••••     << encoding id as an int (should be utf 8? YUP !) 
		  outputStream.Write name.Left(4)
		  outputStream.Write "Int "
		  outputStream.WriteInt32 value
		  
		  
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
