/*
 * BPReportInitPage.java
 *
 * Created on September 8, 2011, 1:31 PM
 */

package etracs2.tc.report.ui;

/**
 *
 * @author  jzamora
 */
public class BPReportInitPage extends javax.swing.JPanel {
    
    /** Creates new form BPReportInitPage */
    public BPReportInitPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xNumberField1 = new com.rameses.rcp.control.XNumberField();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xActionBar1 = new com.rameses.rcp.control.XActionBar();

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Initial Information");
        formPanel1.setBorder(xTitledBorder1);
        xNumberField1.setCaption("Year");
        xNumberField1.setCellPadding(new java.awt.Insets(10, 10, 0, 0));
        xNumberField1.setFieldType(Integer.class);
        xNumberField1.setName("year");
        xNumberField1.setPreferredSize(new java.awt.Dimension(100, 19));
        xNumberField1.setRequired(true);
        formPanel1.add(xNumberField1);

        xComboBox1.setCaption("Txn Type");
        xComboBox1.setCellPadding(new java.awt.Insets(2, 10, 0, 0));
        xComboBox1.setItems("txntypes");
        xComboBox1.setName("txntype");
        xComboBox1.setPreferredSize(new java.awt.Dimension(150, 22));
        formPanel1.add(xComboBox1);

        xActionBar1.setBorder(new com.rameses.rcp.control.border.XUnderlineBorder());
        xActionBar1.setName("formActions");
        xActionBar1.setPadding(new java.awt.Insets(0, 5, 0, 0));

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(xActionBar1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 400, Short.MAX_VALUE)
            .add(layout.createSequentialGroup()
                .add(10, 10, 10)
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 366, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .add(24, 24, 24))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(xActionBar1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 165, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(107, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XNumberField xNumberField1;
    // End of variables declaration//GEN-END:variables
    
}
