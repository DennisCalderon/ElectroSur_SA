﻿namespace CapaPresentacion
{
    partial class Fom_Barra
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.rb1 = new System.Windows.Forms.RadioButton();
            this.rb2 = new System.Windows.Forms.RadioButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.datalistado1 = new System.Windows.Forms.DataGridView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtCRP = new System.Windows.Forms.TextBox();
            this.chbCRP = new System.Windows.Forms.CheckBox();
            this.txtPERNR = new System.Windows.Forms.TextBox();
            this.txtACF = new System.Windows.Forms.TextBox();
            this.txtAMBid = new System.Windows.Forms.TextBox();
            this.button2 = new System.Windows.Forms.Button();
            this.dateTimePicker2 = new System.Windows.Forms.DateTimePicker();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.txtRACF = new System.Windows.Forms.TextBox();
            this.txtRACF1 = new System.Windows.Forms.TextBox();
            this.checkBox10 = new System.Windows.Forms.CheckBox();
            this.checkBox9 = new System.Windows.Forms.CheckBox();
            this.checkBox8 = new System.Windows.Forms.CheckBox();
            this.checkBox7 = new System.Windows.Forms.CheckBox();
            this.chbRACF = new System.Windows.Forms.CheckBox();
            this.chbACF = new System.Windows.Forms.CheckBox();
            this.chbPERNR = new System.Windows.Forms.CheckBox();
            this.chbAMB = new System.Windows.Forms.CheckBox();
            this.cboCRP = new MultiColumnComboBoxDemo.MultiColumnComboBox();
            this.cboPERNR = new MultiColumnComboBoxDemo.MultiColumnComboBox();
            this.cboACFid = new MultiColumnComboBoxDemo.MultiColumnComboBox();
            this.cboAMBid = new MultiColumnComboBoxDemo.MultiColumnComboBox();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.datalistado1)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // rb1
            // 
            this.rb1.AutoSize = true;
            this.rb1.Location = new System.Drawing.Point(6, 32);
            this.rb1.Name = "rb1";
            this.rb1.Size = new System.Drawing.Size(81, 17);
            this.rb1.TabIndex = 17;
            this.rb1.TabStop = true;
            this.rb1.Text = "01 Columna";
            this.rb1.UseVisualStyleBackColor = true;
            // 
            // rb2
            // 
            this.rb2.AutoSize = true;
            this.rb2.Location = new System.Drawing.Point(93, 31);
            this.rb2.Name = "rb2";
            this.rb2.Size = new System.Drawing.Size(86, 17);
            this.rb2.TabIndex = 18;
            this.rb2.TabStop = true;
            this.rb2.Text = "02 Columnas";
            this.rb2.UseVisualStyleBackColor = true;
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.groupBox1.Controls.Add(this.rb2);
            this.groupBox1.Controls.Add(this.rb1);
            this.groupBox1.Location = new System.Drawing.Point(18, 266);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(596, 66);
            this.groupBox1.TabIndex = 19;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Del Reporte";
            // 
            // datalistado1
            // 
            this.datalistado1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.datalistado1.Location = new System.Drawing.Point(18, 338);
            this.datalistado1.Name = "datalistado1";
            this.datalistado1.Size = new System.Drawing.Size(596, 187);
            this.datalistado1.TabIndex = 38;
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.groupBox2.Controls.Add(this.txtCRP);
            this.groupBox2.Controls.Add(this.chbCRP);
            this.groupBox2.Controls.Add(this.cboCRP);
            this.groupBox2.Controls.Add(this.cboPERNR);
            this.groupBox2.Controls.Add(this.cboACFid);
            this.groupBox2.Controls.Add(this.cboAMBid);
            this.groupBox2.Controls.Add(this.button2);
            this.groupBox2.Controls.Add(this.dateTimePicker2);
            this.groupBox2.Controls.Add(this.dateTimePicker1);
            this.groupBox2.Controls.Add(this.txtRACF);
            this.groupBox2.Controls.Add(this.txtRACF1);
            this.groupBox2.Controls.Add(this.txtACF);
            this.groupBox2.Controls.Add(this.txtPERNR);
            this.groupBox2.Controls.Add(this.txtAMBid);
            this.groupBox2.Controls.Add(this.checkBox10);
            this.groupBox2.Controls.Add(this.checkBox9);
            this.groupBox2.Controls.Add(this.checkBox8);
            this.groupBox2.Controls.Add(this.checkBox7);
            this.groupBox2.Controls.Add(this.chbRACF);
            this.groupBox2.Controls.Add(this.chbACF);
            this.groupBox2.Controls.Add(this.chbPERNR);
            this.groupBox2.Controls.Add(this.chbAMB);
            this.groupBox2.Location = new System.Drawing.Point(18, 11);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.groupBox2.Size = new System.Drawing.Size(596, 240);
            this.groupBox2.TabIndex = 44;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Filtros";
            // 
            // txtCRP
            // 
            this.txtCRP.Location = new System.Drawing.Point(178, 18);
            this.txtCRP.Name = "txtCRP";
            this.txtCRP.ReadOnly = true;
            this.txtCRP.Size = new System.Drawing.Size(210, 20);
            this.txtCRP.TabIndex = 65;
            this.txtCRP.TabStop = false;
            // 
            // chbCRP
            // 
            this.chbCRP.AutoSize = true;
            this.chbCRP.Location = new System.Drawing.Point(22, 21);
            this.chbCRP.Name = "chbCRP";
            this.chbCRP.Size = new System.Drawing.Size(48, 17);
            this.chbCRP.TabIndex = 64;
            this.chbCRP.Text = "CRP";
            this.chbCRP.UseVisualStyleBackColor = true;
            // 
            // txtPERNR
            // 
            this.txtPERNR.Location = new System.Drawing.Point(178, 70);
            this.txtPERNR.Name = "txtPERNR";
            this.txtPERNR.ReadOnly = true;
            this.txtPERNR.Size = new System.Drawing.Size(210, 20);
            this.txtPERNR.TabIndex = 53;
            this.txtPERNR.TabStop = false;
            // 
            // txtACF
            // 
            this.txtACF.Location = new System.Drawing.Point(180, 98);
            this.txtACF.Name = "txtACF";
            this.txtACF.ReadOnly = true;
            this.txtACF.Size = new System.Drawing.Size(209, 20);
            this.txtACF.TabIndex = 54;
            this.txtACF.TabStop = false;
            // 
            // txtAMBid
            // 
            this.txtAMBid.Location = new System.Drawing.Point(180, 45);
            this.txtAMBid.Name = "txtAMBid";
            this.txtAMBid.ReadOnly = true;
            this.txtAMBid.Size = new System.Drawing.Size(209, 20);
            this.txtAMBid.TabIndex = 52;
            this.txtAMBid.TabStop = false;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(436, 193);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 59;
            this.button2.Text = "Etiquetar";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // dateTimePicker2
            // 
            this.dateTimePicker2.Location = new System.Drawing.Point(268, 151);
            this.dateTimePicker2.Name = "dateTimePicker2";
            this.dateTimePicker2.Size = new System.Drawing.Size(121, 20);
            this.dateTimePicker2.TabIndex = 58;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(140, 151);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(121, 20);
            this.dateTimePicker1.TabIndex = 57;
            // 
            // txtRACF
            // 
            this.txtRACF.Location = new System.Drawing.Point(140, 126);
            this.txtRACF.Name = "txtRACF";
            this.txtRACF.Size = new System.Drawing.Size(121, 20);
            this.txtRACF.TabIndex = 55;
            // 
            // txtRACF1
            // 
            this.txtRACF1.Location = new System.Drawing.Point(267, 126);
            this.txtRACF1.Name = "txtRACF1";
            this.txtRACF1.Size = new System.Drawing.Size(122, 20);
            this.txtRACF1.TabIndex = 56;
            // 
            // checkBox10
            // 
            this.checkBox10.AutoSize = true;
            this.checkBox10.Location = new System.Drawing.Point(147, 208);
            this.checkBox10.Name = "checkBox10";
            this.checkBox10.Size = new System.Drawing.Size(114, 17);
            this.checkBox10.TabIndex = 51;
            this.checkBox10.Text = "Excluir cuenta 333";
            this.checkBox10.UseVisualStyleBackColor = true;
            // 
            // checkBox9
            // 
            this.checkBox9.AutoSize = true;
            this.checkBox9.Location = new System.Drawing.Point(22, 208);
            this.checkBox9.Name = "checkBox9";
            this.checkBox9.Size = new System.Drawing.Size(119, 17);
            this.checkBox9.TabIndex = 50;
            this.checkBox9.Text = "Imprimir activos fijos";
            this.checkBox9.UseVisualStyleBackColor = true;
            // 
            // checkBox8
            // 
            this.checkBox8.AutoSize = true;
            this.checkBox8.Location = new System.Drawing.Point(22, 176);
            this.checkBox8.Name = "checkBox8";
            this.checkBox8.Size = new System.Drawing.Size(227, 17);
            this.checkBox8.TabIndex = 49;
            this.checkBox8.Text = "Etiquetas de Activos por selección multiple";
            this.checkBox8.UseVisualStyleBackColor = true;
            // 
            // checkBox7
            // 
            this.checkBox7.AutoSize = true;
            this.checkBox7.Location = new System.Drawing.Point(22, 151);
            this.checkBox7.Name = "checkBox7";
            this.checkBox7.Size = new System.Drawing.Size(102, 17);
            this.checkBox7.TabIndex = 48;
            this.checkBox7.Text = "Incorporaciones";
            this.checkBox7.UseVisualStyleBackColor = true;
            // 
            // chbRACF
            // 
            this.chbRACF.AutoSize = true;
            this.chbRACF.Location = new System.Drawing.Point(22, 126);
            this.chbRACF.Name = "chbRACF";
            this.chbRACF.Size = new System.Drawing.Size(108, 17);
            this.chbRACF.TabIndex = 47;
            this.chbRACF.Text = "Rango de código";
            this.chbRACF.UseVisualStyleBackColor = true;
            // 
            // chbACF
            // 
            this.chbACF.AutoSize = true;
            this.chbACF.Location = new System.Drawing.Point(22, 98);
            this.chbACF.Name = "chbACF";
            this.chbACF.Size = new System.Drawing.Size(56, 17);
            this.chbACF.TabIndex = 46;
            this.chbACF.Text = "Activo";
            this.chbACF.UseVisualStyleBackColor = true;
            // 
            // chbPERNR
            // 
            this.chbPERNR.AutoSize = true;
            this.chbPERNR.Location = new System.Drawing.Point(22, 70);
            this.chbPERNR.Name = "chbPERNR";
            this.chbPERNR.Size = new System.Drawing.Size(54, 17);
            this.chbPERNR.TabIndex = 45;
            this.chbPERNR.Text = "Resp.";
            this.chbPERNR.UseVisualStyleBackColor = true;
            // 
            // chbAMB
            // 
            this.chbAMB.AutoSize = true;
            this.chbAMB.Location = new System.Drawing.Point(22, 45);
            this.chbAMB.Name = "chbAMB";
            this.chbAMB.Size = new System.Drawing.Size(50, 17);
            this.chbAMB.TabIndex = 44;
            this.chbAMB.Text = "Amb.";
            this.chbAMB.UseVisualStyleBackColor = true;
            // 
            // cboCRP
            // 
            this.cboCRP.AutoComplete = false;
            this.cboCRP.AutoDropdown = false;
            this.cboCRP.BackColorEven = System.Drawing.Color.White;
            this.cboCRP.BackColorOdd = System.Drawing.Color.White;
            this.cboCRP.ColumnNames = "";
            this.cboCRP.ColumnWidthDefault = 75;
            this.cboCRP.ColumnWidths = "";
            this.cboCRP.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cboCRP.FormattingEnabled = true;
            this.cboCRP.LinkedColumnIndex = 2;
            this.cboCRP.LinkedTextBox = this.txtCRP;
            this.cboCRP.Location = new System.Drawing.Point(87, 18);
            this.cboCRP.Name = "cboCRP";
            this.cboCRP.Size = new System.Drawing.Size(87, 21);
            this.cboCRP.TabIndex = 63;
            // 
            // cboPERNR
            // 
            this.cboPERNR.AutoComplete = false;
            this.cboPERNR.AutoDropdown = false;
            this.cboPERNR.BackColorEven = System.Drawing.Color.White;
            this.cboPERNR.BackColorOdd = System.Drawing.Color.White;
            this.cboPERNR.ColumnNames = "";
            this.cboPERNR.ColumnWidthDefault = 75;
            this.cboPERNR.ColumnWidths = "";
            this.cboPERNR.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cboPERNR.FormattingEnabled = true;
            this.cboPERNR.LinkedColumnIndex = 1;
            this.cboPERNR.LinkedTextBox = this.txtPERNR;
            this.cboPERNR.Location = new System.Drawing.Point(87, 70);
            this.cboPERNR.Name = "cboPERNR";
            this.cboPERNR.Size = new System.Drawing.Size(87, 21);
            this.cboPERNR.TabIndex = 62;
            // 
            // cboACFid
            // 
            this.cboACFid.AutoComplete = false;
            this.cboACFid.AutoDropdown = false;
            this.cboACFid.BackColorEven = System.Drawing.Color.White;
            this.cboACFid.BackColorOdd = System.Drawing.Color.White;
            this.cboACFid.ColumnNames = "";
            this.cboACFid.ColumnWidthDefault = 75;
            this.cboACFid.ColumnWidths = "";
            this.cboACFid.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cboACFid.FormattingEnabled = true;
            this.cboACFid.LinkedColumnIndex = 9;
            this.cboACFid.LinkedTextBox = this.txtACF;
            this.cboACFid.Location = new System.Drawing.Point(87, 98);
            this.cboACFid.Name = "cboACFid";
            this.cboACFid.Size = new System.Drawing.Size(87, 21);
            this.cboACFid.TabIndex = 61;
            // 
            // cboAMBid
            // 
            this.cboAMBid.AutoComplete = false;
            this.cboAMBid.AutoDropdown = false;
            this.cboAMBid.BackColorEven = System.Drawing.Color.White;
            this.cboAMBid.BackColorOdd = System.Drawing.Color.White;
            this.cboAMBid.ColumnNames = "";
            this.cboAMBid.ColumnWidthDefault = 75;
            this.cboAMBid.ColumnWidths = "";
            this.cboAMBid.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawVariable;
            this.cboAMBid.FormattingEnabled = true;
            this.cboAMBid.LinkedColumnIndex = 2;
            this.cboAMBid.LinkedTextBox = this.txtAMBid;
            this.cboAMBid.Location = new System.Drawing.Point(87, 41);
            this.cboAMBid.Name = "cboAMBid";
            this.cboAMBid.Size = new System.Drawing.Size(87, 21);
            this.cboAMBid.TabIndex = 60;
            // 
            // Fom_Barra
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(632, 537);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.datalistado1);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "Fom_Barra";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Empresa";
            this.Load += new System.EventHandler(this.Fom_Barra_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.datalistado1)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.RadioButton rb1;
        private System.Windows.Forms.RadioButton rb2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView datalistado1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txtCRP;
        private System.Windows.Forms.CheckBox chbCRP;
        private MultiColumnComboBoxDemo.MultiColumnComboBox cboCRP;
        private MultiColumnComboBoxDemo.MultiColumnComboBox cboPERNR;
        private System.Windows.Forms.TextBox txtPERNR;
        private MultiColumnComboBoxDemo.MultiColumnComboBox cboACFid;
        private System.Windows.Forms.TextBox txtACF;
        private MultiColumnComboBoxDemo.MultiColumnComboBox cboAMBid;
        private System.Windows.Forms.TextBox txtAMBid;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.DateTimePicker dateTimePicker2;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.TextBox txtRACF;
        private System.Windows.Forms.TextBox txtRACF1;
        private System.Windows.Forms.CheckBox checkBox10;
        private System.Windows.Forms.CheckBox checkBox9;
        private System.Windows.Forms.CheckBox checkBox8;
        private System.Windows.Forms.CheckBox checkBox7;
        private System.Windows.Forms.CheckBox chbRACF;
        private System.Windows.Forms.CheckBox chbACF;
        private System.Windows.Forms.CheckBox chbPERNR;
        private System.Windows.Forms.CheckBox chbAMB;
    }
}