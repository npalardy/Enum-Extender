#tag Class
Protected Class GroupWriter
	#tag Method, Flags = &h0
		Sub Constructor(outputstream as binarystream, Groupname as string)
		  Static id As Integer = &h7A54
		  
		  Self.m_Stream = outputstream
		  
		  
		  Self.m_ID = id
		  
		  id = id + 1
		  
		  outputstream.Write Groupname.Left(4)
		  outputstream.Write "Grup"
		  Self.m_BackPatchPosition = outputstream.Position
		  
		  outputstream.WriteInt32 0 // we back patch this one eventually
		  
		  Self.m_GroupSizeStartPosition = outputstream.Position
		  outputStream.WriteInt32 Me.m_ID
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Destructor()
		  Dim length As UInt64 = Self.m_Stream.Position - m_GroupSizeStartPosition
		  
		  Self.m_Stream.Write "EndG"
		  Self.m_Stream.Write "Int "
		  Self.m_Stream.WriteInt32 Self.m_ID
		  
		  Dim positionToRestore As UInt64 = Self.m_Stream.Position
		  
		  Dim length32 As UInt32 = length
		  
		  Self.m_Stream.Position = m_BackPatchPosition
		  Self.m_Stream.WriteInt32 length32
		  
		  Self.m_Stream.Position = positionToRestore
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected m_BackPatchPosition As Uint64
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_GroupSizeStartPosition As Uint64
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_Stream As BinaryStream
	#tag EndProperty


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
