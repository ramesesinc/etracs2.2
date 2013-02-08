/*
 * EntityContactPage.java
 *
 * Created on January 30, 2013, 11:03 AM
 */

package etracs2.entity;

/**
 *
 * @author  Rameses
 */
public class EntityCardPage extends javax.swing.JPanel {
    
    /** Creates new form EntityContactPage */
    public EntityCardPage() {
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
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xComboBox1 = new com.rameses.rcp.control.XComboBox();
        xTextField1 = new com.rameses.rcp.control.XTextField();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        jPanel2 = new javax.swing.JPanel();
        xActionBar1 = new com.rameses.rcp.control.XActionBar();

        jPanel1.setLayout(new java.awt.BorderLayout());

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("Card Detail");
        formPanel1.setBorder(xTitledBorder1);
        formPanel1.setPreferredSize(new java.awt.Dimension(104, 150));
        xComboBox1.setCaption("Type ");
        xComboBox1.setCaptionWidth(90);
        xComboBox1.setImmediate(true);
        xComboBox1.setItems("idTypes");
        xComboBox1.setName("card.cardtype");
        xComboBox1.setPreferredSize(new java.awt.Dimension(0, 22));
        xComboBox1.setRequired(true);
        formPanel1.add(xComboBox1);

        xTextField1.setCaption("Card No.");
        xTextField1.setCaptionWidth(90);
        xTextField1.setName("card.cardno");
        xTextField1.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField1.setRequired(true);
        xTextField1.setTextCase(com.rameses.rcp.constant.TextCase.NONE);
        formPanel1.add(xTextField1);

        xTextField2.setCaption("Expiry");
        xTextField2.setCaptionWidth(90);
        xTextField2.setName("card.expiry");
        xTextField2.setPreferredSize(new java.awt.Dimension(0, 19));
        xTextField2.setTextCase(com.rameses.rcp.constant.TextCase.NONE);
        formPanel1.add(xTextField2);

        jPanel1.add(formPanel1, java.awt.BorderLayout.CENTER);

        jPanel2.setLayout(new java.awt.BorderLayout());

        xActionBar1.setName("formActions");
        xActionBar1.setPadding(new java.awt.Insets(5, 0, 0, 0));
        xActionBar1.setUseToolBar(false);
        jPanel2.add(xActionBar1, java.awt.BorderLayout.EAST);

        jPanel1.add(jPanel2, java.awt.BorderLayout.SOUTH);

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 333, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 163, Short.MAX_VALUE)
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XComboBox xComboBox1;
    private com.rameses.rcp.control.XTextField xTextField1;
    private com.rameses.rcp.control.XTextField xTextField2;
    // End of variables declaration//GEN-END:variables
    
}