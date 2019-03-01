<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AWar2747ex1a1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="padding:12px">
        <h1>awar2747ex1a1</h1>
        <p >Exercise 1A: Web Form Database App</p>
        <p></p>
    </div>

    <div class="row">
        <div class="col-md-8">
            <h2>Regions/Countries</h2>
             <div class="form-group">
                    <label for="RegionsDropDownList">Regions:</label>
                    <asp:DropDownList ID="RegionsDropDownList" runat="server" DataSourceID="RegionsSqlDataSource" DataTextField="Region" DataValueField="Region" CssClass="form-control"></asp:DropDownList>            
               </div>  
                <div class="form-group">
                    <label for="" >Countries</label>
                    <asp:DropDownList ID="CountriesDropDownList" runat="server" DataSourceID="CountiesSqlDataSource" DataTextField="CountryName" DataValueField="CountryID" CssClass="form-control"></asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="StatesDropDownList">State:</label>
                    <asp:GridView ID="StatesGridView"  runat="server" DataSourceID="StatesSqlDataSource" AutoGenerateColumns="False" CssClass="table table-striped table-boardered" DataKeyNames="StateProvinceID">
                        <Columns>
                            <asp:BoundField DataField="SalesTerritory" HeaderText="SalesTerritory" SortExpression="SalesTerritory" />
                            <asp:BoundField DataField="StateProvinceID" HeaderText="StateProvinceID" ReadOnly="True" SortExpression="StateProvinceID" />
                            <asp:BoundField DataField="StateProvinceCode" HeaderText="StateProvinceCode" SortExpression="StateProvinceCode" />
                            <asp:BoundField DataField="StateProvinceName" HeaderText="StateProvinceName" SortExpression="StateProvinceName" />
                            <asp:BoundField DataField="CountryID" HeaderText="CountryID" SortExpression="CountryID" />
                        </Columns>
                    </asp:GridView>
                    <%-- the first 5 columns of data from states, StateProviceID, Code, Name, countryID, Sales Territory --%>
                </div>
        </div>
        <div class="col-md-4">
            <h2>Exercise 1A Features:</h2>
            <ul>
                <li>
                    ASP .Net WebForms
                </li>
                <li>
                    Bound controls
                </li>
                <li>
                    "World Wide Importers" Sample Database
                </li>
            </ul>
            
        </div>

    </div>

    <asp:SqlDataSource ID="CountiesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WideWorldConnectionString %>" SelectCommand="SELECT CountryID, CountryName, Region FROM Application.Countries WHERE (Region = N'Europe') ORDER BY CountryName"></asp:SqlDataSource>
    <asp:SqlDataSource ID="RegionsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WideWorldConnectionString %>" SelectCommand="SELECT DISTINCT Region FROM Application.Countries ORDER BY Region"></asp:SqlDataSource>
    <asp:SqlDataSource ID="StatesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WideWorldConnectionString %>" SelectCommand="SELECT StateProvinceID, StateProvinceCode, StateProvinceName, CountryID, SalesTerritory FROM Application.StateProvinces WHERE (CountryID = 230) ORDER BY SalesTerritory, StateProvinceName"></asp:SqlDataSource>


</asp:Content>
