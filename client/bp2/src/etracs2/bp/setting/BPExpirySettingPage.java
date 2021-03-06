/*
 * BPExpirySettingPage2.java
 *
 * Created on June 3, 2013, 3:54 PM
 */

package etracs2.bp.setting;

/**
 *
 * @author  rameses
 */
public class BPExpirySettingPage extends javax.swing.JPanel {
    
    /** Creates new form BPExpirySettingPage2 */
    public BPExpirySettingPage() {
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
        jPanel2 = new javax.swing.JPanel();
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xNumberField2 = new com.rameses.rcp.control.XNumberField();
        xLabel1 = new com.rameses.rcp.control.XLabel();
        formPanel5 = new com.rameses.rcp.util.FormPanel();
        xNumberField5 = new com.rameses.rcp.control.XNumberField();
        xNumberField6 = new com.rameses.rcp.control.XNumberField();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        formPanel8 = new com.rameses.rcp.util.FormPanel();
        xNumberField9 = new com.rameses.rcp.control.XNumberField();
        xNumberField10 = new com.rameses.rcp.control.XNumberField();
        xLabel5 = new com.rameses.rcp.control.XLabel();
        formPanel11 = new com.rameses.rcp.util.FormPanel();
        xNumberField13 = new com.rameses.rcp.control.XNumberField();
        xNumberField14 = new com.rameses.rcp.control.XNumberField();
        xLabel7 = new com.rameses.rcp.control.XLabel();
        jPanel3 = new javax.swing.JPanel();
        formPanel2 = new com.rameses.rcp.util.FormPanel();
        xNumberField3 = new com.rameses.rcp.control.XNumberField();
        xNumberField4 = new com.rameses.rcp.control.XNumberField();
        xLabel2 = new com.rameses.rcp.control.XLabel();

        setLayout(new java.awt.BorderLayout());

        xActionBar1.setBorder(new com.rameses.rcp.control.border.XUnderlineBorder());
        xActionBar1.setName("formActions");
        add(xActionBar1, java.awt.BorderLayout.NORTH);

        jPanel2.setLayout(null);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Surcharge Due Date");
        jPanel2.setBorder(xTitledBorder1);

        formPanel1.setAddCaptionColon(false);
        formPanel1.setCaption("-");
        formPanel1.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel1.setOrientation("HORIZONTAL");
        formPanel1.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel1.setShowCaption(false);
        xNumberField1.setCaption("1st Quarter ");
        xNumberField1.setCaptionWidth(110);
        xNumberField1.setFieldType(Integer.class);
        xNumberField1.setName("entity.surcharge.qtr1month");
        xNumberField1.setPattern("00");
        xNumberField1.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel1.add(xNumberField1);

        xNumberField2.setCaption("-");
        xNumberField2.setCaptionWidth(15);
        xNumberField2.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField2.setFieldType(Integer.class);
        xNumberField2.setName("entity.surcharge.qtr1day");
        xNumberField2.setPattern("00");
        xNumberField2.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel1.add(xNumberField2);

        xLabel1.setCaption("(mm-dd)");
        xLabel1.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel1.add(xLabel1);

        jPanel2.add(formPanel1);
        formPanel1.setBounds(10, 30, 618, 22);

        formPanel5.setAddCaptionColon(false);
        formPanel5.setCaption("-");
        formPanel5.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel5.setOrientation("HORIZONTAL");
        formPanel5.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel5.setShowCaption(false);
        xNumberField5.setCaption("2nd Quarter");
        xNumberField5.setCaptionWidth(110);
        xNumberField5.setFieldType(Integer.class);
        xNumberField5.setName("entity.surcharge.qtr2month");
        xNumberField5.setPattern("00");
        xNumberField5.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel5.add(xNumberField5);

        xNumberField6.setCaption("-");
        xNumberField6.setCaptionWidth(15);
        xNumberField6.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField6.setFieldType(Integer.class);
        xNumberField6.setName("entity.surcharge.qtr2day");
        xNumberField6.setPattern("00");
        xNumberField6.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel5.add(xNumberField6);

        xLabel3.setCaption("(mm-dd)");
        xLabel3.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel5.add(xLabel3);

        jPanel2.add(formPanel5);
        formPanel5.setBounds(10, 53, 618, 22);

        formPanel8.setAddCaptionColon(false);
        formPanel8.setCaption("-");
        formPanel8.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel8.setOrientation("HORIZONTAL");
        formPanel8.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel8.setShowCaption(false);
        xNumberField9.setCaption("3rd Quarter");
        xNumberField9.setCaptionWidth(110);
        xNumberField9.setFieldType(Integer.class);
        xNumberField9.setName("entity.surcharge.qtr3month");
        xNumberField9.setPattern("00");
        xNumberField9.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel8.add(xNumberField9);

        xNumberField10.setCaption("-");
        xNumberField10.setCaptionWidth(15);
        xNumberField10.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField10.setFieldType(Integer.class);
        xNumberField10.setName("entity.surcharge.qtr3day");
        xNumberField10.setPattern("00");
        xNumberField10.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel8.add(xNumberField10);

        xLabel5.setCaption("(mm-dd)");
        xLabel5.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel8.add(xLabel5);

        jPanel2.add(formPanel8);
        formPanel8.setBounds(10, 76, 618, 22);

        formPanel11.setAddCaptionColon(false);
        formPanel11.setCaption("-");
        formPanel11.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel11.setOrientation("HORIZONTAL");
        formPanel11.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel11.setShowCaption(false);
        xNumberField13.setCaption("4th Quarter");
        xNumberField13.setCaptionWidth(110);
        xNumberField13.setFieldType(Integer.class);
        xNumberField13.setName("entity.surcharge.qtr4month");
        xNumberField13.setPattern("00");
        xNumberField13.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel11.add(xNumberField13);

        xNumberField14.setCaption("-");
        xNumberField14.setCaptionWidth(15);
        xNumberField14.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField14.setFieldType(Integer.class);
        xNumberField14.setName("entity.surcharge.qtr4day");
        xNumberField14.setPattern("00");
        xNumberField14.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel11.add(xNumberField14);

        xLabel7.setCaption("(mm-dd)");
        xLabel7.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel11.add(xLabel7);

        jPanel2.add(formPanel11);
        formPanel11.setBounds(10, 99, 618, 22);

        jPanel3.setLayout(null);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Discount Due Date");
        jPanel3.setBorder(xTitledBorder2);

        formPanel2.setAddCaptionColon(false);
        formPanel2.setCaption("-");
        formPanel2.setCaptionBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        formPanel2.setOrientation("HORIZONTAL");
        formPanel2.setPadding(new java.awt.Insets(1, 5, 5, 5));
        formPanel2.setShowCaption(false);
        xNumberField3.setCaption("1st Quarter ");
        xNumberField3.setCaptionWidth(110);
        xNumberField3.setFieldType(Integer.class);
        xNumberField3.setName("entity.discount.qtr1month");
        xNumberField3.setPattern("00");
        xNumberField3.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel2.add(xNumberField3);

        xNumberField4.setCaption("-");
        xNumberField4.setCaptionWidth(15);
        xNumberField4.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        xNumberField4.setFieldType(Integer.class);
        xNumberField4.setName("entity.discount.qtr1day");
        xNumberField4.setPattern("00");
        xNumberField4.setPreferredSize(new java.awt.Dimension(40, 19));
        formPanel2.add(xNumberField4);

        xLabel2.setCaption("(mm-dd)");
        xLabel2.setCellPadding(new java.awt.Insets(0, 5, 0, 0));
        formPanel2.add(xLabel2);

        jPanel3.add(formPanel2);
        formPanel2.setBounds(10, 30, 618, 22);

        org.jdesktop.layout.GroupLayout jPanel1Layout = new org.jdesktop.layout.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 452, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 452, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(440, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 141, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel3, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 69, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(74, Short.MAX_VALUE))
        );
        add(jPanel1, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.util.FormPanel formPanel11;
    private com.rameses.rcp.util.FormPanel formPanel2;
    private com.rameses.rcp.util.FormPanel formPanel5;
    private com.rameses.rcp.util.FormPanel formPanel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XLabel xLabel1;
    private com.rameses.rcp.control.XLabel xLabel2;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XLabel xLabel5;
    private com.rameses.rcp.control.XLabel xLabel7;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    private com.rameses.rcp.control.XNumberField xNumberField10;
    private com.rameses.rcp.control.XNumberField xNumberField13;
    private com.rameses.rcp.control.XNumberField xNumberField14;
    private com.rameses.rcp.control.XNumberField xNumberField2;
    private com.rameses.rcp.control.XNumberField xNumberField3;
    private com.rameses.rcp.control.XNumberField xNumberField4;
    private com.rameses.rcp.control.XNumberField xNumberField5;
    private com.rameses.rcp.control.XNumberField xNumberField6;
    private com.rameses.rcp.control.XNumberField xNumberField9;
    // End of variables declaration//GEN-END:variables
    
}
