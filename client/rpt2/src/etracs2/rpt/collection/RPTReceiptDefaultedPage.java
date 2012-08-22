/*
 * GeneralCollectionPage.java
 *
 * Created on April 20, 2011, 11:00 AM
 */

package etracs2.rpt.collection;

import com.rameses.rcp.ui.annotations.StyleSheet;
import java.math.BigDecimal;

/**
 *
 * @author  jzamora
 */
@StyleSheet("etracs2/tc/collection/CollectionPage.style")
public class RPTReceiptDefaultedPage extends javax.swing.JPanel {
    
    /** Creates new form GeneralCollectionPage */
    public RPTReceiptDefaultedPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel3 = new javax.swing.JPanel();
        xLabel9 = new com.rameses.rcp.control.XLabel();
        xActionBar1 = new com.rameses.rcp.control.XActionBar();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xNumberField2 = new com.rameses.rcp.control.XNumberField();
        xNumberField3 = new com.rameses.rcp.control.XNumberField();
        jPanel4 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        formPanel2 = new com.rameses.rcp.util.FormPanel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        xLabel10 = new com.rameses.rcp.control.XLabel();
        xLabel8 = new com.rameses.rcp.control.XLabel();
        xLabel13 = new com.rameses.rcp.control.XLabel();
        xLabel15 = new com.rameses.rcp.control.XLabel();
        xLabel16 = new com.rameses.rcp.control.XLabel();
        xLabel17 = new com.rameses.rcp.control.XLabel();
        xSubFormPanel1 = new com.rameses.rcp.control.XSubFormPanel();
        jPanel6 = new javax.swing.JPanel();
        jPanel7 = new javax.swing.JPanel();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        formPanel4 = new com.rameses.rcp.util.FormPanel();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xLabel2 = new com.rameses.rcp.control.XLabel();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        formPanel5 = new com.rameses.rcp.util.FormPanel();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        xLabel6 = new com.rameses.rcp.control.XLabel();
        xLabel11 = new com.rameses.rcp.control.XLabel();
        xButton1 = new com.rameses.rcp.control.XButton();
        xButton2 = new com.rameses.rcp.control.XButton();
        jPanel8 = new javax.swing.JPanel();
        xLabel12 = new com.rameses.rcp.control.XLabel();
        xDataTable1 = new com.rameses.rcp.control.XDataTable();

        setLayout(new java.awt.BorderLayout());

        setPreferredSize(new java.awt.Dimension(884, 487));
        jPanel3.setLayout(new java.awt.BorderLayout());

        xLabel9.setBackground(new java.awt.Color(1, 47, 8));
        xLabel9.setForeground(new java.awt.Color(255, 255, 255));
        xLabel9.setFont(new java.awt.Font("Arial", 1, 18));
        xLabel9.setName("collectionTitle");
        xLabel9.setOpaque(true);
        jPanel3.add(xLabel9, java.awt.BorderLayout.SOUTH);

        xActionBar1.setName("formActions");
        jPanel3.add(xActionBar1, java.awt.BorderLayout.CENTER);

        add(jPanel3, java.awt.BorderLayout.NORTH);

        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setPreferredSize(new java.awt.Dimension(230, 100));
        jPanel2.setLayout(null);

        jPanel2.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 18));
        jLabel3.setText("Amount Due:");
        jPanel2.add(jLabel3);
        jLabel3.setBounds(12, 14, 158, 20);

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 18));
        jLabel4.setText("Total Payment:");
        jPanel2.add(jLabel4);
        jLabel4.setBounds(12, 92, 206, 20);

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 18));
        jLabel5.setForeground(new java.awt.Color(204, 0, 0));
        jLabel5.setText("Change:");
        jPanel2.add(jLabel5);
        jLabel5.setBounds(12, 170, 158, 20);

        xNumberField1.setEditable(false);
        xNumberField1.setFieldType(BigDecimal.class);
        xNumberField1.setFocusable(false);
        xNumberField1.setFont(new java.awt.Font("Tahoma", 1, 24));
        xNumberField1.setIndex(100);
        xNumberField1.setName("entity.info.amount");
        xNumberField1.setOpaque(false);
        xNumberField1.setPattern("#,##0.00");
        xNumberField1.setReadonly(true);
        jPanel2.add(xNumberField1);
        xNumberField1.setBounds(12, 38, 206, 48);

        xNumberField2.setEditable(false);
        xNumberField2.setFieldType(BigDecimal.class);
        xNumberField2.setFocusable(false);
        xNumberField2.setFont(new java.awt.Font("Tahoma", 1, 24));
        xNumberField2.setIndex(100);
        xNumberField2.setName("entity.info.totalpayment");
        xNumberField2.setOpaque(false);
        xNumberField2.setPattern("#,##0.00");
        xNumberField2.setReadonly(true);
        jPanel2.add(xNumberField2);
        xNumberField2.setBounds(12, 116, 206, 48);

        xNumberField3.setEditable(false);
        xNumberField3.setFieldType(BigDecimal.class);
        xNumberField3.setFocusable(false);
        xNumberField3.setFont(new java.awt.Font("Tahoma", 1, 24));
        xNumberField3.setForeground(new java.awt.Color(204, 0, 0));
        xNumberField3.setIndex(100);
        xNumberField3.setName("entity.info.change");
        xNumberField3.setOpaque(false);
        xNumberField3.setPattern("#,##0.00");
        xNumberField3.setReadonly(true);
        jPanel2.add(xNumberField3);
        xNumberField3.setBounds(12, 196, 206, 48);

        jPanel1.add(jPanel2, java.awt.BorderLayout.CENTER);

        add(jPanel1, java.awt.BorderLayout.EAST);

        jPanel4.setLayout(new java.awt.BorderLayout());

        jPanel5.setLayout(new java.awt.BorderLayout());

        formPanel1.setCaptionBorder(null);
        formPanel1.setCaptionFont(new java.awt.Font("Arial", 0, 12));
        formPanel1.setPadding(new java.awt.Insets(8, 8, 8, 8));

        formPanel2.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel2.setCaptionFont(new java.awt.Font("Arial", 0, 12));
        formPanel2.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel2.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel2.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel2.setShowCaption(false);
        xLabel4.setForeground(new java.awt.Color(204, 0, 0));
        xLabel4.setCaption("AF No. ");
        xLabel4.setCaptionWidth(75);
        xLabel4.setFont(new java.awt.Font("Arial", 1, 14));
        xLabel4.setName("entity.info.afid");
        xLabel4.setPreferredSize(new java.awt.Dimension(60, 20));
        formPanel2.add(xLabel4);

        xLabel7.setForeground(new java.awt.Color(204, 0, 0));
        xLabel7.setCaption("Serial No.");
        xLabel7.setCaptionWidth(80);
        xLabel7.setFont(new java.awt.Font("Arial", 1, 14));
        xLabel7.setName("entity.info.serialno");
        xLabel7.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel2.add(xLabel7);

        xLabel10.setForeground(new java.awt.Color(204, 0, 0));
        xLabel10.setCaption("Stub No.");
        xLabel10.setCaptionWidth(65);
        xLabel10.setFont(new java.awt.Font("Arial", 1, 14));
        xLabel10.setName("entity.info.stubno");
        xLabel10.setPreferredSize(new java.awt.Dimension(100, 20));
        formPanel2.add(xLabel10);

        xLabel8.setForeground(new java.awt.Color(204, 0, 0));
        xLabel8.setCaption("Mode");
        xLabel8.setCaptionWidth(50);
        xLabel8.setFont(new java.awt.Font("Arial", 1, 14));
        xLabel8.setName("entity.info.mode");
        xLabel8.setPreferredSize(new java.awt.Dimension(150, 20));
        formPanel2.add(xLabel8);

        formPanel1.add(formPanel2);

        xLabel13.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel13.setCaption("Payor");
        xLabel13.setCaptionWidth(70);
        xLabel13.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel13.setName("entity.info.payorname");
        xLabel13.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xLabel13);

        xLabel15.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel15.setCaption("Paid By");
        xLabel15.setCaptionWidth(70);
        xLabel15.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel15.setName("entity.info.paidby");
        xLabel15.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xLabel15);

        xLabel16.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel16.setCaption("Address");
        xLabel16.setCaptionWidth(70);
        xLabel16.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel16.setName("entity.info.paidbyaddress");
        xLabel16.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xLabel16);

        xLabel17.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel17.setCaption("Txn Date");
        xLabel17.setCaptionWidth(70);
        xLabel17.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel17.setName("entity.info.txndate");
        xLabel17.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel1.add(xLabel17);

        jPanel5.add(formPanel1, java.awt.BorderLayout.NORTH);

        xSubFormPanel1.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        xSubFormPanel1.setHandler("paymentSummary");
        xSubFormPanel1.setIndex(-10);
        xSubFormPanel1.setPreferredSize(new java.awt.Dimension(40, 120));
        jPanel5.add(xSubFormPanel1, java.awt.BorderLayout.SOUTH);

        jPanel6.setLayout(new java.awt.BorderLayout());

        jPanel7.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 3, 0, 3));
        jPanel7.setPreferredSize(new java.awt.Dimension(100, 120));

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Property Information");
        formPanel3.setBorder(xTitledBorder1);
        formPanel3.setPreferredSize(new java.awt.Dimension(1524, 90));

        formPanel4.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel4.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel4.setShowCaption(false);
        xLabel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel1.setCaption("TD No.");
        xLabel1.setCaptionWidth(60);
        xLabel1.setCellPadding(new java.awt.Insets(0, 0, 0, 10));
        xLabel1.setDepends(new String[] {"selectedItem"});
        xLabel1.setName("selectedItem.tdno");
        xLabel1.setPreferredSize(new java.awt.Dimension(180, 19));
        formPanel4.add(xLabel1);

        xLabel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel2.setCaption("PIN");
        xLabel2.setCaptionWidth(60);
        xLabel2.setCellPadding(new java.awt.Insets(0, 0, 0, 10));
        xLabel2.setDepends(new String[] {"selectedItem"});
        xLabel2.setName("selectedItem.pin");
        xLabel2.setPreferredSize(new java.awt.Dimension(180, 19));
        formPanel4.add(xLabel2);

        xLabel3.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel3.setCaption("Kind");
        xLabel3.setCaptionWidth(100);
        xLabel3.setDepends(new String[] {"selectedItem"});
        xLabel3.setName("selectedItem.rputype");
        xLabel3.setPreferredSize(new java.awt.Dimension(150, 19));
        formPanel4.add(xLabel3);

        formPanel3.add(formPanel4);

        formPanel5.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel5.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel5.setShowCaption(false);
        xLabel5.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel5.setCaption("Location");
        xLabel5.setCaptionWidth(60);
        xLabel5.setCellPadding(new java.awt.Insets(0, 0, 0, 10));
        xLabel5.setDepends(new String[] {"selectedItem"});
        xLabel5.setName("selectedItem.barangay");
        xLabel5.setPreferredSize(new java.awt.Dimension(180, 19));
        formPanel5.add(xLabel5);

        xLabel6.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel6.setCaption("Lot No.");
        xLabel6.setCaptionWidth(60);
        xLabel6.setCellPadding(new java.awt.Insets(0, 0, 0, 10));
        xLabel6.setDepends(new String[] {"selectedItem"});
        xLabel6.setName("selectedItem.cadastrallotno");
        xLabel6.setPreferredSize(new java.awt.Dimension(180, 19));
        formPanel5.add(xLabel6);

        xLabel11.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel11.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        xLabel11.setCaption("Assessed Value");
        xLabel11.setCaptionWidth(100);
        xLabel11.setDepends(new String[] {"selectedItem"});
        xLabel11.setName("assessedvalue");
        xLabel11.setPreferredSize(new java.awt.Dimension(150, 19));
        formPanel5.add(xLabel11);

        formPanel3.add(formPanel5);

        xButton1.setMnemonic('s');
        xButton1.setText("Select All");
        xButton1.setName("selectAll");

        xButton2.setMnemonic('d');
        xButton2.setText("Deselect All");
        xButton2.setName("deselectAll");

        org.jdesktop.layout.GroupLayout jPanel7Layout = new org.jdesktop.layout.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel7Layout.createSequentialGroup()
                .add(xButton1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xButton2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(480, Short.MAX_VALUE))
            .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 648, Short.MAX_VALUE)
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel7Layout.createSequentialGroup()
                .add(formPanel3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 80, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(xButton1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(xButton2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel6.add(jPanel7, java.awt.BorderLayout.SOUTH);

        jPanel8.setLayout(new java.awt.BorderLayout());

        xLabel12.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        xLabel12.setForeground(new java.awt.Color(153, 0, 0));
        xLabel12.setFont(new java.awt.Font("Arial", 1, 14));
        xLabel12.setName("errorMsg");
        jPanel8.add(xLabel12, java.awt.BorderLayout.SOUTH);

        xDataTable1.setHandler("listHandler");
        xDataTable1.setImmediate(true);
        xDataTable1.setIndex(-100);
        xDataTable1.setName("selectedItem");
        jPanel8.add(xDataTable1, java.awt.BorderLayout.CENTER);

        jPanel6.add(jPanel8, java.awt.BorderLayout.CENTER);

        jPanel5.add(jPanel6, java.awt.BorderLayout.CENTER);

        jPanel4.add(jPanel5, java.awt.BorderLayout.CENTER);

        add(jPanel4, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.util.FormPanel formPanel2;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private com.rameses.rcp.util.FormPanel formPanel4;
    private com.rameses.rcp.util.FormPanel formPanel5;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XButton xButton1;
    private com.rameses.rcp.control.XButton xButton2;
    private com.rameses.rcp.control.XDataTable xDataTable1;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel10;
    private com.rameses.rcp.control.XLabel xLabel11;
    private com.rameses.rcp.control.XLabel xLabel12;
    private com.rameses.rcp.control.XLabel xLabel13;
    private com.rameses.rcp.control.XLabel xLabel15;
    private com.rameses.rcp.control.XLabel xLabel16;
    private com.rameses.rcp.control.XLabel xLabel17;
    private com.rameses.rcp.control.XLabel xLabel2;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLabel xLabel5;
    private com.rameses.rcp.control.XLabel xLabel6;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XLabel xLabel8;
    private com.rameses.rcp.control.XLabel xLabel9;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    private com.rameses.rcp.control.XNumberField xNumberField2;
    private com.rameses.rcp.control.XNumberField xNumberField3;
    private com.rameses.rcp.control.XSubFormPanel xSubFormPanel1;
    // End of variables declaration//GEN-END:variables
    
}
