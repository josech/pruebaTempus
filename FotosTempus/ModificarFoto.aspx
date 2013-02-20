<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ModificarFoto.aspx.vb" Inherits="FotosTempus.ModificarFoto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <label>Nombre Foto: </label>
        <asp:TextBox ID="txtNombreFoto" runat="server" Width="250"></asp:TextBox>
        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" />
        <asp:Button ID="btnRegresar" runat="server" Text="Regresar" />    
    </div>
    </form>
</body>
</html>
