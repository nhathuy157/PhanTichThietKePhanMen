<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusStopPage.aspx.cs" Inherits="Nhom3_QLDiemDung.Pages.BusStopPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Content/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 50px; font-size: 30px;" aria-orientation="horizontal">
            <p style="text-align: center; font-family: 'Times New Roman', Times, serif; font-style: normal; font-weight: bold;">
            THÔNG TIN ĐIỂM DỪNG
            </p>
        </div>
        
        <div style="height: 224px">
            <center>
                <%-- <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>
                                            <input id="selectAll" type="checkbox"><label for='selectAll'></label></th>
                                        <th>Edit</th>
                                        <th>Tên điểm dừng</th>
                                        <th>Mô tả</th>
                                        <th>Đường\Phố</th>
                                        <th>Xã\Phường</th>
                                        <th>Quận\Huyện</th>
                                        <th>Kinh độ</th>
                                        <th>Vĩ độ</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%foreach (var item in ls)
                                        { %>
                                    <tr>
                                        <td style="width: 40px; text-align: center">
                                            <input name='cbID' value='<%=item.BusStopID %>' type='checkbox' /></td>
                                        <td style="width: 50px">
                                            <a style="text-align: center" href="?idEdit=<%=item.BusStopID %>" class="btn btn-primary">Edit</a>
                                        </td>
                                        <td><%=item.BusStopName %></td>
                                        <td><%=item.BusStopDescription %></td>
                                        <td><%=item.Street %></td>
                                        <td><%=item.Wards %></td>
                                        <td><%=item.District %></td>
                                        <td><%=item.Longitude %></td>
                                        <td><%=item.Latitude %></td>
                                    </tr>
                                    <% } %>
                                </tbody>
                            </table>

                        </div>--%>
            </center>
        </div>
        <div aria-orientation="vertical" style="height: 254px; margin-left: 77px">

            <asp:Label ID="Label1" runat="server" Text="ID :" Width="150px"></asp:Label>
           
            <br />

            <asp:Label ID="Label2" runat="server" Text="Tên điểm dừng :" Width="150px"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" Width="259px"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Mô tả :" Width="150px"></asp:Label>
            <asp:TextBox ID="txtDescription" runat="server" Width="259px"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Longtitu :" Width="150px"></asp:Label>
            <asp:TextBox ID="txtLongtitu" runat="server" Width="259px"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Latitu :" Width="150px"></asp:Label>
            <asp:TextBox ID="txtLatitu" runat="server" Width="259px"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Đường :" Width="150px"></asp:Label>
            <asp:TextBox ID="txtStreet" runat="server" Width="259px"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Quận\ Huyện :" Width="150px"></asp:Label>
            <asp:TextBox ID="txtWards" runat="server" Width="259px"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Tỉnh\ Thành phố:" Width="150px"></asp:Label>
            <asp:TextBox ID="txtDistrict" runat="server" Width="259px"></asp:TextBox>

        </div>
        
    </form>
</body>
</html>
