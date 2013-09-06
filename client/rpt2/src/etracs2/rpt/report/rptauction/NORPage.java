/*
 * NOPASPage.java
 *
 * Created on July 02, 2012, 4:47 PM
 */

package etracs2.rpt.report.rptauction;

import com.rameses.rcp.ui.annotations.StyleSheet;
import java.math.BigDecimal;

/**
 *
 * @author  Arnel Retiza
 */
@StyleSheet("etracs2/rpt/report/rptauction/NORPage.style")
public class NORPage extends javax.swing.JPanel {
    
    /**
     * Creates new form DemandLetterPage
     */
    public NORPage() {
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
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xTextField18 = new com.rameses.rcp.control.XTextField();
        xTextField1 = new com.rameses.rcp.control.XTextField();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        xTextField5 = new com.rameses.rcp.control.XTextField();
        xTextField9 = new com.rameses.rcp.control.XTextField();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        xTextField3 = new com.rameses.rcp.control.XTextField();
        xTextField6 = new com.rameses.rcp.control.XTextField();
        xTextField7 = new com.rameses.rcp.control.XTextField();
        xTextField8 = new com.rameses.rcp.control.XTextField();
        xTextField10 = new com.rameses.rcp.control.XTextField();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        xTextField17 = new com.rameses.rcp.control.XTextField();
        formPanel4 = new com.rameses.rcp.util.FormPanel();
        xRadio1 = new com.rameses.rcp.control.XRadio();
        xRadio2 = new com.rameses.rcp.control.XRadio();
        xRadio3 = new com.rameses.rcp.control.XRadio();
        xTextField16 = new com.rameses.rcp.control.XTextField();
        xDateField2 = new com.rameses.rcp.control.XDateField();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        formPanel2 = new com.rameses.rcp.util.FormPanel();
        xTextField11 = new com.rameses.rcp.control.XTextField();
        xTextField12 = new com.rameses.rcp.control.XTextField();
        xTextField13 = new com.rameses.rcp.control.XTextField();
        xTextField14 = new com.rameses.rcp.control.XTextField();
        xTextField15 = new com.rameses.rcp.control.XTextField();

        xActionBar1.setBorder(new com.rameses.rcp.control.border.XUnderlineBorder());
        xActionBar1.setName("formActions");
        xActionBar1.setPreferredSize(new java.awt.Dimension(61, 32));

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("FAAS Info");
        formPanel1.setBorder(xTitledBorder1);
        formPanel1.setCaptionWidth(110);
        xTextField18.setForeground(new java.awt.Color(204, 0, 0));
        xTextField18.setCaption("Status");
        xTextField18.setDisabledTextColor(new java.awt.Color(204, 0, 0));
        xTextField18.setEnabled(false);
        xTextField18.setFont(new java.awt.Font("Arial", 1, 11));
        xTextField18.setName("entity.docstate");
        xTextField18.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel1.add(xTextField18);

        xTextField1.setCaption("Doc Type");
        xTextField1.setEnabled(false);
        xTextField1.setName("entity.doctypedesc");
        xTextField1.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel1.add(xTextField1);

        xTextField4.setCaption("Taxpayer Name");
        xTextField4.setEnabled(false);
        xTextField4.setName("entity.taxpayername");
        xTextField4.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel1.add(xTextField4);

        xTextField5.setCaption("Taxpayer Address");
        xTextField5.setEnabled(false);
        xTextField5.setName("entity.taxpayeraddress");
        xTextField5.setPreferredSize(new java.awt.Dimension(0, 20));
        formPanel1.add(xTextField5);

        xTextField9.setCaption("RPU Type");
        xTextField9.setEnabled(false);
        xTextField9.setName("entity.rputype");
        xTextField9.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel1.add(xTextField9);

        xTextField2.setCaption("TD No");
        xTextField2.setEnabled(false);
        xTextField2.setName("entity.tdno");
        xTextField2.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel1.add(xTextField2);

        xTextField3.setCaption("PIN");
        xTextField3.setEnabled(false);
        xTextField3.setName("entity.pin");
        xTextField3.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel1.add(xTextField3);

        xTextField6.setCaption("Barangay");
        xTextField6.setEnabled(false);
        xTextField6.setName("entity.barangay");
        xTextField6.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel1.add(xTextField6);

        xTextField7.setCaption("Cadastral Lot No");
        xTextField7.setEnabled(false);
        xTextField7.setName("entity.cadastrallotno");
        xTextField7.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel1.add(xTextField7);

        xTextField8.setCaption("Classifcation");
        xTextField8.setEnabled(false);
        xTextField8.setName("entity.classcode");
        xTextField8.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel1.add(xTextField8);

        xTextField10.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        xTextField10.setCaption("Assessed Value");
        xTextField10.setEnabled(false);
        xTextField10.setName("entity.assessedvalue");
        xTextField10.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel1.add(xTextField10);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Redemption Info");
        formPanel3.setBorder(xTitledBorder2);
        xDateField1.setCaption("Date");
        xDateField1.setCaptionWidth(80);
        xDateField1.setName("entity.redemptiondate");
        xDateField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xDateField1.setRequired(true);
        formPanel3.add(xDateField1);

        xTextField17.setCaption("Redeem By");
        xTextField17.setCaptionWidth(80);
        xTextField17.setName("entity.redeemedby");
        xTextField17.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField17.setRequired(true);
        formPanel3.add(xTextField17);

        formPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder("Redeem By is the"));
        formPanel4.setCaption("");
        formPanel4.setPadding(new java.awt.Insets(0, 5, 5, 5));
        formPanel4.setPreferredSize(new java.awt.Dimension(0, 80));
        xRadio1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xRadio1.setText(" Delinquent Taxpayer");
        xRadio1.setMargin(new java.awt.Insets(0, 0, 0, 0));
        xRadio1.setName("entity.redeembyinfo");
        xRadio1.setOpaque(false);
        xRadio1.setOptionValue("1");
        xRadio1.setShowCaption(false);
        formPanel4.add(xRadio1);

        xRadio2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xRadio2.setText(" Representative of Delinquent Taxpayer");
        xRadio2.setMargin(new java.awt.Insets(0, 0, 0, 0));
        xRadio2.setName("entity.redeembyinfo");
        xRadio2.setOpaque(false);
        xRadio2.setOptionValue("2");
        xRadio2.setShowCaption(false);
        formPanel4.add(xRadio2);

        xRadio3.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xRadio3.setText(" Other Person");
        xRadio3.setMargin(new java.awt.Insets(0, 0, 0, 0));
        xRadio3.setName("entity.redeembyinfo");
        xRadio3.setOpaque(false);
        xRadio3.setOptionValue("3");
        xRadio3.setShowCaption(false);
        formPanel4.add(xRadio3);

        formPanel3.add(formPanel4);

        xTextField16.setCaption("OR No.");
        xTextField16.setCaptionWidth(80);
        xTextField16.setName("entity.redemptionorno");
        xTextField16.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField16.setRequired(true);
        formPanel3.add(xTextField16);

        xDateField2.setCaption("OR Date");
        xDateField2.setCaptionWidth(80);
        xDateField2.setName("entity.redemptionordate");
        xDateField2.setPreferredSize(new java.awt.Dimension(0, 20));
        xDateField2.setRequired(true);
        formPanel3.add(xDateField2);

        xNumberField1.setCaption("OR Amount");
        xNumberField1.setCaptionWidth(80);
        xNumberField1.setFieldType(BigDecimal.class);
        xNumberField1.setName("entity.redemptioncost");
        xNumberField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xNumberField1.setRequired(true);
        formPanel3.add(xNumberField1);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Delinquent Info");
        formPanel2.setBorder(xTitledBorder3);
        formPanel2.setCaptionWidth(110);
        xTextField11.setCaption("Delinquent Year-Qtr");
        xTextField11.setEnabled(false);
        xTextField11.setName("entity.delinquentyrqtr");
        xTextField11.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel2.add(xTextField11);

        xTextField12.setCaption("Current Year-Qtr");
        xTextField12.setEnabled(false);
        xTextField12.setName("entity.currentyrqtr");
        xTextField12.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel2.add(xTextField12);

        xTextField13.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        xTextField13.setCaption("Amount");
        xTextField13.setEnabled(false);
        xTextField13.setName("entity.totaldelinquentamount");
        xTextField13.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel2.add(xTextField13);

        xTextField14.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        xTextField14.setCaption("Cost of Sale");
        xTextField14.setEnabled(false);
        xTextField14.setName("entity.costofsale");
        xTextField14.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel2.add(xTextField14);

        xTextField15.setHorizontalAlignment(javax.swing.JTextField.RIGHT);
        xTextField15.setCaption("Total");
        xTextField15.setEnabled(false);
        xTextField15.setName("entity.total");
        xTextField15.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel2.add(xTextField15);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(xActionBar1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 798, Short.MAX_VALUE)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 621, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(layout.createSequentialGroup()
                        .add(formPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 289, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addContainerGap(167, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(xActionBar1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 230, Short.MAX_VALUE)
                    .add(formPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 230, Short.MAX_VALUE))
                .add(51, 51, 51))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.util.FormPanel formPanel2;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.util.FormPanel formPanel4;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XDateField xDateField2;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    private com.rameses.rcp.control.XRadio xRadio1;
    private com.rameses.rcp.control.XRadio xRadio2;
    private com.rameses.rcp.control.XRadio xRadio3;
    private com.rameses.rcp.control.XTextField xTextField1;
    private com.rameses.rcp.control.XTextField xTextField10;
    private com.rameses.rcp.control.XTextField xTextField11;
    private com.rameses.rcp.control.XTextField xTextField12;
    private com.rameses.rcp.control.XTextField xTextField13;
    private com.rameses.rcp.control.XTextField xTextField14;
    private com.rameses.rcp.control.XTextField xTextField15;
    private com.rameses.rcp.control.XTextField xTextField16;
    private com.rameses.rcp.control.XTextField xTextField17;
    private com.rameses.rcp.control.XTextField xTextField18;
    private com.rameses.rcp.control.XTextField xTextField2;
    private com.rameses.rcp.control.XTextField xTextField3;
    private com.rameses.rcp.control.XTextField xTextField4;
    private com.rameses.rcp.control.XTextField xTextField5;
    private com.rameses.rcp.control.XTextField xTextField6;
    private com.rameses.rcp.control.XTextField xTextField7;
    private com.rameses.rcp.control.XTextField xTextField8;
    private com.rameses.rcp.control.XTextField xTextField9;
    // End of variables declaration//GEN-END:variables
    
}
