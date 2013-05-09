/*
 * MultipleClaimSettlementPage.java
 *
 * Created on April 29, 2012, 4:23 PM
 */

package etracs2.rpt.txn.multipleclaimsettlement;

import com.rameses.rcp.ui.annotations.StyleSheet;

/**
 *
 * @author  arnel
 */
@StyleSheet("etracs2/rpt/txn/multipleclaimsettlement/MultipleClaimSettlementPage.style")
public class MultipleClaimSettlementPage extends javax.swing.JPanel {
    
    /**
     * Creates new form MultipleClaimSettlementPage
     */
    public MultipleClaimSettlementPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        xSeparator1 = new com.rameses.rcp.control.XSeparator();
        xActionBar1 = new com.rameses.rcp.control.XActionBar();
        jPanel1 = new javax.swing.JPanel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        jPanel4 = new javax.swing.JPanel();
        xDataTable1 = new com.rameses.rcp.control.XDataTable();
        jPanel7 = new javax.swing.JPanel();
        xDataTable2 = new com.rameses.rcp.control.XDataTable();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        formPanel14 = new com.rameses.rcp.util.FormPanel();
        xLabel15 = new com.rameses.rcp.control.XLabel();
        xLabel16 = new com.rameses.rcp.control.XLabel();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        xDateField9 = new com.rameses.rcp.control.XDateField();
        formPanel12 = new com.rameses.rcp.util.FormPanel();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        formPanel9 = new com.rameses.rcp.util.FormPanel();
        xActionTextField4 = new com.rameses.rcp.control.XActionTextField();
        xDateField5 = new com.rameses.rcp.control.XDateField();
        formPanel10 = new com.rameses.rcp.util.FormPanel();
        xActionTextField5 = new com.rameses.rcp.control.XActionTextField();
        xDateField6 = new com.rameses.rcp.control.XDateField();
        formPanel11 = new com.rameses.rcp.util.FormPanel();
        xActionTextField6 = new com.rameses.rcp.control.XActionTextField();
        xDateField7 = new com.rameses.rcp.control.XDateField();
        jScrollPane1 = new javax.swing.JScrollPane();
        xTextArea1 = new com.rameses.rcp.control.XTextArea();
        formPanel4 = new com.rameses.rcp.util.FormPanel();
        xLabel10 = new com.rameses.rcp.control.XLabel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        xLabel9 = new com.rameses.rcp.control.XLabel();
        xLabel6 = new com.rameses.rcp.control.XLabel();
        xLabel11 = new com.rameses.rcp.control.XLabel();
        xLabel8 = new com.rameses.rcp.control.XLabel();
        xLabel7 = new com.rameses.rcp.control.XLabel();

        xSeparator1.setPreferredSize(new java.awt.Dimension(0, 20));
        org.jdesktop.layout.GroupLayout xSeparator1Layout = new org.jdesktop.layout.GroupLayout(xSeparator1);
        xSeparator1.setLayout(xSeparator1Layout);
        xSeparator1Layout.setHorizontalGroup(
            xSeparator1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 535, Short.MAX_VALUE)
        );
        xSeparator1Layout.setVerticalGroup(
            xSeparator1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(0, 20, Short.MAX_VALUE)
        );

        setLayout(new java.awt.BorderLayout());

        xActionBar1.setBorder(new com.rameses.rcp.control.border.XUnderlineBorder());
        xActionBar1.setName("formActions");
        xActionBar1.setPadding(new java.awt.Insets(1, 1, 1, 1));
        add(xActionBar1, java.awt.BorderLayout.NORTH);

        xDataTable1.setAutoscrolls(true);
        xDataTable1.setDynamic(true);
        xDataTable1.setHandler("otherclaimsListHandler");
        xDataTable1.setImmediate(true);
        xDataTable1.setIndex(12);
        xDataTable1.setName("selectedOtherClaims");
        xDataTable1.setShowRowHeader(true);

        org.jdesktop.layout.GroupLayout jPanel4Layout = new org.jdesktop.layout.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 834, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 206, Short.MAX_VALUE)
                .addContainerGap())
        );
        jTabbedPane1.addTab("List of Other Claims to be Cancelled", jPanel4);

        xDataTable2.setDynamic(true);
        xDataTable2.setHandler("affectedrpuListHandler");
        xDataTable2.setIndex(13);
        xDataTable2.setName("selectedAffectedRpu");
        xDataTable2.setShowRowHeader(true);

        org.jdesktop.layout.GroupLayout jPanel7Layout = new org.jdesktop.layout.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 834, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 206, Short.MAX_VALUE)
                .addContainerGap())
        );
        jTabbedPane1.addTab("Real Property Units Affected", jPanel7);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Multiple Claim Settlement Detail");
        formPanel3.setBorder(xTitledBorder1);
        formPanel3.setCaptionWidth(95);

        formPanel14.setCellpadding(new java.awt.Insets(0, 0, 0, 30));
        formPanel14.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel14.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel14.setShowCaption(false);
        xLabel15.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel15.setForeground(new java.awt.Color(153, 0, 0));
        xLabel15.setCaption("State");
        xLabel15.setCaptionWidth(100);
        xLabel15.setCellPadding(new java.awt.Insets(0, 0, 0, 5));
        xLabel15.setFont(new java.awt.Font("Arial", 1, 14));
        xLabel15.setName("settlement.docstate");
        xLabel15.setPreferredSize(new java.awt.Dimension(200, 19));
        formPanel14.add(xLabel15);

        xLabel16.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel16.setForeground(new java.awt.Color(153, 0, 0));
        xLabel16.setCaption("Doc No.");
        xLabel16.setCaptionWidth(60);
        xLabel16.setFont(new java.awt.Font("Arial", 1, 14));
        xLabel16.setName("settlement.docno");
        xLabel16.setPreferredSize(new java.awt.Dimension(120, 19));
        formPanel14.add(xLabel16);

        formPanel3.add(formPanel14);

        xTextField4.setCaption("New TD No.");
        xTextField4.setCaptionWidth(100);
        xTextField4.setCellPadding(new java.awt.Insets(0, 0, 0, 5));
        xTextField4.setIndex(1);
        xTextField4.setName("settlement.newtdno");
        xTextField4.setPreferredSize(new java.awt.Dimension(200, 19));
        formPanel3.add(xTextField4);

        xDateField9.setCaption("Issue Date");
        xDateField9.setCaptionWidth(100);
        xDateField9.setIndex(2);
        xDateField9.setName("settlement.issuedate");
        xDateField9.setPreferredSize(new java.awt.Dimension(200, 19));
        xDateField9.setRequired(true);
        formPanel3.add(xDateField9);

        formPanel12.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel12.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel12.setPreferredSize(new java.awt.Dimension(305, 21));
        formPanel12.setShowCaption(false);
        xNumberField1.setCaption("Effectivity Year");
        xNumberField1.setCaptionWidth(100);
        xNumberField1.setCellPadding(new java.awt.Insets(0, 0, 0, 5));
        xNumberField1.setFieldType(int.class);
        xNumberField1.setIndex(3);
        xNumberField1.setName("settlement.effectivityyear");
        xNumberField1.setPreferredSize(new java.awt.Dimension(88, 19));
        xNumberField1.setRequired(true);
        formPanel12.add(xNumberField1);

        xComboBox1.setAllowNull(false);
        xComboBox1.setCaption("Qtr");
        xComboBox1.setCaptionWidth(35);
        xComboBox1.setIndex(4);
        xComboBox1.setItems("quarterList");
        xComboBox1.setName("settlement.effectivityqtr");
        xComboBox1.setPreferredSize(new java.awt.Dimension(72, 21));
        xComboBox1.setRequired(true);
        formPanel12.add(xComboBox1);

        formPanel3.add(formPanel12);

        formPanel9.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel9.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel9.setShowCaption(false);
        xActionTextField4.setActionName("lookupAppraiser");
        xActionTextField4.setCaption("Appraised By");
        xActionTextField4.setCaptionWidth(100);
        xActionTextField4.setCellPadding(new java.awt.Insets(0, 0, 0, 5));
        xActionTextField4.setIndex(5);
        xActionTextField4.setName("settlement.appraisedby");
        xActionTextField4.setPreferredSize(new java.awt.Dimension(240, 19));
        xActionTextField4.setRequired(true);
        formPanel9.add(xActionTextField4);

        xDateField5.setCaption("Date");
        xDateField5.setCaptionWidth(50);
        xDateField5.setIndex(6);
        xDateField5.setName("settlement.dtappraised");
        xDateField5.setPreferredSize(new java.awt.Dimension(120, 19));
        xDateField5.setRequired(true);
        formPanel9.add(xDateField5);

        formPanel3.add(formPanel9);

        formPanel10.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel10.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel10.setShowCaption(false);
        xActionTextField5.setActionName("lookupRecommender");
        xActionTextField5.setCaption("Recommended By");
        xActionTextField5.setCaptionWidth(100);
        xActionTextField5.setCellPadding(new java.awt.Insets(0, 0, 0, 5));
        xActionTextField5.setIndex(7);
        xActionTextField5.setName("settlement.recommendedby");
        xActionTextField5.setPreferredSize(new java.awt.Dimension(240, 19));
        formPanel10.add(xActionTextField5);

        xDateField6.setCaption("Date");
        xDateField6.setCaptionWidth(50);
        xDateField6.setIndex(8);
        xDateField6.setName("settlement.dtrecommended");
        xDateField6.setPreferredSize(new java.awt.Dimension(120, 19));
        formPanel10.add(xDateField6);

        formPanel3.add(formPanel10);

        formPanel11.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel11.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel11.setShowCaption(false);
        xActionTextField6.setActionName("lookupApprover");
        xActionTextField6.setCaption("Approved By");
        xActionTextField6.setCaptionWidth(100);
        xActionTextField6.setCellPadding(new java.awt.Insets(0, 0, 0, 5));
        xActionTextField6.setIndex(9);
        xActionTextField6.setName("settlement.approvedby");
        xActionTextField6.setPreferredSize(new java.awt.Dimension(240, 19));
        xActionTextField6.setRequired(true);
        formPanel11.add(xActionTextField6);

        xDateField7.setCaption("Date");
        xDateField7.setCaptionWidth(50);
        xDateField7.setIndex(10);
        xDateField7.setName("settlement.dtapproved");
        xDateField7.setPreferredSize(new java.awt.Dimension(120, 19));
        xDateField7.setRequired(true);
        formPanel11.add(xDateField7);

        formPanel3.add(formPanel11);

        jScrollPane1.setPreferredSize(new java.awt.Dimension(0, 76));
        xTextArea1.setColumns(20);
        xTextArea1.setLineWrap(true);
        xTextArea1.setRows(5);
        xTextArea1.setCaption("Memoranda");
        xTextArea1.setCaptionWidth(100);
        xTextArea1.setIndex(11);
        xTextArea1.setName("settlement.memoranda");
        xTextArea1.setPreferredSize(new java.awt.Dimension(0, 74));
        xTextArea1.setRequired(true);
        jScrollPane1.setViewportView(xTextArea1);

        formPanel3.add(jScrollPane1);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("General Information");
        formPanel4.setBorder(xTitledBorder2);
        xLabel10.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel10.setCaption("Revision Year");
        xLabel10.setCaptionWidth(105);
        xLabel10.setName("settlement.ry");
        xLabel10.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel4.add(xLabel10);

        xLabel4.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel4.setCaption("TD No.");
        xLabel4.setCaptionWidth(105);
        xLabel4.setName("settlement.prevtdno");
        xLabel4.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel4.add(xLabel4);

        xLabel5.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel5.setCaption(" PIN");
        xLabel5.setCaptionWidth(105);
        xLabel5.setName("settlement.pin");
        xLabel5.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel4.add(xLabel5);

        xLabel9.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel9.setCaption("Claim No.");
        xLabel9.setCaptionWidth(105);
        xLabel9.setName("settlement.claimno");
        xLabel9.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel4.add(xLabel9);

        xLabel6.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel6.setCaption("Taxpayer Name");
        xLabel6.setCaptionWidth(105);
        xLabel6.setName("settlement.taxpayername");
        xLabel6.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel4.add(xLabel6);

        xLabel11.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel11.setCaption("Taxpayer Address");
        xLabel11.setCaptionWidth(105);
        xLabel11.setName("settlement.taxpayeraddress");
        xLabel11.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel4.add(xLabel11);

        xLabel8.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel8.setCaption("Cadastral Lot No.");
        xLabel8.setCaptionWidth(105);
        xLabel8.setName("settlement.cadastrallotno");
        xLabel8.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel4.add(xLabel8);

        xLabel7.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel7.setCaption("Survey No.");
        xLabel7.setCaptionWidth(105);
        xLabel7.setName("settlement.surveyno");
        xLabel7.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel4.add(xLabel7);

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING, false)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jTabbedPane1)
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel1Layout.createSequentialGroup()
                        .add(formPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 534, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                        .add(formPanel4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 319, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .add(50, 50, 50))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING, false)
                    .add(formPanel4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTabbedPane1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 256, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(38, Short.MAX_VALUE))
        );
        add(jPanel1, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel10;
    private com.rameses.rcp.util.FormPanel formPanel11;
    private com.rameses.rcp.util.FormPanel formPanel12;
    private com.rameses.rcp.util.FormPanel formPanel14;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.util.FormPanel formPanel4;
    private com.rameses.rcp.util.FormPanel formPanel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTabbedPane jTabbedPane1;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XActionTextField xActionTextField4;
    private com.rameses.rcp.control.XActionTextField xActionTextField5;
    private com.rameses.rcp.control.XActionTextField xActionTextField6;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XDataTable xDataTable1;
    private com.rameses.rcp.control.XDataTable xDataTable2;
    private com.rameses.rcp.control.XDateField xDateField5;
    private com.rameses.rcp.control.XDateField xDateField6;
    private com.rameses.rcp.control.XDateField xDateField7;
    private com.rameses.rcp.control.XDateField xDateField9;
    private com.rameses.rcp.control.XLabel xLabel10;
    private com.rameses.rcp.control.XLabel xLabel11;
    private com.rameses.rcp.control.XLabel xLabel15;
    private com.rameses.rcp.control.XLabel xLabel16;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLabel xLabel5;
    private com.rameses.rcp.control.XLabel xLabel6;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XLabel xLabel8;
    private com.rameses.rcp.control.XLabel xLabel9;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    private com.rameses.rcp.control.XSeparator xSeparator1;
    private com.rameses.rcp.control.XTextArea xTextArea1;
    private com.rameses.rcp.control.XTextField xTextField4;
    // End of variables declaration//GEN-END:variables
    
}
