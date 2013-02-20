<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BuscarUsuario.aspx.vb" Inherits="FotosTempus.BuscarUsuario" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<meta http-equiv="Content-type" content="text/html;charset=UTF-8" />
<title>Busqueda</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/ChromeBlackGridView.css" rel="stylesheet" type="text/css" /> 
</head>
<body>
<!-- start header -->
<div id="header">
	<div id="logo"></div>
</div>
<!-- end header -->
<!-- start menu -->
<form id="form2" runat="server" defaultbutton="btnBuscar">
<div id="menu">
  <div id="menu-1">
	<ul>
		
	</ul>  
  </div>
</div>
<!-- end menu -->
<!-- start page -->
<div>
<div id="page">
<div id="page-top">
  <div id="page-right">
    <div id="page-bot">
      <div id="page-left">
        <div id="page-top-left">
          <div id="page-top-right">
            <div id="page-bot-right">
              <div id="page-bot-left">
                <div id="page-block">
                <!-- INICIO BLOQUE 2 COLUMNAS -->
                <div id="body-left">
                  <div id="body-right">
                    <div id="body-left-top">
                      <div id="body-right-top">
                        <div id="body-right-bot">
                          <div id="body-left-bot">
                            <div id="body-block">
                            	<!-- start content -->
                              <div id="content">
                                <div id="content-1">
                                  <h1>LISTA DE PERSONAS</h1>                                  
                                  <div id="buscador-firmas" style="padding-top:10px; padding-bottom:10px;">
                                    <!-- formulario buscador de firmas -->                                    
                                    <label for="firmas-nombre">Paterno</label>
                                    <asp:TextBox ID="txtPaterno" runat="server" Width="200"></asp:TextBox>                                        
                                    <label for="firmas-abreviatura">Materno</label>
                                    <asp:TextBox ID="txtMaterno" runat="server"></asp:TextBox>
                                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />                                     
                                    <!-- fin formulario buscador de firmas -->
                                  </div>
                                  <center>
                                  <div id="grilla">
                                    <asp:GridView ID="gdv_Listar" runat="server" PageSize="10" AllowPaging="true"
                                    CssClass="GridViewStyle" EmptyDataText="" Width="95%">
                                    <Columns>
                                              <asp:CommandField ButtonType="Image" SelectImageUrl="images/bgs/ico-info.gif"
                                                  ShowSelectButton="True" HeaderText="Evaluar" />
                                    </Columns> 
                                    <FooterStyle CssClass="FooterStyle" /> 
                                    <RowStyle CssClass="RowStyle" /> 
                                    <EmptyDataRowStyle CssClass="EmptyRowStyle" /> 
                                    <PagerStyle CssClass="PagerStyle" Wrap="False" /> 
                                    <SelectedRowStyle CssClass="SelectedRowStyle" /> 
                                    <HeaderStyle CssClass="HeaderStyle" /> 
                                    <EditRowStyle CssClass="EditRowStyle" Font-Bold="False" VerticalAlign="Top" /> 
                                    <AlternatingRowStyle CssClass="AltRowStyle" />                                   
                                </asp:GridView>
                                  </div>
                                  </center>
                                </div>
                              </div>
                              	<!-- end content -->
								<!-- start sidebar --><!-- end sidebar -->
								<div style="clear: both;">&nbsp;</div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
				<!-- FIN BLOQUE 2 COLUMNAS -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div style="clear: both;">&nbsp;</div>
</div>
</div>
</form>
<!-- end page -->
<div id="footer">
	<p>© 2012 Todos los derechos reservados. • Editora Perú • Gerencia de Informática.
    </p>
</div>    
</body>
</html>