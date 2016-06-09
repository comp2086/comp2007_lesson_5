using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Required for EF DB access
using comp2007_lesson5.Models;
using System.Web.ModelBinding;

namespace comp2007_lesson5
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // If loading the page for the first time, populate the grid from EF DB
            if (!IsPostBack)
            {
                // Get data
                getStudents();
            }
        }

        protected void getStudents()
        {
            // Connect to the EF database
            using (DefaultConnection db = new DefaultConnection())
            {
                // query the Students table using EF and LINQ
                var Students = (from allStudents in db.Students
                                select allStudents);

                // bind the data
                grdStudents.DataSource = Students.ToList();
                grdStudents.DataBind();
            }
        }
    }
}