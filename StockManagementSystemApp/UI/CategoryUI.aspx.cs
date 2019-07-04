using StockManagementSystemApp.BLL;
using StockManagementSystemApp.MODEL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockManagementSystemApp.UI
{
    public partial class CategoryUI : System.Web.UI.Page
    {
        CategoryManger categoryManger = new CategoryManger();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("UserLoginUI.aspx");
            }

            if (!Page.IsPostBack)
            {         
              LoadCategory();
            }
        }
        public void LoadCategory()
        {
            GridViewCategory.DataSource = categoryManger.GetAllCategory();
            GridViewCategory.DataBind();
        }

        protected void saveButtonClick(object sender, EventArgs e)
        {
            if (ValidateFrom())
            {
                Category categoryObj = new Category();
                categoryObj.CategoryName = TextBoxName.Text;

                string message = categoryManger.SaveCategory(categoryObj);
                LabelMessage.Visible = true;
                LabelMessage.Text = message;
                LoadCategory();
            }
            
        }

        private bool ValidateFrom()
        {
            bool ret = true;
            if(string.IsNullOrEmpty(TextBoxName.Text)){
                ret = false;
                LabelMessageError.Text = "Category Name is required";
                LabelMessageError.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                LabelMessageError.Text = "";
            }
            return ret;
            
        }
      
        protected void LinkButtonUpdate_Click(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            DataControlFieldCell cell = (DataControlFieldCell)linkButton.Parent;
            GridViewRow row = (GridViewRow)cell.Parent;
            HiddenField idHiddenField = (HiddenField)row.FindControl("idHiddenField");
            int id = Convert.ToInt32(idHiddenField.Value);
            Response.Redirect("UpdateUI.aspx?Id="+id);
                                         
        }
        protected void LogoutClick(object sender, EventArgs e)
        {
            Session.Remove("Username");
            Response.Redirect("UserLoginUI.aspx");
        }
    }
}