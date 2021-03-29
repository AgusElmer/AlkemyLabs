<%@ Page Title="" Language="C#" MasterPageFile="~/Restricted/MasterPage.Master" AutoEventWireup="true" CodeBehind="Professors.aspx.cs" Inherits="AlkemyLabsStudents.Restricted.Professors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://kit.fontawesome.com/3000313e28.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="../Content/Site.css" rel="stylesheet" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:PlaceHolder ID="phAlert" runat="server" Visible="false">
                <div class="overlay" style="z-index: 2;">
                    <div class="overlayContainer">
                        <asp:Panel ID="pAlert" runat="server" CssClass="alert alertDanger card">
                            <asp:LinkButton ID="lnkbttCloseAlert" runat="server" CssClass="closeAlert" OnClick="lnkbttCloseAlert_Click">&times;</asp:LinkButton>
                            <asp:Label ID="lblAlert" runat="server">Alert</asp:Label>
                        </asp:Panel>
                    </div>
                </div>
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="phNewProfessor" runat="server" Visible="false">
                <div style="background-color:lightgray">
                    <div>
                        <div style="animation-name: none;">
                            <div >
                                <asp:LinkButton ID="lnkbttCloseModalNewProfessor" runat="server"  OnClick="lnkbttCloseModalNewProfessor_Click">&times;</asp:LinkButton>
                                <asp:Label ID="lblModalHeader" runat="server" Text="Create New Professor"></asp:Label>
                            </div>
                            <div >
                                <div >
                                    <div  style="width: 100px;">
                                        <asp:Label ID="lblNewProfessor" runat="server" Text="Professor Name"></asp:Label>
                                        <asp:TextBox ID="txtNewProfessor" runat="server" ></asp:TextBox>
                                    </div>
                                    <div  style="width: 200px;">
                                        <asp:Label ID="lblNewProfessorLastName" runat="server" Text="New Professor Last Name"></asp:Label>
                                        <asp:TextBox ID="txtNewProfessorLastName" runat="server" ></asp:TextBox>
                                    </div>
                                    <div  style="width: 100px;">
                                        <asp:Label ID="lblNewProfessorID" runat="server" Text="New ProfessorID"></asp:Label>
                                        <asp:TextBox ID="txtNewProfessorID" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="modalFooter" style="text-align: right;">
                                <asp:LinkButton ID="lnkbttCancel" runat="server" CssClass="button buttonDanger" Text="Cancel" OnClick="lnkbttCancel_Click"></asp:LinkButton>&nbsp;
                                        <asp:LinkButton ID="lnkbtttAcceptNewProfessor" runat="server" CssClass="button buttonSuccess" Text="Save" OnClick="lnkbtttAcceptNewProfessor_Click"></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:PlaceHolder>
            <asp:Panel ID="pProfessors" runat="server">
                <asp:Button ID="btnCreateProfessor" runat="server" Text="Create" OnClick="btnCreateProfessor_Click" />
                <asp:GridView ID="gvProfessors" runat="server" AutoGenerateColumns="false" DataKeyNames="ProfessorID" OnRowUpdating="gvProfessors_RowUpdating" OnRowDeleting="gvProfessors_RowDeleting" OnRowEditing="gvProfessors_RowEditing">
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:Label ID="lblProfessorName" runat="server" Text="Professor Name"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblitemProfessorName" runat="server" Text='<%# Bind("ProfessorName") %>'>
                                </asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="lblEditProfessorName" runat="server" Text='<%# Bind("ProfessorName") %>'></asp:Label>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:Label ID="lblProfessorLastName" runat="server" Text="Professor Last Name"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblitemProfessorLastName" runat="server" Text='<%# Bind("ProfessorLastName") %>'>
                                </asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="lblEditProfessorLastName" runat="server" Text='<%# Bind("ProfessorLastName") %>'></asp:Label>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:Label ID="lblProfessorID" runat="server" Text="Professor ID"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblitemProfessorID" runat="server" Text='<%# Bind("ProfessorID") %>'>
                                </asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Label ID="lblEditProfessorID" runat="server" Text='<%# Bind("ProfessorID") %>'></asp:Label>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderStyle-Width="50px" ItemStyle-Wrap="false">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkbttDelete" runat="server" CssClass="button-sm buttonDanger" ToolTip="Eliminar" CommandName="Delete">
<i class="fa fa-fw fa-trash-o"></i>
                                </asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="lnkbttEdit" runat="server" CssClass="button-sm buttonWarning" ToolTip="Editar" CommandName="Edit">
<i class="fa fa-fw fa-edit"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton ID="lnkbttCancel" runat="server" CssClass="button-sm buttonDanger" ToolTip="Cancelar" CommandName="Cancel">
<i class="fa fa-fw fa-close"></i>
                                </asp:LinkButton>
                                &nbsp;
                                <asp:LinkButton ID="lnkbttAccept" runat="server" CssClass="button-sm buttonSuccess" ToolTip="Aceptar" CommandName="Update">
<i class="fa fa-fw fa-check"></i>
                                </asp:LinkButton>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
