package system.user.ui;

import com.rameses.rcp.constant.TextCase;
/*
 * LoginPage.java
 *
 * Created on August 5, 2010, 3:25 PM
 */

/**
 *
 * @author  rameses
 */
public class SuspendPage extends javax.swing.JPanel {
    
    /** Creates new form LoginPage */
    public SuspendPage() {
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
        xButton2 = new com.rameses.rcp.control.XButton();
        xButton4 = new com.rameses.rcp.control.XButton();
        xButton3 = new com.rameses.rcp.control.XButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        formPanel1 = new com.rameses.rcp.util.FormPanel();
        xPasswordField1 = new com.rameses.rcp.control.XPasswordField();
        jSeparator1 = new javax.swing.JSeparator();

        setPreferredSize(new java.awt.Dimension(376, 229));
        xButton2.setMnemonic('r');
        xButton2.setText("Resume");
        xButton2.setDefaultCommand(true);
        xButton2.setName("resume");
        xButton2.setPreferredSize(new java.awt.Dimension(71, 32));
        jPanel1.add(xButton2);

        xButton4.setMnemonic('l');
        xButton4.setText("Log Off");
        xButton4.setImmediate(true);
        xButton4.setName("logoff");
        xButton4.setPreferredSize(new java.awt.Dimension(69, 32));
        jPanel1.add(xButton4);

        xButton3.setMnemonic('s');
        xButton3.setText("Shutdown");
        xButton3.setImmediate(true);
        xButton3.setName("exit");
        xButton3.setPreferredSize(new java.awt.Dimension(81, 32));
        jPanel1.add(xButton3);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 11));
        jLabel1.setText("Session Timeout");

        jLabel2.setText("To resume your session, enter your password");

        formPanel1.setCaptionVAlignment(com.rameses.rcp.constant.UIConstants.CENTER);
        formPanel1.setCaptionWidth(90);
        xPasswordField1.setText("xPasswordField1");
        xPasswordField1.setCaption("Password");
        xPasswordField1.setName("pwd");
        xPasswordField1.setPreferredSize(new java.awt.Dimension(200, 24));
        xPasswordField1.setRequired(true);
        formPanel1.add(xPasswordField1);

        org.jdesktop.layout.GroupLayout jPanel2Layout = new org.jdesktop.layout.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
                    .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 339, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                    .add(jLabel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 292, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .add(jLabel1)
                .add(14, 14, 14)
                .add(jLabel2)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(formPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jPanel1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 379, Short.MAX_VALUE)
            .add(jSeparator1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 379, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .addContainerGap()
                .add(jPanel2, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED, 30, Short.MAX_VALUE)
                .add(jSeparator1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, 10, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.RELATED)
                .add(jPanel1, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, org.jdesktop.layout.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private com.rameses.rcp.util.FormPanel formPanel1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JSeparator jSeparator1;
    private com.rameses.rcp.control.XButton xButton2;
    private com.rameses.rcp.control.XButton xButton3;
    private com.rameses.rcp.control.XButton xButton4;
    private com.rameses.rcp.control.XPasswordField xPasswordField1;
    // End of variables declaration//GEN-END:variables
    
}
