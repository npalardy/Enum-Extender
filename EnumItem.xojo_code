#tag Class
Protected Class EnumItem
	#tag Method, Flags = &h0
		Function AsExtensions() As string
		  Dim cleanedSrcLines() As String
		  For i As Integer = 0 To srcLines.Ubound
		    Dim workingLine As String = srcLines(i)
		    If Trim(workingLine) = "" Then
		      Continue
		    End If
		    Dim namePart As String = Trim( workingLine.NthField("=", 1) )
		    If Trim(namePart) = "" Then
		      Continue
		    End If
		    cleanedSrcLines.Append namePart
		  Next
		  
		  
		  Dim lines() As String
		  
		  lines.append "Public Function ToString(extends enumValue as " + Name + ") as String"
		  
		  lines.append "  select case enumValue"
		  
		  For i As Integer = 0 To cleanedSrcLines.Ubound
		    lines.append "    case " + name + "." + cleanedSrcLines(i)
		    lines.Append "        return """ + cleanedSrcLines(i) + """"
		  Next
		  
		  lines.Append "Else"
		  lines.Append " raise new UnsupportedOperationException"
		  
		  lines.append "  end select"
		  
		  lines.append "End Function"
		  
		  lines.append EndOfLine
		  
		  
		  lines.append "Public Function To" + Name + "(extends stringValue as String) as " + Name 
		  
		  lines.append "  select case stringValue"
		  
		  For i As Integer = 0 To cleanedSrcLines.Ubound
		    lines.append "    case """ + cleanedSrcLines(i) + """"
		    lines.Append "        return " + name + "." + cleanedSrcLines(i) 
		  Next
		  
		  lines.append "  end select"
		  
		  lines.Append "Else"
		  lines.Append " raise new UnsupportedOperationException"
		  
		  
		  lines.append "End Function"
		  
		  
		  Return Join(lines, EndOfLine) + EndOfLine
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AsToStringFromString() As string
		  Dim cleanedSrcLines() As String
		  For i As Integer = 0 To srcLines.Ubound
		    Dim workingLine As String = srcLines(i)
		    If Trim(workingLine) = "" Then
		      Continue
		    End If
		    Dim namePart As String = Trim( workingLine.NthField("=", 1) )
		    If Trim(namePart) = "" Then
		      Continue
		    End If
		    cleanedSrcLines.Append namePart
		  Next
		  
		  
		  Dim lines() As String
		  
		  lines.append "Public Function " + Name +"_ToString( enumValue as " + Name + ") as String"
		  
		  lines.append "  select case enumValue"
		  
		  For i As Integer = 0 To cleanedSrcLines.Ubound
		    lines.append "    case " + name + "." + cleanedSrcLines(i)
		    lines.Append "        return """ + cleanedSrcLines(i) + """"
		  Next
		  
		  lines.Append "Else"
		  lines.Append " raise new UnsupportedOperationException"
		  
		  lines.append "  end select"
		  
		  lines.append "End Function"
		  
		  lines.append EndOfLine
		  
		  
		  lines.append "Public Function " + Name + "_FromString(stringValue as String) as " + Name 
		  
		  lines.append "  select case stringValue"
		  
		  For i As Integer = 0 To cleanedSrcLines.Ubound
		    lines.append "    case """ + cleanedSrcLines(i) + """"
		    lines.Append "        return " + name + "." + cleanedSrcLines(i) 
		  Next
		  
		  lines.Append "Else"
		  lines.Append " raise new UnsupportedOperationException"
		  
		  lines.append "  end select"
		  
		  
		  lines.append "End Function"
		  
		  
		  Return Join(lines, EndOfLine) + EndOfLine
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(hexEncodedData as string)
		  
		  Dim decoded As MemoryBlock = DecodeHex(hexEncodedData)
		  decoded.LittleEndian = False
		  
		  Dim offset As Integer = 0
		  
		  Do
		    Dim tag As String =  decoded.StringValue(offset, 4)
		    offset = offset + 4
		    
		    Select Case tag
		      
		    Case "Cnst" // 436E7374 Cnst
		      
		    Case "Grup" // 47727570 Grup
		      Dim outerGroupSize As Integer = decoded.Int32Value(offset) // 00000140   <<< size including GRUP header & trailer (140 = 320 in dec)
		      offset = offset + 4
		      
		      Dim outerGroupID As Integer = decoded.Int32Value(offset) // 00009D15   ••�•   <<< group ID (see end of group)
		      offset = offset + 4
		      
		    Case "Enco" // 456E636F Enco     << encoding
		      If "Int " <> decoded.StringValue(offset, 4) Then // 496E7420 Int      << data type of next bit
		        Break
		      End If
		      offset = offset + 4
		      
		      Dim outerEncodingID As Integer = decoded.Int32Value(offset) // 08000100 ••••     << encoding id as an int (should be utf 8? YUP !) 
		      offset = offset + 4
		      
		    Case "name" // 6E616D65 name     << prop name (name) 
		      name = ReadString(decoded, offset)
		      
		    Case "flag"  // 666C6167 flag     // flag ???
		      If "Int " <> decoded.StringValue(offset, 4) Then // 496E7420 Int     
		        Break
		      End If
		      offset = offset + 4
		      
		      Dim scope As Integer =  decoded.Int32Value(offset) // 00000001 ••••     // public/global = 0x0, protected = 0x01, private = 0x21
		      offset = offset + 4
		      
		    Case "type"  // 74797065 type     // data type of this enum
		      Dim value As String = ReadString(decoded, offset)
		      
		    Case "Comp"// 436F6D70 Comp    // compat flags 
		      Dim value As String  = ReadString(decoded, offset)
		      
		    Case "Vsbl"
		      If "Int " <> decoded.StringValue(offset, 4) Then 
		        Break
		      End If
		      offset = offset + 4
		      
		      Dim visibility As Integer =  decoded.Int32Value(offset) 
		      offset = offset + 4
		      
		    Case "PtID"
		      If "Int " <> decoded.StringValue(offset, 4) Then 
		        Break
		      End If
		      offset = offset + 4
		      
		      Dim partID As Integer =  decoded.Int32Value(offset) 
		      offset = offset + 4
		      
		    Case "sorc"  // 74797065 type     // data type of this enum
		      // ???????
		      
		    Case "srcl"
		      Dim srcline As String = ReadString(decoded, offset)
		      srcLines.Append DefineEncoding(srcline, Encodings.UTF8)
		      
		    Case "EndG"
		      If "Int " <> decoded.StringValue(offset, 4) Then 
		        Break
		      End If
		      offset = offset + 4
		      
		      Dim groupID As Integer =  decoded.Int32Value(offset) 
		      offset = offset + 4
		      
		    Else
		      Break
		      
		    End Select
		    
		  Loop Until offset >= decoded.Size
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadString(mb as memoryblock, byref offset as integer) As string
		  If "Strn" <> mb.StringValue(offset, 4) Then // 5374726E Strn
		    Break
		  End If
		  offset = offset + 4
		  
		  Dim rawStringLength As Integer =  mb.Int32Value(offset) // 0000000C ••••
		  Dim paddedStringLength As Integer = (rawStringLength \ 4 + If( (rawStringLength Mod 4) <> 0, 1, 0)) * 4 
		  offset = offset + 4
		  
		  Dim value As String = mb.StringValue(offset, rawStringLength) // 536F7274 Sort
		  //                                                               4F726465 Orde
		  //                                                               72696E67 ring
		  offset = offset + paddedStringLength
		  
		  return value
		End Function
	#tag EndMethod


	#tag Note, Name = Sample
		
		// we'll need bits of thomas t's rb project tools here
		// 
		// 436E7374 Cnst
		// 47727570 Grup
		// 00000140   •••@   <<< size including GRUP header & trailer (140 = 320 in dec)
		// 00009D15   ••�•   <<< group ID (see end of group)
		// 456E636F Enco     << encoding
		// 496E7420 Int      << data type of next bit
		// 08000100 ••••     << encoding id as an int (should be utf 8? YUP !) 
		// 6E616D65 name     << prop name (name) 
		// 5374726E Strn     << type Strn
		// 0000000C ••••     << length (space padded to even 4 bytes or is it 8?)
		// 536F7274 Sort     // bytes of value
		// 4F726465 Orde
		// 72696E67 ring
		// 666C6167 flag     // flag ???
		// 496E7420 Int     
		// 00000001 ••••     // public/global = 0x0, protected = 0x01, private = 0x21
		// 74797065 type     // data type of this enum
		// 5374726E Strn     // string
		// 00000007 ••••     // 7 bytes (again padded)  
		// 496E7465 Inte     // integer<spc>
		// 67657220 ger 
		// 6E616D65 name     // another name property ?
		// 5374726E Strn
		// 0000000C ••••
		// 536F7274 Sort
		// 4F726465 Orde
		// 72696E67 ring
		// 436F6D70 Comp    // compat flags 
		// 5374726E Strn
		// 00000000 ••••    // 0 length 
		// 5673626C Vsbl    // visibility
		// 496E7420 Int 
		// 00000001 ••••
		// 50744944 PtID    // part id
		// 496E7420 Int 
		// 29FEE7FF )��
		// 736F7263 sorc    // source
		// 47727570 Grup    // group header
		// 000000A4 •••�    // size     (164 bytes)
		// 00009D16 ••�•    // group id
		// 456E636F Enco    // encoding
		// 496E7420 Int 
		// 08000100 ••••
		// 7372636C srcl    // srcline
		// 5374726E Strn    // type
		// 00000009 •••    
		// 6E6F6E65 none
		// 203D202D  = -
		// 31202020 1       
		// 7372636C srcl    // srcline
		// 5374726E Strn
		// 00000009 •••    
		// 636F6E73 cons
		// 74616E74 tant
		// 73202020 s   
		// 7372636C srcl    // srclne
		// 5374726E Strn
		// 00000010 ••••
		// 6576656E even
		// 74646566 tdef
		// 696E6974 init
		// 696F6E73 ions
		// 7372636C srcl    // srclne
		// 5374726E Strn
		// 0000000A •••
		// 70726F70 prop
		// 65727469 erti
		// 65732020 es  
		// 7372636C srcl    // srclne
		// 5374726E Strn
		// 0000000D •••
		// 6576656E even
		// 7468616E than
		// 646C6572 dler
		// 73202020 s   
		// 7372636C srcl    // srclne
		// 5374726E Strn
		// 00000007 ••••
		// 6D657468 meth
		// 6F647320 ods 
		// 456E6447 EndG    << end group
		// 496E7420 Int 
		// 00009D16 ••�•
		// 456E6447 EndG    << end of group
		// 496E7420 Int     << 
		// 00009D15 ••�•    << group ID must match start
	#tag EndNote


	#tag Property, Flags = &h0
		Name As string
	#tag EndProperty

	#tag Property, Flags = &h0
		srcLines() As String
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
