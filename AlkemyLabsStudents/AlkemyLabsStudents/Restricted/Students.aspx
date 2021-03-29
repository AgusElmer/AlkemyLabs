<%@ Page Title="" Language="C#" MasterPageFile="~/Restricted/MasterPage.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="AlkemyLabsStudents.Restricted.Students" %>

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
            <asp:PlaceHolder ID="phStudents" runat="server" Visible="false" >
                <div style="background-color:lightgray">
                    <div>
                        <div  style="animation-name: none;">
                            <div>
                                <asp:LinkButton ID="lnkbttCloseModalStudent" runat="server"  OnClick="lnkbttCloseModalStudent_Click">&times;</asp:LinkButton>
                                <asp:Label ID="lblModalHeader" runat="server" Text="Create New Student"></asp:Label>
                            </div>
                            <div >
                                <div >
                                    <div " style="width: 100px;">
                                        <asp:Label ID="lblNewFileNumber" runat="server" Text="File Number"></asp:Label>
                                        <asp:TextBox ID="txtNewFileNumber" runat="server" ></asp:TextBox>
                                    </div>
                                    <div  style="width: 200px;">
                                        <asp:Label ID="lblNewStudent" runat="server" Text="New Student"></asp:Label>
                                        <asp:TextBox ID="txtNewStudent" runat="server" ></asp:TextBox>
                                    </div>
                                    <div style="width: 100px;">
                                        <asp:Label ID="lblNewStudentLastName" runat="server" Text="New Student Last Name"></asp:Label>
                                        <asp:TextBox ID="txtNewStudentLastName" runat="server" ></asp:TextBox>
                                    </div>
                                    <div  style="width: 100px;">
                                        <asp:Label ID="lblNewStudentID" runat="server" Text="New Student ID"></asp:Label>
                                        <asp:TextBox ID="txtNewStudentID" runat="server" ></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="modalFooter" style="text-align: right;">
                                <asp:LinkButton ID="lnkbttCancel" runat="server" CssClass="button buttonDanger" Text="Cancel" OnClick="lnkbttCancel_Click"></asp:LinkButton>&nbsp;
                                <asp:LinkButton ID="lnkbtttAcceptNewStudent" runat="server" CssClass="button buttonSuccess" Text="Save" OnClick="lnkbtttAcceptNewStudent_Click"></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:PlaceHolder>
            <asp:Panel ID="pStudents" runat="server">
                <asp:Button ID="btnCreateStudents" runat="server" Text="Create" OnClick="btnCreateStudents_Click"/>
                <asp:GridView ID="gvStudents" runat="server" AutoGenerateColumns="false" DataKeyNames="FileNumber" OnRowUpdating="gvStudents_RowUpdating" OnRowEditing="gvStudents_RowEditing" OnRowDataBound="gvStudents_RowDataBound" OnRowDeleting="gvStudents_RowDeleting">
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:Label ID="lblfileNumber" runat="server" Text="File Number"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblitemFileNumber" runat="server" Text='<%# Bind("FileNumber") %>'>
                                </asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>

                                <asp:TextBox ID="txtEditFileNumber" runat="server" Text='<%# Bind("FileNumber") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:Label ID="lblStudentName" runat="server" Text="Student Name"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblitemStudentName" runat="server" Text='<%# Bind("StudentName") %>'>
                                </asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>

                                <asp:TextBox ID="txtEditStudentName" runat="server" Text='<%# Bind("StudentName") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblLastName" runat="server" Text='<%# Bind("LastName") %>'>
                                </asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>

                                <asp:TextBox ID="txtEditLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:Label ID="lblID" runat="server" Text="Student ID"></asp:Label>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblitemID" runat="server" Text='<%# Bind("Id") %>'>
                                </asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>

                                <asp:TextBox ID="txtEditID" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
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
