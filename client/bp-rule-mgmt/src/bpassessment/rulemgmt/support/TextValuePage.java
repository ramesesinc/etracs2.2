/*
 * IntegerValuePage.java
 *
 * Created on June 20, 2011, 1:47 PM
 */

package bpassessment.rulemgmt.support;

import com.rameses.rcp.constant.TextCase;

/**
 *
 * @author  jzamora
 */
public class TextValuePage extends javax.swing.JPanel {
    
    /** Creates new form IntegerValuePage */
    public TextValuePage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        xTextField1 = new com.rameses.rcp.control.XTextField();

        setLayout(new java.awt.BorderLayout());

        xTextField1.setName("value");
        xTextField1.setTextCase(TextCase.NONE);
        add(xTextField1, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.control.XTextField xTextField1;
    // End of variables declaration//GEN-END:variables
    
}
