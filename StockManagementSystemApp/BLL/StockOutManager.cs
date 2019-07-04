using StockManagementSystemApp.DAL;
using StockManagementSystemApp.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystemApp.BLL
{
    public class StockOutManager
    {
        StockOutGateWay stockOutgateway = new StockOutGateWay();
       
        public void SaveStockOutItem(StockOut stockOutItem)
        {
            bool existSellcheck = stockOutgateway.IsExistsStockOutItem(stockOutItem);
            if (existSellcheck == false)
            {
                stockOutgateway.SaveStockOutItem(stockOutItem);
            }
            else
            {
                stockOutgateway.UpdateStockOutItem(stockOutItem);
            }

        }
    }
}