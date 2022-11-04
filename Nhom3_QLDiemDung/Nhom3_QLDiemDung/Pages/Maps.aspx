<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maps.aspx.cs" Inherits="Nhom3_QLDiemDung.Pages.Maps" MasterPageFile="~/Site.Master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HiddenField ID="Map" runat="server" ClientIDMode="Static" Value=""/>

    <div style="background-color: #F4F9F6; min-height: 100vh; box-shadow: 0px 6px 15px rgba(0,0,0,0.15); border-radius: 15px">
        <h2 style="text-align: center; color: #8D7F7F; font-weight: bold; padding-top: 20px" class="mt-3">ĐƯỜNG ĐI
        </h2>
         <asp:Panel ID="Panel1" runat="server" CssClass="p-3 ">

        <div style="background: #ffffff; box-shadow: 0px 6px 15px rgba(0,0,0,0.15); border-radius: 15px; margin: 0 10px">
            <div class="form-row" style="display: flex; align-items: center; justify-content: center;">
            <div  class="form-group mt-2 ml-3"   style="width:500px;  " >
                <div class="form-floating mb-2" >
                    <input type="text" class="form-control" id="txtStart_Point" placeholder="Điểm bắt đầu" runat="server">
                </div>
                <div class="form-floating ">
                    <input type="text" class="form-control" id="txtEnd_Point" placeholder="Điểm đến" runat="server">
                </div>
                 
            </div>
                <asp:Button style="width:100px; height:40px; " ID="btTim" runat="server" CssClass="btn btn-primary ml-3" Text="Tìm" OnClick="btTim_Click" BackColor="#29CB7E" BorderColor="#29CB7E" />
                </div>
               
        </div>
             </asp:Panel>
        <asp:Panel ID="pnMap" runat="server" CssClass="p-3 ">
            <div id="map" style="height: 500px; box-shadow: 0px 6px 15px rgba(0,0,0,0.15); border-radius: 15px;"></div>
        </asp:Panel>


    </div>


    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALdDivjYtOHE2M63dHeuXKnYARJdSllSE&callback=initMap" defer></script>


    <script>  
        const center = { lat: 10.771119394974335, lng: 106.70050611220746 };
        let zoom = 15;
        var map;
        let marker = [];
        let busStop = [];
        let dataBusStop; 
        
        function initMap() {
            map = new google.maps.Map(document.getElementById("map"), {
                zoom: zoom,
                center: center,
            });
           
           
            
            getData();
            /*google.maps.event.addDomListener(window, 'load', initMap);  */
        }

        function renderMarker(busStop) {
            busStop.forEach(item => {
                let lnt = { lat: item.Latitude, lng: item.Longitude };
                console.log(lnt);
                let itemMarker = new google.maps.Marker({
                    position: lnt,
                    map: map

                });

                itemMarker.setMap(map);
                marker.push(itemMarker);
            });
           
            
        }
        function getData() {
            dataBusStop = $("input#Map").val();
            if (dataBusStop != "") {
                /*console.log(dataBusStop);*/
                let data = JSON.parse(dataBusStop);
                renderMarker(data);
            }

        }
        window.initMap = initMap;

    </script>
        <%--<script
        src="https://maps.googleapis.com/maps/api/js?key=&callback=initMap"
        defer></script>--%>





</asp:Content>


