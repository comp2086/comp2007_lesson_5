<%@ Page Title="Students" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="comp2007_lesson5.Students" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="container">
            <div class="col-md-8 col-md-offset-2">
                <h1>Students List</h1>
                <a href="StudentDetails.aspx" class="btn btn-sm btn-success"><i class="fa fa-plus"></i> Add Student</a>
                <p></p>
                <asp:GridView CssClass="table table-striped table-bordered table-hover" ID="grdStudents" AutoGenerateColumns="false" runat="server">
                    <Columns>
                        <asp:BoundField DataField="StudentID" HeaderText="Student ID" Visible="true" />
                        <asp:BoundField DataField="LastName" HeaderText="Last Name" Visible="true" />
                        <asp:BoundField DataField="FirstMidName" HeaderText="First Name" Visible="true" />
                        <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" DataFormatString="{0:MMM dd, yyyy}" Visible="true" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
