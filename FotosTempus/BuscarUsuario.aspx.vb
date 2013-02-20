Public Partial Class BuscarUsuario
    Inherits System.Web.UI.Page
    Dim datos As New DatosSQL
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not (txtPaterno.Text.Equals("") And txtMaterno.Text.Equals("")) Then
            ListarGrilla(txtPaterno.Text, txtMaterno.Text)
        End If
    End Sub

    Protected Sub btnBuscar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnBuscar.Click
        Me.ListarGrilla(txtPaterno.Text, txtMaterno.Text)
    End Sub

    Private Sub ListarGrilla(ByVal paterno As String, ByVal materno As String)
        Dim dt As DataSet = Me.datos.SC_ListarPersonas(paterno, materno)
        Me.gdv_Listar.DataSource = dt
        Me.gdv_Listar.DataBind()
        Session("datos") = dt
        Dim n As Integer = Me.gdv_Listar.Columns.Count
        Me.gdv_Listar.HeaderStyle.Width = 100
        Console.Write("columnas " & n)
    End Sub

    Protected Sub gdv_Listar_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles gdv_Listar.SelectedIndexChanged
        Dim row As GridViewRow = gdv_Listar.SelectedRow
        Dim codigo = row.Cells(1).Text.ToString()
        'Dim codigo = row.Cells(2).Text.ToString()

        'Dim ar As Array = Me.gdv_Listar.DataKeyNames
        'Dim cad As String = ar.GetValue(1)

        'For index As Integer = 1 To ar.Length
        'cad = cad + ar.GetValue(index)
        'Next
        Session("Codigo") = codigo 'gdv_Listar.Rows.Item(gdv_Listar.SelectedIndex)
        Response.Redirect("ModificarFoto.aspx")
    End Sub

    Protected Sub gdv_Listar_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles gdv_Listar.PageIndexChanging
        Dim grilla As GridView = CType(sender, GridView)
        With grilla
            .PageIndex = e.NewPageIndex()
        End With
        Me.gdv_Listar.DataBind()
    End Sub
End Class