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
    public partial class frm_login : Form
    {
        public frm_login()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btn_iniciasesion_Click(object sender, EventArgs e)
        {
            frm_dashboard dashboard = new frm_dashboard();
            dashboard.Show();
            this.Hide();
        }

        private void chk_mostrarcontra_CheckedChanged(object sender, EventArgs e)
        {
            txt_contrasena.PasswordChar = chk_mostrarcontra.Checked ? '\0' : '*';
        }
    }
}
