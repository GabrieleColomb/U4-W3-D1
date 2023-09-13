<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="U4_W3_D1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/Site.css" rel="stylesheet" />
    <title>Preventivo Auto</title>
</head>
<body>
    <form id="form1" runat="server" class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="custom-container">
                    <div class="card">
                        <div class="card-header">
                            <h1 class="display-4">Preventivo Auto</h1>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="ddlModel" class="form-label">Scegli la tua macchina:</label>
                                <asp:DropDownList ID="ddlModello" runat="server" CssClass="form-select" AutoPostBack="True" OnSelectedIndexChanged="ddlModello_SelectedIndexChanged">
                                    <asp:ListItem Text="Alfa Romeo Stelvio" Value="10000" />
                                    <asp:ListItem Text="Aston Martin DBS Superleggera" Value="12000" />
                                    <asp:ListItem Text="Jaguar F-Type S Coupe" Value="11000" />
                                    <asp:ListItem Text="Ford Mustang GT" Value="13000" />
                                    <asp:ListItem Text="Porsche Panamera Sport Turismo" Value="14000" />
                                    <asp:ListItem Text="Lamborghini Urus" Value="10500" />
                                    <asp:ListItem Text="Ferrari " Value="20000" />
                                </asp:DropDownList>
                            </div>
                            <div class="car-images">
                                <asp:Image ID="imgAlfaRomeo" runat="server" CssClass="img-fluid car-image mx-auto" ImageUrl="~/Content/imgs/AlfaRomeo.png" AlternateText="Alfa Romeo Stelvio" Visible="false" />
                                <asp:Image ID="imgAstonMartin" runat="server" CssClass="img-fluid car-image mx-auto" ImageUrl="~/Content/imgs/AstonMartin.png" AlternateText="Aston Martin DBS Superleggera" Visible="false" />
                                <asp:Image ID="imgJaguar" runat="server" CssClass="img-fluid car-image mx-auto" ImageUrl="~/Content/imgs/Jaguar.png" AlternateText="Jaguar F-Type S Coupe" Visible="false" />
                                <asp:Image ID="imgFordMustang" runat="server" CssClass="img-fluid car-image mx-auto" ImageUrl="~/Content/imgs/Mustang.png" AlternateText="Ford Mustang GT" Visible="false" />
                                <asp:Image ID="imgPorsche" runat="server" CssClass="img-fluid car-image mx-auto" ImageUrl="~/Content/imgs/Porsche.png" AlternateText="Porsche Panamera Sport Turismo" Visible="false" />
                                <asp:Image ID="imgLamborghini" runat="server" CssClass="img-fluid car-image mx-auto" ImageUrl="~/Content/imgs/Lamborghini.png" AlternateText="Lamborghini Urus" Visible="false" />
                                <asp:Image ID="imgFerrari" runat="server" CssClass="img-fluid car-image mx-auto" ImageUrl="~/Content/imgs/Ferrari.png" AlternateText="Ferrari Purosangue" Visible="false" />
                            </div>
                                <div class="form-group">
                                <label>Optional:</label>
                                <asp:CheckBoxList ID="cblOptional" runat="server" CssClass="form-check">
                                    <asp:ListItem Text="Vernice metallizzata (€330,00)" Value="330" />
                                    <asp:ListItem Text="Fari Xeno (€180,00)" Value="180" />
                                    <asp:ListItem Text="Sistema navigazione satellitare (€1.800,00)" Value="1800" />
                                    <asp:ListItem Text="Line Assistant (€2.000,00)" Value="2000" />
                                    <asp:ListItem Text="Ruota di scorta (€155,00)" Value="155" />
                                    <asp:ListItem Text="Sedili/volante in pelle (€700,00)" Value="700" />
                                    <asp:ListItem Text="Tetto panoramico (€900,00)" Value="900" />
                                </asp:CheckBoxList>
                            </div>
                            <div class="form-group">
                                <label for="ddlGaranzia" class="form-label">Garanzia (anni):</label>
                                <asp:DropDownList ID="ddlGaranzia" runat="server" CssClass="form-select">
                                    <asp:ListItem Text="1 anno" Value="1" />
                                    <asp:ListItem Text="2 anni" Value="2" />
                                    <asp:ListItem Text="3 anni" Value="3" />
                                    <asp:ListItem Text="4 anni" Value="4" />
                                </asp:DropDownList>
                            </div>
                            <asp:Button ID="btnCalcola" runat="server" Text="Calcolo Preventivo" CssClass="btn btn-calcola" OnClick="btnCalcola_Click" />
                            <div class="mt-4 text-center">
                                <div class="alert alert-success d-flex flex-column align-items-center">
                                    <asp:Label ID="lblRisultati" runat="server" CssClass="mb-2"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
