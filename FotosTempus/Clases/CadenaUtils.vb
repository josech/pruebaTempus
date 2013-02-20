Public Class CadenaUtils
    Shared Function ArreglarCadena(ByVal cad As String) As String
        Dim utf8Encoding As New System.Text.UTF8Encoding
        Dim cadNew As String
        cadNew = CType(cad, String)

        cadNew = cadNew.Replace("&nbsp;", " ")
        cadNew = cadNew.Replace("&#176;", "°")
        cadNew = cadNew.Replace("&#186;", "º")
        cadNew = cadNew.Replace("&#243;", "ó")
        cadNew = cadNew.Replace("&#209;", "Ñ")
        cadNew = cadNew.Replace("&#241;", "ñ")
        Return cadNew
    End Function
End Class
