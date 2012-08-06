/*
 * LandRPUPage.java
 *
 * Created on June 25, 2011, 1:45 PM
 */

package etracs2.rpt.faas.rpu.land;

import com.rameses.rcp.ui.annotations.StyleSheet;
import java.math.BigDecimal;

/**
 *
 * @author  jzamora
 */
@StyleSheet("etracs2/rpt/faas/rpu/land/LandRPUPage.style")
public class LandRPUPage extends javax.swing.JPanel {
    
    /** Creates new form LandRPUPage */
    public LandRPUPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel1 = new javax.swing.JPanel();
        xActionBar1 = new com.rameses.rcp.control.XActionBar();
        jPanel5 = new javax.swing.JPanel();
        jPanel7 = new javax.swing.JPanel();
        formPanel8 = new com.rameses.rcp.util.FormPanel();
        xLabel4 = new com.rameses.rcp.control.XLabel();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        formPanel9 = new com.rameses.rcp.util.FormPanel();
        xCheckBox1 = new com.rameses.rcp.control.XCheckBox();
        xComboBox5 = new com.rameses.rcp.control.XComboBox();
        formPanel10 = new com.rameses.rcp.util.FormPanel();
        xNumberField14 = new com.rameses.rcp.control.XNumberField();
        xNumberField15 = new com.rameses.rcp.control.XNumberField();
        xNumberField16 = new com.rameses.rcp.control.XNumberField();
        jTabbedPane2 = new javax.swing.JTabbedPane();
        jPanel9 = new javax.swing.JPanel();
        jPanel10 = new javax.swing.JPanel();
        xCheckBox2 = new com.rameses.rcp.control.XCheckBox();
        xButton3 = new com.rameses.rcp.control.XButton();
        jPanel11 = new javax.swing.JPanel();
        formPanel11 = new com.rameses.rcp.util.FormPanel();
        xNumberField17 = new com.rameses.rcp.control.XNumberField();
        xNumberField18 = new com.rameses.rcp.control.XNumberField();
        xNumberField19 = new com.rameses.rcp.control.XNumberField();
        formPanel12 = new com.rameses.rcp.util.FormPanel();
        xNumberField20 = new com.rameses.rcp.control.XNumberField();
        xNumberField21 = new com.rameses.rcp.control.XNumberField();
        formPanel13 = new com.rameses.rcp.util.FormPanel();
        xButton4 = new com.rameses.rcp.control.XButton();
        xNumberField22 = new com.rameses.rcp.control.XNumberField();
        xDataTable3 = new com.rameses.rcp.control.XDataTable();
        jLabel3 = new javax.swing.JLabel();
        xComboBox6 = new com.rameses.rcp.control.XComboBox();
        xLabel6 = new com.rameses.rcp.control.XLabel();
        jPanel12 = new javax.swing.JPanel();
        jPanel13 = new javax.swing.JPanel();
        formPanel14 = new com.rameses.rcp.util.FormPanel();
        xNumberField23 = new com.rameses.rcp.control.XNumberField();
        xNumberField24 = new com.rameses.rcp.control.XNumberField();
        xNumberField25 = new com.rameses.rcp.control.XNumberField();
        xNumberField26 = new com.rameses.rcp.control.XNumberField();
        xDataTable4 = new com.rameses.rcp.control.XDataTable();
        xLabel7 = new com.rameses.rcp.control.XLabel();

        setLayout(new java.awt.BorderLayout());

        setPreferredSize(new java.awt.Dimension(923, 527));
        jPanel1.setLayout(new java.awt.BorderLayout());

        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        xActionBar1.setName("formActions");
        xActionBar1.setPadding(new java.awt.Insets(2, 0, 2, 0));
        xActionBar1.setUseToolBar(false);
        jPanel1.add(xActionBar1, java.awt.BorderLayout.EAST);

        add(jPanel1, java.awt.BorderLayout.SOUTH);

        jPanel5.setOpaque(false);
        jPanel5.setPreferredSize(new java.awt.Dimension(870, 532));

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("General Information");
        formPanel8.setBorder(xTitledBorder1);
        xLabel4.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel4.setCaption("Revision Year");
        xLabel4.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel4.setName("rpu.ry");
        xLabel4.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel8.add(xLabel4);

        xLabel5.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel5.setCaption("PIN");
        xLabel5.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel5.setName("rpu.fullpin");
        xLabel5.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel8.add(xLabel5);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Taxability");
        formPanel9.setBorder(xTitledBorder2);
        xCheckBox1.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xCheckBox1.setText("Taxable? ");
        xCheckBox1.setCaption("Taxability");
        xCheckBox1.setCaptionWidth(90);
        xCheckBox1.setMargin(new java.awt.Insets(0, 0, 0, 0));
        xCheckBox1.setName("rpu.taxable");
        xCheckBox1.setRequestFocus(false);
        formPanel9.add(xCheckBox1);

        xComboBox5.setCaption("Exempt Reason");
        xComboBox5.setCaptionWidth(90);
        xComboBox5.setDepends(new String[] {"rpu.taxable"});
        xComboBox5.setExpression("#{exemptcode}");
        xComboBox5.setItems("exemptions");
        xComboBox5.setName("exemption");
        xComboBox5.setPreferredSize(new java.awt.Dimension(0, 22));
        formPanel9.add(xComboBox5);

        org.jdesktop.layout.GroupLayout jPanel7Layout = new org.jdesktop.layout.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel7Layout.createSequentialGroup()
                .add(formPanel8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 689, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(formPanel9, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 208, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(formPanel9, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 80, Short.MAX_VALUE)
            .add(formPanel8, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 80, Short.MAX_VALUE)
        );

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Assessment Summary");
        formPanel10.setBorder(xTitledBorder3);
        formPanel10.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel10.setCellpadding(new java.awt.Insets(0, 0, 0, 20));
        formPanel10.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        xNumberField14.setEditable(false);
        xNumberField14.setCaption("Base Market Value");
        xNumberField14.setCaptionWidth(110);
        xNumberField14.setCellPadding(new java.awt.Insets(0, 0, 0, 20));
        xNumberField14.setFont(new java.awt.Font("Arial", 1, 12));
        xNumberField14.setName("rpu.totalbmv");
        xNumberField14.setPreferredSize(new java.awt.Dimension(130, 19));
        formPanel10.add(xNumberField14);

        xNumberField15.setEditable(false);
        xNumberField15.setCaption("Market Value");
        xNumberField15.setCellPadding(new java.awt.Insets(0, 0, 0, 20));
        xNumberField15.setFont(new java.awt.Font("Arial", 1, 12));
        xNumberField15.setName("rpu.totalmv");
        xNumberField15.setPreferredSize(new java.awt.Dimension(130, 19));
        formPanel10.add(xNumberField15);

        xNumberField16.setEditable(false);
        xNumberField16.setCaption("Assessed Value");
        xNumberField16.setCaptionWidth(100);
        xNumberField16.setCellPadding(new java.awt.Insets(0, 0, 0, 20));
        xNumberField16.setFont(new java.awt.Font("Arial", 1, 12));
        xNumberField16.setName("rpu.totalav");
        xNumberField16.setPreferredSize(new java.awt.Dimension(120, 19));
        formPanel10.add(xNumberField16);

        jPanel10.setLayout(new java.awt.BorderLayout());

        jPanel10.setBorder(new com.rameses.rcp.control.border.XUnderlineBorder());
        xCheckBox2.setBorder(javax.swing.BorderFactory.createEmptyBorder(0, 0, 0, 0));
        xCheckBox2.setText(" Idle Land");
        xCheckBox2.setMargin(new java.awt.Insets(0, 0, 0, 0));
        xCheckBox2.setName("rpu.info.idleland");
        jPanel10.add(xCheckBox2, java.awt.BorderLayout.CENTER);

        xButton3.setMnemonic('a');
        xButton3.setText("Actual Use Adjustments");
        xButton3.setDepends(new String[] {"selectedLand"});
        xButton3.setName("openActualUseAdjustment");
        jPanel10.add(xButton3, java.awt.BorderLayout.EAST);

        xNumberField17.setEditable(false);
        xNumberField17.setCaption("Total Land Area (sq.m.)");
        xNumberField17.setCaptionWidth(135);
        xNumberField17.setFieldType(BigDecimal.class);
        xNumberField17.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField17.setName("rpu.info.landtotal.areasqm");
        xNumberField17.setPattern("#,##0.000000");
        xNumberField17.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel11.add(xNumberField17);

        xNumberField18.setEditable(false);
        xNumberField18.setCaption("Total Land Area (ha.)");
        xNumberField18.setCaptionWidth(135);
        xNumberField18.setFieldType(BigDecimal.class);
        xNumberField18.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField18.setName("rpu.info.landtotal.areaha");
        xNumberField18.setPattern("#,##0.000000");
        xNumberField18.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel11.add(xNumberField18);

        xNumberField19.setEditable(false);
        xNumberField19.setCaption("Land Base Market Value");
        xNumberField19.setCaptionWidth(135);
        xNumberField19.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField19.setName("rpu.info.landtotal.basemarketvalue");
        xNumberField19.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel11.add(xNumberField19);

        xNumberField20.setEditable(false);
        xNumberField20.setCaption("Land Market Value");
        xNumberField20.setCaptionWidth(150);
        xNumberField20.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField20.setName("rpu.info.landtotal.marketvalue");
        xNumberField20.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel12.add(xNumberField20);

        xNumberField21.setEditable(false);
        xNumberField21.setCaption("Land Assessed Value");
        xNumberField21.setCaptionWidth(150);
        xNumberField21.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField21.setName("rpu.info.landtotal.assessedvalue");
        xNumberField21.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel12.add(xNumberField21);

        formPanel13.setOrientation(com.rameses.rcp.constant.UIConstants.HORIZONTAL);
        formPanel13.setPadding(new java.awt.Insets(0, 0, 0, 0));
        formPanel13.setPreferredSize(new java.awt.Dimension(299, 23));
        formPanel13.setShowCaption(false);
        xButton4.setMnemonic('v');
        xButton4.setText("Land Value Adjustments");
        xButton4.setName("openLandValueAdjustments");
        xButton4.setShowCaption(false);
        formPanel13.add(xButton4);

        xNumberField22.setEditable(false);
        xNumberField22.setCaption("Land Market Value");
        xNumberField22.setCaptionWidth(135);
        xNumberField22.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField22.setName("rpu.info.landvalueadjustment");
        xNumberField22.setPreferredSize(new java.awt.Dimension(150, 19));
        xNumberField22.setShowCaption(false);
        formPanel13.add(xNumberField22);

        formPanel12.add(formPanel13);

        org.jdesktop.layout.GroupLayout jPanel11Layout = new org.jdesktop.layout.GroupLayout(jPanel11);
        jPanel11.setLayout(jPanel11Layout);
        jPanel11Layout.setHorizontalGroup(
            jPanel11Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel11Layout.createSequentialGroup()
                .addContainerGap()
                .add(formPanel11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 310, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 259, Short.MAX_VALUE)
                .add(formPanel12, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 309, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel11Layout.setVerticalGroup(
            jPanel11Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, formPanel11, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 75, Short.MAX_VALUE)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, formPanel12, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        xDataTable3.setDynamic(true);
        xDataTable3.setHandler("landListHandler");
        xDataTable3.setName("selectedLand");
        xDataTable3.setShowRowHeader(true);

        jLabel3.setText("<html>Classification <font color=\"red\">*</font>:</html>");

        xComboBox6.setCaption("Classification");
        xComboBox6.setExpression(" #{classcode}");
        xComboBox6.setIndex(-100);
        xComboBox6.setItems("classifications");
        xComboBox6.setName("classification");
        xComboBox6.setRequired(true);

        xLabel6.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        xLabel6.setForeground(new java.awt.Color(153, 0, 0));
        xLabel6.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel6.setName("errorMsg");

        org.jdesktop.layout.GroupLayout jPanel9Layout = new org.jdesktop.layout.GroupLayout(jPanel9);
        jPanel9.setLayout(jPanel9Layout);
        jPanel9Layout.setHorizontalGroup(
            jPanel9Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel9Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 94, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xComboBox6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 128, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(662, Short.MAX_VALUE))
            .add(jPanel11, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .add(jPanel9Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel10, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 878, Short.MAX_VALUE)
                .addContainerGap())
            .add(jPanel9Layout.createSequentialGroup()
                .addContainerGap()
                .add(xLabel6, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 878, Short.MAX_VALUE)
                .addContainerGap())
            .add(jPanel9Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 878, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel9Layout.setVerticalGroup(
            jPanel9Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel9Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel9Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.BASELINE)
                    .add(xComboBox6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 18, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xDataTable3, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 112, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xLabel6, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel11, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        jTabbedPane2.addTab("Land Assessment", jPanel9);

        formPanel14.setPadding(new java.awt.Insets(0, 0, 0, 0));
        xNumberField23.setEditable(false);
        xNumberField23.setCaption("Total Base Market Value");
        xNumberField23.setCaptionWidth(135);
        xNumberField23.setFieldType(BigDecimal.class);
        xNumberField23.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField23.setName("rpu.info.planttotal.basemarketvalue");
        xNumberField23.setPattern("#,##0.00");
        xNumberField23.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel14.add(xNumberField23);

        xNumberField24.setEditable(false);
        xNumberField24.setCaption("Total Adjustment");
        xNumberField24.setCaptionWidth(135);
        xNumberField24.setFieldType(BigDecimal.class);
        xNumberField24.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField24.setName("rpu.info.planttotal.adjustment");
        xNumberField24.setPattern("#,##0.00");
        xNumberField24.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel14.add(xNumberField24);

        xNumberField25.setEditable(false);
        xNumberField25.setCaption("Total Market Value");
        xNumberField25.setCaptionWidth(135);
        xNumberField25.setFieldType(BigDecimal.class);
        xNumberField25.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField25.setName("rpu.info.planttotal.marketvalue");
        xNumberField25.setPattern("#,##0.00");
        xNumberField25.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel14.add(xNumberField25);

        xNumberField26.setEditable(false);
        xNumberField26.setCaption("Total Assessed Value");
        xNumberField26.setCaptionWidth(135);
        xNumberField26.setFont(new java.awt.Font("Arial", 1, 11));
        xNumberField26.setName("rpu.info.planttotal.assessedvalue");
        xNumberField26.setPattern("#,##0.00");
        xNumberField26.setPreferredSize(new java.awt.Dimension(0, 19));
        formPanel14.add(xNumberField26);

        org.jdesktop.layout.GroupLayout jPanel13Layout = new org.jdesktop.layout.GroupLayout(jPanel13);
        jPanel13.setLayout(jPanel13Layout);
        jPanel13Layout.setHorizontalGroup(
            jPanel13Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel13Layout.createSequentialGroup()
                .addContainerGap(578, Short.MAX_VALUE)
                .add(formPanel14, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 310, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel13Layout.setVerticalGroup(
            jPanel13Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel13Layout.createSequentialGroup()
                .add(formPanel14, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        xDataTable4.setDynamic(true);
        xDataTable4.setHandler("planttreeListHandler");
        xDataTable4.setName("selectedPlantTree");
        xDataTable4.setShowRowHeader(true);

        xLabel7.setBorder(javax.swing.BorderFactory.createEtchedBorder());
        xLabel7.setForeground(new java.awt.Color(153, 0, 0));
        xLabel7.setFont(new java.awt.Font("Arial", 1, 11));
        xLabel7.setName("errorMsg");

        org.jdesktop.layout.GroupLayout jPanel12Layout = new org.jdesktop.layout.GroupLayout(jPanel12);
        jPanel12.setLayout(jPanel12Layout);
        jPanel12Layout.setHorizontalGroup(
            jPanel12Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel13, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .add(jPanel12Layout.createSequentialGroup()
                .addContainerGap()
                .add(xLabel7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 878, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .add(jPanel12Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 878, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel12Layout.setVerticalGroup(
            jPanel12Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel12Layout.createSequentialGroup()
                .addContainerGap()
                .add(xDataTable4, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 152, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(xLabel7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel13, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
        );
        jTabbedPane2.addTab("Plants and Trees Assessment", jPanel12);

        org.jdesktop.layout.GroupLayout jPanel5Layout = new org.jdesktop.layout.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel5Layout.createSequentialGroup()
                .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.TRAILING)
                    .add(jPanel5Layout.createSequentialGroup()
                        .add(10, 10, 10)
                        .add(formPanel10, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 903, Short.MAX_VALUE))
                    .add(org.jdesktop.layout.GroupLayout.LEADING, jPanel5Layout.createSequentialGroup()
                        .addContainerGap()
                        .add(jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                            .add(jTabbedPane2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 903, Short.MAX_VALUE)
                            .add(jPanel7, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                .addContainerGap())
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel7, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jTabbedPane2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 316, Short.MAX_VALUE)
                .add(19, 19, 19)
                .add(formPanel10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        add(jPanel5, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel10;
    private com.rameses.rcp.util.FormPanel formPanel11;
    private com.rameses.rcp.util.FormPanel formPanel12;
    private com.rameses.rcp.util.FormPanel formPanel13;
    private com.rameses.rcp.util.FormPanel formPanel14;
    private com.rameses.rcp.util.FormPanel formPanel8;
    private com.rameses.rcp.util.FormPanel formPanel9;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel10;
    private javax.swing.JPanel jPanel11;
    private javax.swing.JPanel jPanel12;
    private javax.swing.JPanel jPanel13;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel9;
    private javax.swing.JTabbedPane jTabbedPane2;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XButton xButton3;
    private com.rameses.rcp.control.XButton xButton4;
    private com.rameses.rcp.control.XCheckBox xCheckBox1;
    private com.rameses.rcp.control.XCheckBox xCheckBox2;
    private com.rameses.rcp.control.XComboBox xComboBox5;
    private com.rameses.rcp.control.XComboBox xComboBox6;
    private com.rameses.rcp.control.XDataTable xDataTable3;
    private com.rameses.rcp.control.XDataTable xDataTable4;
    private com.rameses.rcp.control.XLabel xLabel4;
    private com.rameses.rcp.control.XLabel xLabel5;
    private com.rameses.rcp.control.XLabel xLabel6;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XNumberField xNumberField14;
    private com.rameses.rcp.control.XNumberField xNumberField15;
    private com.rameses.rcp.control.XNumberField xNumberField16;
    private com.rameses.rcp.control.XNumberField xNumberField17;
    private com.rameses.rcp.control.XNumberField xNumberField18;
    private com.rameses.rcp.control.XNumberField xNumberField19;
    private com.rameses.rcp.control.XNumberField xNumberField20;
    private com.rameses.rcp.control.XNumberField xNumberField21;
    private com.rameses.rcp.control.XNumberField xNumberField22;
    private com.rameses.rcp.control.XNumberField xNumberField23;
    private com.rameses.rcp.control.XNumberField xNumberField24;
    private com.rameses.rcp.control.XNumberField xNumberField25;
    private com.rameses.rcp.control.XNumberField xNumberField26;
    // End of variables declaration//GEN-END:variables
    
}
