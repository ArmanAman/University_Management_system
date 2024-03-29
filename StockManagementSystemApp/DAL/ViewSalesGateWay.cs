﻿using StockManagementSystemApp.MODEL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace StockManagementSystemApp.DAL
{
    public class ViewSalesGateWay:BaseGateway
    {
      

        public List<ViewSell> SearchByDate(string fromdate, string todate)
        {

            SetConnection();
            string query ="SELECT Company.CompanyName,Item.ItemName,Quantity=SUM(StockOut.Quantity) FROM  StockOut " +
                          "INNER JOIN Item ON StockOut.ItemId =Item.ItemID " +
                          "INNER JOIN Company ON Item.CompanyID = Company.CompanyID " +
                          "AND ItemType='sell' AND Date between '" + fromdate + "' AND '" + todate + "' " +
                          "GROUP BY  Company.CompanyName,Item.ItemName ";
          
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();

            List<ViewSell> AllCompanyItem = new List<ViewSell>();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                string CompanyName = reader["CompanyName"].ToString();
                string ItemName = reader["ItemName"].ToString();
                string SellQuantity = reader["Quantity"].ToString();

                ViewSell aviewSell = new ViewSell();
                aviewSell.CompanyName = CompanyName;
                aviewSell.ItemName = ItemName;
                aviewSell.SaleQuantity = SellQuantity;
                AllCompanyItem.Add(aviewSell);

                
            }
            reader.Close();
            connection.Close();

            return AllCompanyItem;

        }
    }
}