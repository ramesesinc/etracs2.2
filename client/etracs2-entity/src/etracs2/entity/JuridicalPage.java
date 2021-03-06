/*
 * AccountPage.java
 *
 * Created on February 27, 2011, 12:48 PM
 */

package etracs2.entity;

import com.rameses.rcp.ui.annotations.StyleSheet;

/**
 *
 * @author  jzamss
 */
@StyleSheet("etracs2/entity/JuridicalPage.style")
public class JuridicalPage extends javax.swing.JPanel {
    
    /** Creates new form AccountPage */
    public JuridicalPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        xActionBar1 = new com.rameses.rcp.control.XActionBar();
        jPanel3 = new javax.swing.JPanel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel2 = new javax.swing.JPanel();
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xTextField1 = new com.rameses.rcp.control.XTextField();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        xTextField5 = new com.rameses.rcp.control.XTextField();
        xTextField10 = new com.rameses.rcp.control.XTextField();
        xSeparator1 = new com.rameses.rcp.control.XSeparator();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xTextField6 = new com.rameses.rcp.control.XTextField();
        xTextField8 = new com.rameses.rcp.control.XTextField();
        xTextField9 = new com.rameses.rcp.control.XTextField();
        jPanel1 = new javax.swing.JPanel();
        xDataTable1 = new com.rameses.rcp.control.XDataTable();
        xButton1 = new com.rameses.rcp.control.XButton();
        jPanel4 = new javax.swing.JPanel();
        xDataTable2 = new com.rameses.rcp.control.XDataTable();
        xButton2 = new com.rameses.rcp.control.XButton();

        setLayout(new java.awt.BorderLayout());

        setPreferredSize(new java.awt.Dimension(505, 440));
        xActionBar1.setBorder(new com.rameses.rcp.control.border.XUnderlineBorder());
        xActionBar1.setName("formActions");
        add(xActionBar1, java.awt.BorderLayout.NORTH);

        jPanel2.setPreferredSize(new java.awt.Dimension(676, 455));

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Juridical Detail");
        formPanel1.setBorder(xTitledBorder1);
        xLabel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel1.setForeground(new java.awt.Color(204, 0, 0));
        xLabel1.setCaption("Account No.");
        xLabel1.setCaptionWidth(115);
        xLabel1.setFont(new java.awt.Font("Tahoma", 1, 11));
        xLabel1.setName("entity.entityno");
        xLabel1.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xLabel1);

        xTextField1.setCaption("Juridical Name");
        xTextField1.setCaptionWidth(115);
        xTextField1.setIndex(-10);
        xTextField1.setName("entity.entityname");
        xTextField1.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField1.setRequired(true);
        formPanel1.add(xTextField1);

        xTextField4.setCaption("Address");
        xTextField4.setCaptionWidth(115);
        xTextField4.setName("entity.entityaddress");
        xTextField4.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField4.setRequired(true);
        formPanel1.add(xTextField4);

        xTextField5.setCaption("Mailing Address");
        xTextField5.setCaptionWidth(115);
        xTextField5.setName("entity.info.mailingaddress");
        xTextField5.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xTextField5);

        xTextField10.setCaption("Contact No.");
        xTextField10.setCaptionWidth(115);
        xTextField10.setName("entity.info.contactno");
        xTextField10.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xTextField10);

        xSeparator1.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel1.add(xSeparator1);

        xDateField1.setCaption("Date Registered");
        xDateField1.setCaptionWidth(115);
        xDateField1.setName("entity.info.dtregistered");
        xDateField1.setPreferredSize(new java.awt.Dimension(120, 19));
        formPanel1.add(xDateField1);

        xComboBox1.setCaption("Kind of Organization");
        xComboBox1.setCaptionWidth(115);
        xComboBox1.setItems("organizationTypes");
        xComboBox1.setName("entity.info.orgtype");
        xComboBox1.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel1.add(xComboBox1);

        xTextField6.setCaption("TIN");
        xTextField6.setCaptionWidth(115);
        xTextField6.setName("entity.info.tin");
        xTextField6.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xTextField6);

        xTextField8.setCaption("Nature of Business");
        xTextField8.setCaptionWidth(115);
        xTextField8.setName("entity.info.nature");
        xTextField8.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xTextField8);

        xTextField9.setCaption("Remarks");
        xTextField9.setCaptionWidth(115);
        xTextField9.setName("entity.info.remarks");
        xTextField9.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xTextField9);

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 422, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(44, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 313, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(35, Short.MAX_VALUE))
        );
        jTabbedPane1.addTab("General Information", jPanel2);

        xDataTable1.setHandler("contactListHandler");
        xDataTable1.setName("selectedContact");

        xButton1.setMnemonic('a');
        xButton1.setText("Add");
        xButton1.setImmediate(true);
        xButton1.setName("addContact");

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(xDataTable1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 418, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(xButton1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(48, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 308, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xButton1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jTabbedPane1.addTab("Contact Details", jPanel1);

        xDataTable2.setHandler("cardListHandler");
        xDataTable2.setName("selectedCard");

        xButton2.setMnemonic('a');
        xButton2.setText("Add");
        xButton2.setImmediate(true);
        xButton2.setName("addCard");

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(xDataTable2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 418, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(xButton2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(48, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 308, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xButton2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jTabbedPane1.addTab("ID Cards", jPanel4);

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(jTabbedPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 481, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(14, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(jTabbedPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 387, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(20, Short.MAX_VALUE))
        );
        add(jPanel3, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JTabbedPane jTabbedPane1;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XButton xButton2;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XDataTable xDataTable1;
    private com.rameses.rcp.control.XDataTable xDataTable2;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XSeparator xSeparator1;
    private com.rameses.rcp.control.XTextField xTextField1;
    private com.rameses.rcp.control.XTextField xTextField10;
    private com.rameses.rcp.control.XTextField xTextField4;
    private com.rameses.rcp.control.XTextField xTextField5;
    private com.rameses.rcp.control.XTextField xTextField6;
    private com.rameses.rcp.control.XTextField xTextField8;
    private com.rameses.rcp.control.XTextField xTextField9;
    // End of variables declaration//GEN-END:variables
    
}
