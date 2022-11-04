using BusinessLayer;
using BusinessLayer.DBAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom3_QLDiemDung.Pages
{
    public partial class BusStopPage : System.Web.UI.Page
    {
        public List<BusStop> ls = new List<BusStop>();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            // LoadListView();
            // if(!IsPostBack)
            //     LoadDropDownList();
            if (!Page.IsPostBack)
            {
                this.LoadBusTop();
            }

        }
        private void LoadBusTop()
        {
           // ls = HRFunctions.Instance.SelectAllBusStop();
        }
        /*
        private void LoadListView()
        {
            this.GridView1.DataSource = HRFunctions.Instance.SelectAllBusStop();
            this.GridView1.DataBind();
        }
        private bool Xet()
        {
            if (txtName.Text == "") return false;
            else if (txtLatitu.Text == "") return false;
            else if (txtLongtitu.Text == "") return false;
            else if (txtStreet.Text == "") return false;
            else if (txtWards.Text == "") return false;
            else if (txtDistrict.Text == "") return false;
            else return true;
        }
        protected void Reload()
        {
            this.txtDescription.Text = "";
            this.txtDistrict.Text = "";
            this.txtLatitu.Text = "";
            this.txtLongtitu.Text = "";
            this.txtName.Text = "";
            this.txtWards.Text = "";
            this.txtStreet.Text = "";
            
        }

        protected void LoadDropDownList()
        {
            
            this.drdwList.DataSource = HRFunctions.Instance.SelectAllBusStop();
            this.drdwList.DataTextField = "BusStopID";
            this.drdwList.DataValueField = "BusStopID";
            this.drdwList.DataBind();
            this.drdwList.Items.Insert(0, "-----ID-----");
        }


        protected void BtnAdd_Click(object sender, EventArgs e)
        {
           
            if (Xet())
            {
                BusStop bs = new BusStop();
                bs.BusStopName = txtName.Text;
                bs.BusStopDescription = txtDescription.Text;
                bs.Longitude = double.Parse(txtLongtitu.Text);
                bs.Latitude = double.Parse(txtLatitu.Text);
                bs.Wards = txtWards.Text;
                bs.Street = txtStreet.Text;
                bs.District = txtDistrict.Text;

                HRFunctions.Instance.InsertBusStop(bs);

                LoadListView();
                LoadDropDownList();
                Reload();
            }
            else
            {
                
                
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            int busStopID = 0;
            bool check = int.TryParse(this.drdwList.Text, out busStopID);
            if (check == false) return;
            BusStop bs = HRFunctions.Instance.FindBusStopByID(busStopID);


            bs.BusStopName = txtName.Text;
            bs.BusStopDescription = txtDescription.Text;
            bs.Longitude = double.Parse(txtLongtitu.Text);
            bs.Latitude = double.Parse(txtLatitu.Text);
            bs.Wards = txtWards.Text;
            bs.Street = txtStreet.Text;
            bs.District = txtDistrict.Text;

            HRFunctions.Instance.InsertBusStop(bs);

            LoadListView();
            LoadDropDownList();
            Reload();
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            HRFunctions.Instance.DeleteBusStopByID(int.Parse(this.drdwList.Text));
            LoadListView();
            LoadDropDownList();
            Reload();
        }

        protected void drdwList_SelectedIndexChanged(object sender, EventArgs e)
        {
            int busStopID = 0;
            bool check = int.TryParse(this.drdwList.Text, out busStopID);
            if (check == false) return;
            BusStop bs = HRFunctions.Instance.FindBusStopByID(busStopID);

            this.txtDescription.Text = bs.BusStopDescription;
            this.txtDistrict.Text = bs.District;
            this.txtLatitu.Text = bs.Latitude.ToString();
            this.txtLongtitu.Text = bs.Longitude.ToString();
            this.txtName.Text = bs.BusStopName;
            this.txtStreet.Text = bs.Street.ToString();
            this.txtWards.Text = bs.Wards;

           
        }
        */
    }
}