/*
 * ApplicationInitialPage.java
 *
 * Created on June 6, 2011, 1:20 PM
 */

package etracs2.bp.application;

import com.rameses.rcp.ui.annotations.StyleSheet;
import java.math.BigDecimal;

/**
 *
 * @author  MS
 */
@StyleSheet("etracs2/bp/application/ApplicationInitialPage.style")
public class ApplicationForAssessmentPage extends javax.swing.JPanel {
    
    /** Creates new form ApplicationInitialPage */
    public ApplicationForAssessmentPage() {
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
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        xLabel2 = new com.rameses.rcp.control.XLabel();
        formPanel2 = new com.rameses.rcp.util.FormPanel();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        formPanel3 = new com.rameses.rcp.util.FormPanel();
        xLabel6 = new com.rameses.rcp.control.XLabel();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        xLabel8 = new com.rameses.rcp.control.XLabel();
        xDataTable2 = new com.rameses.rcp.control.XDataTable();
        xDataTable3 = new com.rameses.rcp.control.XDataTable();
        jLabel1 = new javax.swing.JLabel();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xDataTable4 = new com.rameses.rcp.control.XDataTable();

        setLayout(new java.awt.BorderLayout());

        setPreferredSize(new java.awt.Dimension(546, 229));
        xActionBar1.setName("formActions");
        add(xActionBar1, java.awt.BorderLayout.NORTH);

        jPanel3.setLayout(null);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Application Info");
        jPanel3.setBorder(xTitledBorder1);

        com.rameses.rcp.control.border.XLineBorder xLineBorder1 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder1.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel1.setBorder(xLineBorder1);
        xLabel1.setCaption("Permittee");
        xLabel1.setExpression("#{application.info.taxpayername}");
        xLabel1.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel1.add(xLabel1);

        com.rameses.rcp.control.border.XLineBorder xLineBorder2 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder2.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel2.setBorder(xLineBorder2);
        xLabel2.setCaption("Address");
        xLabel2.setExpression("#{application.info.taxpayeraddress}");
        xLabel2.setName("application.info.taxpayeraddress");
        xLabel2.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel1.add(xLabel2);

        jPanel3.add(formPanel1);
        formPanel1.setBounds(0, 20, 410, 50);

        com.rameses.rcp.control.border.XLineBorder xLineBorder3 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder3.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel3.setBorder(xLineBorder3);
        xLabel3.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        xLabel3.setCaption("Date");
        xLabel3.setCaptionWidth(100);
        xLabel3.setExpression("#{application.txndate}");
        xLabel3.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel2.add(xLabel3);

        com.rameses.rcp.control.border.XLineBorder xLineBorder4 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder4.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel5.setBorder(xLineBorder4);
        xLabel5.setHorizontalAlignment(javax.swing.SwingConstants.TRAILING);
        xLabel5.setCaption("Applicable Year");
        xLabel5.setCaptionWidth(100);
        xLabel5.setExpression("#{application.iyear}");
        xLabel5.setName("application.year");
        xLabel5.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel2.add(xLabel5);

        jPanel3.add(formPanel2);
        formPanel2.setBounds(410, 20, 310, 50);

        com.rameses.rcp.control.border.XLineBorder xLineBorder5 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder5.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel6.setBorder(xLineBorder5);
        xLabel6.setCaption("Trade Name");
        xLabel6.setExpression("#{application.info.tradename}");
        xLabel6.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel3.add(xLabel6);

        com.rameses.rcp.control.border.XLineBorder xLineBorder6 = new com.rameses.rcp.control.border.XLineBorder();
        xLineBorder6.setLineColor(new java.awt.Color(204, 204, 204));
        xLabel7.setBorder(xLineBorder6);
        xLabel7.setCaption("Address");
        xLabel7.setExpression("#{application.info.businessaddress}");
        xLabel7.setName("application.info.taxpayeraddress");
        xLabel7.setPreferredSize(new java.awt.Dimension(0, 18));
        formPanel3.add(xLabel7);

        jPanel3.add(formPanel3);
        formPanel3.setBounds(0, 80, 720, 50);

        xLabel4.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        xLabel4.setExpression("<html>APP No.: #{application.txnno}(<font color='blue''>#{application.docstate}</font>)</html>");
        xLabel4.setFont(new java.awt.Font("Tahoma", 1, 12));
        jPanel3.add(xLabel4);
        xLabel4.setBounds(380, 0, 350, 17);

        xLabel8.setExpression("<html>#{application.txntype} (<font color='red'>#{application.txnmode}</font>)</html>");
        xLabel8.setFont(new java.awt.Font("Tahoma", 1, 12));
        jPanel3.add(xLabel8);
        xLabel8.setBounds(100, 0, 260, 20);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Required Informations");
        xDataTable2.setBorder(xTitledBorder2);
        xDataTable2.setDepends(new String[] {"appdata"});
        xDataTable2.setDynamic(true);
        xDataTable2.setHandler("appinfoListHandler");
        xDataTable2.setImmediate(true);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Requirements");
        xDataTable3.setBorder(xTitledBorder3);
        xDataTable3.setDynamic(true);
        xDataTable3.setHandler("requirementHandler");
        xDataTable3.setImmediate(true);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel1.setText("Total Assessment :");
        jLabel1.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 2, 1, 2));

        xNumberField1.setDepends(new String[] {"appdata"});
        xNumberField1.setEnabled(false);
        xNumberField1.setFieldType(BigDecimal.class);
        xNumberField1.setFont(new java.awt.Font("Arial", 1, 12));
        xNumberField1.setName("totalAssessment");
        xNumberField1.setPattern("#,##0.00");

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder4 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder4.setTitle("Application List");
        xDataTable4.setBorder(xTitledBorder4);
        xDataTable4.setDynamic(true);
        xDataTable4.setHandler("applistHandler");
        xDataTable4.setImmediate(true);
        xDataTable4.setName("appdata");

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                        .add(xDataTable3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 730, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                        .add(jPanel2Layout.createSequentialGroup()
                            .add(jLabel1)
                            .add(19, 19, 19)
                            .add(xNumberField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 160, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                    .add(xDataTable2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 730, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(xDataTable4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 730, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 730, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(56, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 140, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xDataTable4, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 80, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xDataTable2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 110, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xDataTable3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 165, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jLabel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 20, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(xNumberField1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .add(11, 11, 11))
        );
        add(jPanel2, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.util.FormPanel formPanel2;
    private com.rameses.rcp.util.FormPanel formPanel3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XDataTable xDataTable2;
    private com.rameses.rcp.control.XDataTable xDataTable3;
    private com.rameses.rcp.control.XDataTable xDataTable4;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel2;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLabel xLabel5;
    private com.rameses.rcp.control.XLabel xLabel6;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XLabel xLabel8;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    // End of variables declaration//GEN-END:variables
    
}
