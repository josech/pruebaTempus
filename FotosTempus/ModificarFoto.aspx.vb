Public Partial Class ModificarFoto
    Inherits System.Web.UI.Page
    Dim datos As New DatosSQL
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegresar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnRegresar.Click
        Response.Redirect("BuscarUsuario.aspx")
    End Sub

    Protected Sub btnActualizar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnActualizar.Click
        Dim cod As String = Session("Codigo")
        Me.datos.SC_ActualizarFoto(txtNombreFoto.Text, cod)
    End Sub
End Class