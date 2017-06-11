using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ersteAspSeite
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (sender == TextBox1) TextBox1.Focus();
            if (sender == TextBox2) TextBox2.Focus();
            if (sender == TextBox3) TextBox3.Focus();
            if (sender == TextBox4) TextBox4.Focus();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            float tempkap, tempzins;
            int startyear, timeYear;
            float.TryParse(TextBox1.Text, out  tempkap);
            int.TryParse(TextBox2.Text, out startyear);
            int.TryParse(TextBox3.Text, out timeYear);
            float.TryParse(TextBox4.Text, out  tempzins);
            Calc(tempkap, timeYear, tempzins);
        }
        private void Calc(float kap,int timeYear,float zins)
        {
            double temp;
            double value;
            temp = 1 + (zins / 100);
            temp = Math.Pow(temp, timeYear);
            value = kap * temp;
            value = Math.Round(value, 2);
            lbl1.Text = Convert.ToString(value)+" €";
        }

        protected void TextBox_TextChanged(object sender, EventArgs e)
        {
            float tempkap, tempzins;
            int startyear, timeYear;
            float.TryParse(TextBox1.Text, out tempkap);
            int.TryParse(TextBox2.Text, out startyear);
            int.TryParse(TextBox3.Text, out timeYear);
            float.TryParse(TextBox4.Text, out tempzins);
            Calc(tempkap, timeYear, tempzins);
        }
    }
}