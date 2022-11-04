using BusinessLayer.DBAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class HRFunctions : BaseFunctions
    {
        private static HRFunctions instance = null;
        public static HRFunctions Instance 
        { 
            get 
            { 
                if(instance == null)
                    instance = new HRFunctions();
                return instance; 
            } 
        }
        public List<BusStop> SearchByName(string nameValue)
        {
            
            return BusStopExt.Instance.BusStop_Select_By("Name", nameValue);
        }

        public List<BusStop> SelectAllBusStop()
        {  
            return BusStopExt.Instance.BusStop_Select_All();
        }

        public int InsertBusStop(BusStop bs)
        {
            return BusStopExt.Instance.BusStop_InsertUpdate(bs);
        }

        public BusStop FindBusStopByID(int id)
        {
            return BusStopExt.Instance.BusStop_Select_ID(id);
        }
        public void DeleteBusStopByID(int id)
        {
            BusStopExt.Instance.BusStop_Delete(id);
        }
        public void DeleteBusStopByIDs(List<String> IDs)
        {
            BusStopExt.Instance.BusStop_Delete_IDs(IDs);

        }
        public List<BusStop> Bus_Stop_Pagination(int PageSize, int PageIndex, out int TotalRows)
        {
            return BusStopExt.Instance.BusStop_Find_KeyWord("", PageSize, PageIndex, out TotalRows);
        }
    }
    
}
