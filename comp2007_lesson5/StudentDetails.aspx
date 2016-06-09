<%@ Page Title="Student Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="comp2007_lesson5.StudentDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <h1>Student Details</h1>
                <h5>All Fields are Required</h5>
                <br />
                <div class="form-group">
                    <label class="control-label" for="txtFirstName">Last Name: </label>
                    <asp:TextBox CssClass="form-control" ID="txtFirstName" runat="server"
                        placeholder="First Name" required="true" MaxLength="50"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="form-group-input">First Name: </label>
                    <asp:TextBox CssClass="form-control" ID="txtLastName" runat="server"
                        placeholder="Last Name" required="true" MaxLength="50"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="txtEnrollmentDate">Enrollment Date: </label>
                    <asp:TextBox CssClass="form-control" ID="txtEnrollmentDate" runat="server"
                        placeholder="Enrollment Date" required="true" TextMode="Date"></asp:TextBox>
                </div>
                <div class="text-right">
                    <asp:Button ID="btnCancel" CssClass="btn btn-lg btn-warning" runat="server" 
                        Text="Cancel" UseSubmitBehavior="False" CausesValidation="False" OnClick="btnCancel_Click" />
                    <asp:Button ID="btnSubmit" CssClass="btn btn-lg btn-primary" runat="server" Text="Save" OnClick="btnSubmit_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
