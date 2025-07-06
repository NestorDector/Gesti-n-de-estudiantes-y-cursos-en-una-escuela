using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace sistema_gestion_escolar
{
    public partial class frm_carga : Form
    {
        public frm_carga()
        {
            InitializeComponent();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            panel2.Width += 6;
            if (panel2.Width >= 689)
            {
                timer1.Stop();
                frm_login loginfrm = new frm_login();
                loginfrm.Show();
                this.Hide();
            }
        }
    }
}
