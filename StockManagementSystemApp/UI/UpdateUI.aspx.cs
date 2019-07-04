using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementSystemApp.BLL;
using StockManagementSystemApp.MODEL;

namespace StockManagementSystemApp.UI
{
    public partial class UpdateUI : System.Web.UI.Page
    {
        CategoryManger categoryManger = new CategoryManger();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {

            Category category = new Category();
            string categoryName = TextBoxCategoryName.Text;
            category.CategoryID = Convert.ToInt32(Request.QueryString["Id"]);
            category.CategoryName = categoryName;
            if (categoryName == "")
            {
                messagelevel.Text = "Please Enter a Category";
            }
            else
            {
                bool message = categoryManger.UpdateCategoryById(category);

                if (message == true)
                {
                    Response.Redirect("CategoryUI.aspx");
                }
                else
                {
                    messagelevel.Text = "Category Allredy Exists";
                }


            }
        }
       
        
    }
}