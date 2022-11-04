using BusinessLayer;
using BusinessLayer.DBAccess;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom3_QLDiemDung.Pages
{
    public partial class Maps : System.Web.UI.Page
    {
        public class BusStopModel
        {
            public int BusStopID { get; set; }
            public string BusStopName { get; set; }
            public string BusStopDescription { get; set; }
            public double Latitude { get; set; }
            public double Longitude { get; set; }
            public string Street { get; set; }
            public string Wards { get; set; }
            public string District { get; set; }
            public BusStopModel(BusStop bus)
            {
                BusStopID = bus.BusStopID;
                BusStopName = bus.BusStopName;
                BusStopDescription = bus.BusStopDescription;
                Latitude = bus.Latitude;
                Longitude = bus.Longitude;
                Street = bus.Street;
                Wards = bus.Wards;
                District = bus.District;
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            List<BusStopModel> busStopModels = new List<BusStopModel>();
            List<BusStop> bs = HRFunctions.Instance.SelectAllBusStop();
            foreach(var item in bs)
            {
                busStopModels.Add(new BusStopModel(item));

            }
            Map.Value = JsonConvert.SerializeObject(busStopModels);

        }
        protected void btTim_Click(object sender, EventArgs e)
        {
            //this.pnControls.Visible = false;
            //this.pnTable.Visible = true;
            //this.pnPhanTrang.Visible = true;
            //this.Label1.Text = "";

            //this.hPageIndex.Value = "0";
            //this.LoadTimKiem(0);
            //this.LoadPhanTrang();

        }
       
    }
}