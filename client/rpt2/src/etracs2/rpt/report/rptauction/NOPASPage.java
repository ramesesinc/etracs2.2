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
@StyleSheet("etracs2/rpt/report/rptauction/NOPASPage.style")
public class NOPASPage extends javax.swing.JPanel {
    
    /**
     * Creates new form DemandLetterPage
     */
    public NOPASPage() {
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
        xTextField14 = new com.rameses.rcp.control.XTextField();
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
        formPanel2 = new com.rameses.rcp.util.FormPanel();
        xTextField11 = new com.rameses.rcp.control.XTextField();
        xTextField12 = new com.rameses.rcp.control.XTextField();
        xTextField13 = new com.rameses.rcp.control.XTextField();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xTextField15 = new com.rameses.rcp.control.XTextField();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        xDateField2 = new com.rameses.rcp.control.XDateField();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xDateField4 = new com.rameses.rcp.control.XDateField();

        xActionBar1.setBorder(new com.rameses.rcp.control.border.XUnderlineBorder());
        xActionBar1.setName("formActions");
        xActionBar1.setPreferredSize(new java.awt.Dimension(61, 32));

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("FAAS Info");
        formPanel1.setBorder(xTitledBorder1);
        formPanel1.setCaptionWidth(110);
        xTextField14.setForeground(new java.awt.Color(204, 0, 0));
        xTextField14.setCaption("Status");
        xTextField14.setDisabledTextColor(new java.awt.Color(204, 0, 0));
        xTextField14.setEnabled(false);
        xTextField14.setFont(new java.awt.Font("Arial", 1, 11));
        xTextField14.setName("entity.docstate");
        xTextField14.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel1.add(xTextField14);

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

        xTextField10.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        xTextField10.setCaption("Assessed Value");
        xTextField10.setEnabled(false);
        xTextField10.setName("entity.assessedvalue");
        xTextField10.setPreferredSize(new java.awt.Dimension(300, 20));
        formPanel1.add(xTextField10);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Delinquent Info");
        formPanel2.setBorder(xTitledBorder2);
        formPanel2.setCaptionWidth(110);
        xTextField11.setCaption("From Year-Qtr");
        xTextField11.setEnabled(false);
        xTextField11.setName("entity.delinquentyrqtr");
        xTextField11.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel2.add(xTextField11);

        xTextField12.setCaption("To Year-Qtr");
        xTextField12.setEnabled(false);
        xTextField12.setName("entity.currentyrqtr");
        xTextField12.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel2.add(xTextField12);

        xTextField13.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        xTextField13.setCaption("Amount");
        xTextField13.setEnabled(false);
        xTextField13.setName("entity.total");
        xTextField13.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel2.add(xTextField13);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Additional Info");
        formPanel3.setBorder(xTitledBorder3);
        formPanel3.setCaptionWidth(110);
        xTextField15.setCaption("Newspaper");
        xTextField15.setCaptionWidth(120);
        xTextField15.setName("entity.newspapername");
        xTextField15.setPreferredSize(new java.awt.Dimension(0, 20));
        xTextField15.setRequired(true);
        formPanel3.add(xTextField15);

        xDateField1.setCaption("1st Publication Date");
        xDateField1.setCaptionWidth(120);
        xDateField1.setName("entity.dt1stpublication");
        xDateField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xDateField1.setRequired(true);
        formPanel3.add(xDateField1);

        xDateField2.setCaption("2nd Publication Date");
        xDateField2.setCaptionWidth(120);
        xDateField2.setName("entity.dt2ndpublication");
        xDateField2.setPreferredSize(new java.awt.Dimension(0, 20));
        xDateField2.setRequired(true);
        formPanel3.add(xDateField2);

        xNumberField1.setCaption("Cost of Sale");
        xNumberField1.setCaptionWidth(120);
        xNumberField1.setFieldType(BigDecimal.class);
        xNumberField1.setName("entity.costofsale");
        xNumberField1.setPreferredSize(new java.awt.Dimension(0, 20));
        xNumberField1.setRequired(true);
        formPanel3.add(xNumberField1);

        xDateField4.setCaption("Auction Date");
        xDateField4.setCaptionWidth(120);
        xDateField4.setName("entity.auctiondate");
        xDateField4.setPreferredSize(new java.awt.Dimension(0, 20));
        xDateField4.setRequired(true);
        formPanel3.add(xDateField4);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(xActionBar1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 639, Short.MAX_VALUE)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 339, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 619, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(xActionBar1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(formPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .add(36, 36, 36))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.util.FormPanel formPanel2;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XDateField xDateField2;
    private com.rameses.rcp.control.XDateField xDateField4;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    private com.rameses.rcp.control.XTextField xTextField1;
    private com.rameses.rcp.control.XTextField xTextField10;
    private com.rameses.rcp.control.XTextField xTextField11;
    private com.rameses.rcp.control.XTextField xTextField12;
    private com.rameses.rcp.control.XTextField xTextField13;
    private com.rameses.rcp.control.XTextField xTextField14;
    private com.rameses.rcp.control.XTextField xTextField15;
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
