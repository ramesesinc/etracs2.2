package etracs2.bp.signatory;
/*
 * SignatoryTemplateListPage.java
 *
 * Created on May 27, 2013, 3:59 PM
 */

/**
 *
 * @author  rameses
 */
public class SignatoryTemplateListPage extends javax.swing.JPanel {
    
    /** Creates new form SignatoryTemplateListPage */
    public SignatoryTemplateListPage() {
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
        xDataTable1 = new com.rameses.rcp.control.XDataTable();

        setLayout(new java.awt.BorderLayout());

        xActionBar1.setName("formActions");
        add(xActionBar1, java.awt.BorderLayout.NORTH);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("List of Signatory Templates");
        xDataTable1.setBorder(xTitledBorder1);
        xDataTable1.setHandler("listHandler");
        xDataTable1.setName("selectedItem");
        add(xDataTable1, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.control.XActionBar xActionBar1;
    private com.rameses.rcp.control.XDataTable xDataTable1;
    // End of variables declaration//GEN-END:variables
    
}
