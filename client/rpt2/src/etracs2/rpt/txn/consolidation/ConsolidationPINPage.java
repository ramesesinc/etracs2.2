/*
 * RealPropertyInfoPage.java
 *
 * Created on July 1, 2011, 5:54 PM
 */

package etracs2.rpt.txn.consolidation;

import com.rameses.rcp.ui.annotations.StyleSheet;

/**
 *
 * @author  rameses
 */
@StyleSheet("etracs2/rpt/txn/consolidation/ConsolidationPINPage.style")
public class ConsolidationPINPage extends javax.swing.JPanel {
    
    /** Creates new form RealPropertyInfoPage */
    public ConsolidationPINPage() {
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
        jPanel1 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xComboBox3 = new com.rameses.rcp.control.XComboBox();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xNumberField2 = new com.rameses.rcp.control.XNumberField();
        xTextField3 = new com.rameses.rcp.control.XTextField();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        xTextField5 = new com.rameses.rcp.control.XTextField();
        jPanel4 = new javax.swing.JPanel();
        formPanel5 = new com.rameses.rcp.util.FormPanel();
        xTextField6 = new com.rameses.rcp.control.XTextField();
        xTextField7 = new com.rameses.rcp.control.XTextField();
        xTextField8 = new com.rameses.rcp.control.XTextField();
        xTextField13 = new com.rameses.rcp.control.XTextField();
        jPanel5 = new javax.swing.JPanel();
        formPanel6 = new com.rameses.rcp.util.FormPanel();
        xTextField9 = new com.rameses.rcp.control.XTextField();
        xTextField11 = new com.rameses.rcp.control.XTextField();
        xTextField10 = new com.rameses.rcp.control.XTextField();
        xTextField12 = new com.rameses.rcp.control.XTextField();

        setLayout(new java.awt.BorderLayout());

        xActionBar1.setBorder(new com.rameses.rcp.control.border.XUnderlineBorder());
        xActionBar1.setName("realpropertyActions");
        add(xActionBar1, java.awt.BorderLayout.NORTH);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Real Property Information");
        jPanel3.setBorder(xTitledBorder1);

        formPanel3.setCaptionWidth(105);
        xComboBox1.setAllowNull(false);
        xComboBox1.setCaption("LGU");
        xComboBox1.setExpression("#{lguname}");
        xComboBox1.setItems("lgus");
        xComboBox1.setName("lgu");
        xComboBox1.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel3.add(xComboBox1);

        xComboBox3.setCaption("Barangay");
        xComboBox3.setDepends(new String[] {"lgu"});
        xComboBox3.setDynamic(true);
        xComboBox3.setExpression("#{lguname}");
        xComboBox3.setImmediate(true);
        xComboBox3.setIndex(-100);
        xComboBox3.setItems("barangays");
        xComboBox3.setName("barangay");
        xComboBox3.setPreferredSize(new java.awt.Dimension(0, 22));
        xComboBox3.setRequired(true);
        formPanel3.add(xComboBox3);

        xNumberField1.setCaption("Section No.");
        xNumberField1.setFieldType(Integer.class);
        xNumberField1.setIndex(-10);
        xNumberField1.setName("section");
        xNumberField1.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xNumberField1);

        xNumberField2.setCaption("Parcel No.");
        xNumberField2.setFieldType(Integer.class);
        xNumberField2.setIndex(-10);
        xNumberField2.setName("parcel");
        xNumberField2.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel3.add(xNumberField2);

        xTextField3.setCaption("Cadastral Lot No.");
        xTextField3.setName("rp.cadastrallotno");
        xTextField3.setPreferredSize(new java.awt.Dimension(0, 18));
        xTextField3.setRequired(true);
        formPanel3.add(xTextField3);

        xTextField4.setCaption("Block No.");
        xTextField4.setName("rp.blockno");
        xTextField4.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel3.add(xTextField4);

        xTextField5.setCaption("Survey No.");
        xTextField5.setName("rp.surveyno");
        xTextField5.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel3.add(xTextField5);

        org.jdesktop.layout.GroupLayout jPanel3Layout = new org.jdesktop.layout.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 307, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel3Layout.createSequentialGroup()
                .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Additional Information");
        jPanel4.setBorder(xTitledBorder2);

        xTextField6.setCaption("House No.");
        xTextField6.setName("rp.houseno");
        xTextField6.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel5.add(xTextField6);

        xTextField7.setCaption("Street");
        xTextField7.setName("rp.street");
        xTextField7.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel5.add(xTextField7);

        xTextField8.setCaption("Purok/Zone");
        xTextField8.setName("rp.purok");
        xTextField8.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel5.add(xTextField8);

        xTextField13.setCaption("Tag/Attributes");
        xTextField13.setName("rp.attribute");
        xTextField13.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel5.add(xTextField13);

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 323, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .add(formPanel5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(81, Short.MAX_VALUE))
        );

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Boundary Details");
        jPanel5.setBorder(xTitledBorder3);

        xTextField9.setCaption("North");
        xTextField9.setName("rp.north");
        xTextField9.setPreferredSize(new java.awt.Dimension(0, 18));
        xTextField9.setRequired(true);
        formPanel6.add(xTextField9);

        xTextField11.setCaption("East");
        xTextField11.setName("rp.east");
        xTextField11.setPreferredSize(new java.awt.Dimension(0, 18));
        xTextField11.setRequired(true);
        formPanel6.add(xTextField11);

        xTextField10.setCaption("South");
        xTextField10.setName("rp.south");
        xTextField10.setPreferredSize(new java.awt.Dimension(0, 18));
        xTextField10.setRequired(true);
        formPanel6.add(xTextField10);

        xTextField12.setCaption("West");
        xTextField12.setName("rp.west");
        xTextField12.setPreferredSize(new java.awt.Dimension(0, 18));
        xTextField12.setRequired(true);
        formPanel6.add(xTextField12);

        org.jdesktop.layout.GroupLayout jPanel5Layout = new org.jdesktop.layout.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 660, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel5Layout.createSequentialGroup()
                .add(formPanel6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 106, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(94, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel1Layout.createSequentialGroup()
                        .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .add(jPanel5, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .add(31, 31, 31))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .add(11, 11, 11)
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(jPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel5, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(98, 98, 98))
        );
        add(jPanel1, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.util.FormPanel formPanel5;
    private com.rameses.rcp.util.FormPanel formPanel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XComboBox xComboBox3;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    private com.rameses.rcp.control.XNumberField xNumberField2;
    private com.rameses.rcp.control.XTextField xTextField10;
    private com.rameses.rcp.control.XTextField xTextField11;
    private com.rameses.rcp.control.XTextField xTextField12;
    private com.rameses.rcp.control.XTextField xTextField13;
    private com.rameses.rcp.control.XTextField xTextField3;
    private com.rameses.rcp.control.XTextField xTextField4;
    private com.rameses.rcp.control.XTextField xTextField5;
    private com.rameses.rcp.control.XTextField xTextField6;
    private com.rameses.rcp.control.XTextField xTextField7;
    private com.rameses.rcp.control.XTextField xTextField8;
    private com.rameses.rcp.control.XTextField xTextField9;
    // End of variables declaration//GEN-END:variables
    
}
