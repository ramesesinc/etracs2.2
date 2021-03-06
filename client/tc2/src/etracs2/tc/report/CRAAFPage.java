/*
 * ConsolidatedReportAF.java
 *
 * Created on May 17, 2011, 11:04 AM
 */

package etracs2.tc.report;

/**
 *
 * @author  rameses
 */
public class CRAAFPage extends javax.swing.JPanel {
    
    /** Creates new form ConsolidatedReportAF */
    public CRAAFPage() {
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
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        xComboBox2 = new com.rameses.rcp.control.XComboBox();
        xActionBar1 = new com.rameses.rcp.control.XActionBar();

        setPreferredSize(new java.awt.Dimension(300, 137));

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Consolidated AF Report");
        formPanel1.setBorder(xTitledBorder1);
        xComboBox1.setAllowNull(false);
        xComboBox1.setCaption("Month");
        xComboBox1.setDynamic(true);
        xComboBox1.setExpression("#{name}");
        xComboBox1.setImmediate(true);
        xComboBox1.setItems("monthList");
        xComboBox1.setName("months");
        xComboBox1.setPreferredSize(new java.awt.Dimension(130, 23));
        xComboBox1.setRequired(true);
        formPanel1.add(xComboBox1);

        xDateField1.setCaption("Year");
        xDateField1.setInputFormat("yyyy");
        xDateField1.setName("entity.year");
        xDateField1.setOutputFormat("yyyy");
        xDateField1.setPreferredSize(new java.awt.Dimension(60, 20));
        xDateField1.setRequired(true);
        xDateField1.setValueFormat("yyyy");
        formPanel1.add(xDateField1);

        xComboBox2.setCaption("Collector");
        xComboBox2.setDynamic(true);
        xComboBox2.setExpression("#{name}");
        xComboBox2.setImmediate(true);
        xComboBox2.setItems("collectorList");
        xComboBox2.setName("collector");
        xComboBox2.setPreferredSize(new java.awt.Dimension(0, 23));
        formPanel1.add(xComboBox2);

        xActionBar1.setBorder(new com.rameses.rcp.control.border.XUnderlineBorder());
        xActionBar1.setName("formActions");

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(xActionBar1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 448, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(layout.createSequentialGroup()
                        .add(10, 10, 10)
                        .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 419, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(xActionBar1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 157, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XComboBox xComboBox2;
    private com.rameses.rcp.control.XDateField xDateField1;
    // End of variables declaration//GEN-END:variables
    
}
