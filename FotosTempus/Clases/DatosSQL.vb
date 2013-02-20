Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.ApplicationBlocks.Data
Imports System.Configuration

Public Class DatosSQL
    Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("TEMPUSConnectionString").ConnectionString)

    Public Function SC_ListarInstituciones(ByVal nombre As String, ByVal abreviatura As String) As DataSet

        Return SqlHelper.ExecuteDataset(con, "S_ImagenesListarInstitucionPorNombreAbrev", nombre, abreviatura)
    End Function
    Public Function SC_ListarPersonas(ByVal paterno As String, ByVal materno As String) As DataSet
        Return SqlHelper.ExecuteDataset(con, "EDP_ListarPersonas", paterno, materno)
    End Function
    Public Function SC_ActualizarFoto(ByVal nombre As String, ByVal codigo As String) As DataSet
        Return SqlHelper.ExecuteDataset(con, "EDP_ActualizarFoto", nombre, codigo)
    End Function
End Class
