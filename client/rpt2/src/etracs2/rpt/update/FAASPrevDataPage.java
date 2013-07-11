/*
 * FAASUpdatePage.java
 *
 * Created on June 25, 2011, 10:56 AM
 */

package etracs2.rpt.update;

import com.rameses.rcp.ui.annotations.StyleSheet;
import java.math.BigDecimal;

/**
 *
 * @author  jzamora
 */
@StyleSheet("etracs2/rpt/faas/FAASPage.style")
public class FAASPrevDataPage extends javax.swing.JPanel {
    
    /**
     * Creates new form FAASUpdatePage
     */
    public FAASPrevDataPage() {
        initComponents();
    }
    
    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc=" Generated Code ">//GEN-BEGIN:initComponents
    private void initComponents() {
        jPanel2 = new javax.swing.JPanel();
        jPanel3 = new javax.swing.JPanel();
        jPanel4 = new javax.swing.JPanel();
        jPanel5 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        xTextField2 = new com.rameses.rcp.control.XTextField();
        xDateField1 = new com.rameses.rcp.control.XDateField();
        jLabel7 = new javax.swing.JLabel();
        jLabel20 = new javax.swing.JLabel();
        xNumberField4 = new com.rameses.rcp.control.XNumberField();
        jLabel21 = new javax.swing.JLabel();
        xTextField6 = new com.rameses.rcp.control.XTextField();
        xTextField22 = new com.rameses.rcp.control.XTextField();
        xTextField23 = new com.rameses.rcp.control.XTextField();
        jPanel6 = new javax.swing.JPanel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        xTextField3 = new com.rameses.rcp.control.XTextField();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        xTextField5 = new com.rameses.rcp.control.XTextField();
        xNumberField2 = new com.rameses.rcp.control.XNumberField();
        xNumberField3 = new com.rameses.rcp.control.XNumberField();
        xTextField4 = new com.rameses.rcp.control.XTextField();
        jPanel7 = new javax.swing.JPanel();
        jLabel22 = new javax.swing.JLabel();
        jLabel23 = new javax.swing.JLabel();
        xLabel3 = new com.rameses.rcp.control.XLabel();
        jLabel24 = new javax.swing.JLabel();
        xTextField7 = new com.rameses.rcp.control.XTextField();
        jLabel25 = new javax.swing.JLabel();
        jLabel26 = new javax.swing.JLabel();
        jLabel27 = new javax.swing.JLabel();
        xTextField8 = new com.rameses.rcp.control.XTextField();
        xTextField9 = new com.rameses.rcp.control.XTextField();
        xTextField20 = new com.rameses.rcp.control.XTextField();
        xTextField21 = new com.rameses.rcp.control.XTextField();
        jPanel8 = new javax.swing.JPanel();
        jPanel10 = new javax.swing.JPanel();
        jLabel32 = new javax.swing.JLabel();
        jLabel33 = new javax.swing.JLabel();
        jLabel38 = new javax.swing.JLabel();
        xTextField10 = new com.rameses.rcp.control.XTextField();
        xTextField11 = new com.rameses.rcp.control.XTextField();
        xTextField12 = new com.rameses.rcp.control.XTextField();
        jPanel11 = new javax.swing.JPanel();
        jLabel35 = new javax.swing.JLabel();
        jLabel36 = new javax.swing.JLabel();
        jLabel37 = new javax.swing.JLabel();
        xTextField13 = new com.rameses.rcp.control.XTextField();
        xTextField14 = new com.rameses.rcp.control.XTextField();
        xTextField15 = new com.rameses.rcp.control.XTextField();
        xTextField17 = new com.rameses.rcp.control.XTextField();
        xTextField16 = new com.rameses.rcp.control.XTextField();
        jLabel39 = new javax.swing.JLabel();
        jLabel40 = new javax.swing.JLabel();
        xTextField18 = new com.rameses.rcp.control.XTextField();
        xTextField19 = new com.rameses.rcp.control.XTextField();
        jLabel41 = new javax.swing.JLabel();
        jLabel42 = new javax.swing.JLabel();

        setLayout(new java.awt.BorderLayout());

        setPreferredSize(new java.awt.Dimension(817, 414));
        jPanel2.setLayout(new java.awt.BorderLayout());

        jPanel3.setLayout(null);

        jPanel4.setLayout(null);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder1 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder1.setTitle("General Information");
        jPanel4.setBorder(xTitledBorder1);
        jPanel5.setLayout(null);

        jLabel2.setText("Title Type :");
        jLabel2.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel5.add(jLabel2);
        jLabel2.setBounds(0, 0, 74, 19);

        jLabel3.setText("Title No. :");
        jLabel3.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel5.add(jLabel3);
        jLabel3.setBounds(0, 20, 74, 19);

        jLabel6.setText("Restriction :");
        jLabel6.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel5.add(jLabel6);
        jLabel6.setBounds(0, 40, 74, 19);

        xTextField2.setCaption("TD No.");
        xTextField2.setDepends(new String[] {"faas.info.titletype"});
        xTextField2.setEnabled(false);
        xTextField2.setName("entity.oldinfo.titleno");
        jPanel5.add(xTextField2);
        xTextField2.setBounds(80, 20, 88, 20);

        xDateField1.setDepends(new String[] {"faas.info.titletype"});
        xDateField1.setEnabled(false);
        xDateField1.setName("entity.oldinfo.titledate");
        jPanel5.add(xDateField1);
        xDateField1.setBounds(220, 20, 78, 20);

        jLabel7.setText("  Date :");
        jLabel7.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel5.add(jLabel7);
        jLabel7.setBounds(164, 20, 52, 19);

        jLabel20.setText("Back Tax Yrs :");
        jLabel20.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel5.add(jLabel20);
        jLabel20.setBounds(0, 60, 74, 19);

        xNumberField4.setDepends(new String[] {"faas.info.txntype"});
        xNumberField4.setEnabled(false);
        xNumberField4.setFieldType(Integer.class);
        xNumberField4.setName("entity.oldinfo.backtaxyrs");
        jPanel5.add(xNumberField4);
        xNumberField4.setBounds(80, 60, 88, 20);

        jLabel21.setText("  Claim # :");
        jLabel21.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel5.add(jLabel21);
        jLabel21.setBounds(164, 60, 54, 19);

        xTextField6.setCaption("TD No.");
        xTextField6.setDepends(new String[] {"faas.info.titletype"});
        xTextField6.setEnabled(false);
        xTextField6.setName("entity.oldinfo.claimno");
        xTextField6.setReadonly(true);
        jPanel5.add(xTextField6);
        xTextField6.setBounds(220, 60, 78, 20);

        xTextField22.setCaption("TD No.");
        xTextField22.setEnabled(false);
        xTextField22.setName("entity.oldinfo.titletype");
        jPanel5.add(xTextField22);
        xTextField22.setBounds(80, 0, 218, 20);

        xTextField23.setCaption("TD No.");
        xTextField23.setDepends(new String[] {"faas.info.titletype"});
        xTextField23.setEnabled(false);
        xTextField23.setName("entity.oldinfo.restriction");
        jPanel5.add(xTextField23);
        xTextField23.setBounds(80, 40, 218, 20);

        jPanel4.add(jPanel5);
        jPanel5.setBounds(8, 22, 320, 90);

        jPanel6.setLayout(null);

        jLabel9.setText("Previous TD No. :");
        jLabel9.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel6.add(jLabel9);
        jLabel9.setBounds(0, 0, 100, 19);

        jLabel10.setText("Previous MV");
        jLabel10.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel6.add(jLabel10);
        jLabel10.setBounds(0, 38, 100, 19);

        jLabel11.setText("Previous Owner :");
        jLabel11.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel6.add(jLabel11);
        jLabel11.setBounds(0, 57, 100, 19);

        xTextField3.setEnabled(false);
        xTextField3.setName("entity.oldinfo.prevtdno");
        jPanel6.add(xTextField3);
        xTextField3.setBounds(100, 0, 378, 20);

        jLabel15.setText("Prev. AV");
        jLabel15.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel6.add(jLabel15);
        jLabel15.setBounds(238, 38, 60, 19);

        jLabel16.setText("Previous PIN :");
        jLabel16.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel6.add(jLabel16);
        jLabel16.setBounds(0, 19, 100, 19);

        xTextField5.setEnabled(false);
        xTextField5.setName("entity.oldinfo.prevpin");
        jPanel6.add(xTextField5);
        xTextField5.setBounds(100, 19, 378, 20);

        xNumberField2.setCaption("Previous MV");
        xNumberField2.setEnabled(false);
        xNumberField2.setFieldType(BigDecimal.class);
        xNumberField2.setName("entity.oldinfo.prevmv");
        xNumberField2.setPattern("#,##0.00");
        xNumberField2.setRequired(true);
        jPanel6.add(xNumberField2);
        xNumberField2.setBounds(100, 38, 130, 20);

        xNumberField3.setCaption("Prev. AV");
        xNumberField3.setEnabled(false);
        xNumberField3.setFieldType(BigDecimal.class);
        xNumberField3.setName("entity.oldinfo.prevav");
        xNumberField3.setPattern("#,##0.00");
        xNumberField3.setRequired(true);
        jPanel6.add(xNumberField3);
        xNumberField3.setBounds(298, 38, 180, 20);

        xTextField4.setEnabled(false);
        xTextField4.setName("entity.oldinfo.prevowner");
        jPanel6.add(xTextField4);
        xTextField4.setBounds(100, 57, 378, 20);

        jPanel4.add(jPanel6);
        jPanel6.setBounds(334, 22, 460, 90);

        jPanel3.add(jPanel4);
        jPanel4.setBounds(10, 10, 802, 120);

        jPanel7.setLayout(null);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder2 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder2.setTitle("Ownership Information");
        jPanel7.setBorder(xTitledBorder2);
        jLabel22.setText("Owner");
        jLabel22.setPreferredSize(new java.awt.Dimension(40, 19));
        jPanel7.add(jLabel22);
        jLabel22.setBounds(10, 24, 96, 18);

        jLabel23.setText("Administrator :");
        jLabel23.setPreferredSize(new java.awt.Dimension(40, 19));
        jPanel7.add(jLabel23);
        jLabel23.setBounds(10, 62, 96, 18);

        xLabel3.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(153, 153, 153)));
        xLabel3.setName("entity.oldinfo.taxpayeraddress");
        xLabel3.setPreferredSize(new java.awt.Dimension(42, 19));
        jPanel7.add(xLabel3);
        xLabel3.setBounds(528, 24, 266, 19);

        jLabel24.setText("Declared Owner");
        jLabel24.setPreferredSize(new java.awt.Dimension(40, 19));
        jPanel7.add(jLabel24);
        jLabel24.setBounds(10, 43, 96, 18);

        xTextField7.setCaption("Owner");
        xTextField7.setEnabled(false);
        xTextField7.setName("entity.oldinfo.ownername");
        xTextField7.setRequired(true);
        jPanel7.add(xTextField7);
        xTextField7.setBounds(104, 43, 360, 20);

        jLabel25.setText("Address");
        jLabel25.setPreferredSize(new java.awt.Dimension(40, 19));
        jPanel7.add(jLabel25);
        jLabel25.setBounds(468, 24, 60, 18);

        jLabel26.setText("Address :");
        jLabel26.setPreferredSize(new java.awt.Dimension(40, 19));
        jPanel7.add(jLabel26);
        jLabel26.setBounds(468, 62, 60, 18);

        jLabel27.setText("Address");
        jLabel27.setPreferredSize(new java.awt.Dimension(40, 19));
        jPanel7.add(jLabel27);
        jLabel27.setBounds(468, 43, 60, 18);

        xTextField8.setCaption("Owner Address");
        xTextField8.setEnabled(false);
        xTextField8.setName("entity.oldinfo.owneraddress");
        xTextField8.setRequired(true);
        jPanel7.add(xTextField8);
        xTextField8.setBounds(528, 43, 266, 20);

        xTextField9.setCaption("Owner");
        xTextField9.setEnabled(false);
        xTextField9.setName("entity.oldinfo.administratorname");
        jPanel7.add(xTextField9);
        xTextField9.setBounds(104, 62, 360, 20);

        xTextField20.setCaption("Owner Address");
        xTextField20.setEnabled(false);
        xTextField20.setName("entity.oldinfo.administratoraddress");
        jPanel7.add(xTextField20);
        xTextField20.setBounds(528, 62, 266, 20);

        xTextField21.setCaption("Owner");
        xTextField21.setEnabled(false);
        xTextField21.setName("entity.oldinfo.taxpayername");
        xTextField21.setRequired(true);
        jPanel7.add(xTextField21);
        xTextField21.setBounds(104, 24, 360, 20);

        jPanel3.add(jPanel7);
        jPanel7.setBounds(10, 130, 802, 90);

        jPanel8.setLayout(null);

        com.rameses.rcp.control.border.XTitledBorder xTitledBorder3 = new com.rameses.rcp.control.border.XTitledBorder();
        xTitledBorder3.setTitle("Real Property Information");
        jPanel8.setBorder(xTitledBorder3);
        jPanel10.setLayout(null);

        jLabel32.setText("Block No. :");
        jLabel32.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel10.add(jLabel32);
        jLabel32.setBounds(2, 25, 70, 19);

        jLabel33.setText("Cadastral");
        jLabel33.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel10.add(jLabel33);
        jLabel33.setBounds(0, 4, 70, 19);

        jLabel38.setText("Survey No. :");
        jLabel38.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel10.add(jLabel38);
        jLabel38.setBounds(134, 25, 66, 19);

        xTextField10.setCaption("Cadastral ");
        xTextField10.setEnabled(false);
        xTextField10.setName("entity.oldrp.cadastrallotno");
        xTextField10.setRequired(true);
        jPanel10.add(xTextField10);
        xTextField10.setBounds(72, 4, 254, 20);

        xTextField11.setEnabled(false);
        xTextField11.setName("entity.oldrp.blockno");
        jPanel10.add(xTextField11);
        xTextField11.setBounds(72, 25, 58, 20);

        xTextField12.setEnabled(false);
        xTextField12.setName("entity.oldrp.surveyno");
        jPanel10.add(xTextField12);
        xTextField12.setBounds(198, 25, 128, 20);

        jPanel8.add(jPanel10);
        jPanel10.setBounds(6, 22, 330, 64);

        jPanel11.setLayout(null);

        jLabel35.setText("Purok/Zone :");
        jLabel35.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel11.add(jLabel35);
        jLabel35.setBounds(4, 42, 70, 19);

        jLabel36.setText("Street :");
        jLabel36.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel11.add(jLabel36);
        jLabel36.setBounds(4, 23, 70, 19);

        jLabel37.setText("House No. :");
        jLabel37.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel11.add(jLabel37);
        jLabel37.setBounds(4, 4, 70, 19);

        xTextField13.setEnabled(false);
        xTextField13.setName("entity.oldrp.houseno");
        jPanel11.add(xTextField13);
        xTextField13.setBounds(72, 4, 128, 20);

        xTextField14.setEnabled(false);
        xTextField14.setName("entity.oldrp.street");
        jPanel11.add(xTextField14);
        xTextField14.setBounds(72, 23, 128, 20);

        xTextField15.setEnabled(false);
        xTextField15.setName("entity.oldrp.purok");
        jPanel11.add(xTextField15);
        xTextField15.setBounds(72, 42, 128, 20);

        jPanel8.add(jPanel11);
        jPanel11.setBounds(336, 22, 206, 64);

        xTextField17.setCaption("South Boundary");
        xTextField17.setEnabled(false);
        xTextField17.setName("entity.oldrp.east");
        xTextField17.setRequired(true);
        jPanel8.add(xTextField17);
        xTextField17.setBounds(78, 108, 458, 20);

        xTextField16.setCaption("North Boundary");
        xTextField16.setEnabled(false);
        xTextField16.setName("entity.oldrp.north");
        xTextField16.setRequired(true);
        jPanel8.add(xTextField16);
        xTextField16.setBounds(78, 90, 458, 20);

        jLabel39.setText("North");
        jLabel39.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel8.add(jLabel39);
        jLabel39.setBounds(8, 90, 70, 19);

        jLabel40.setText("East");
        jLabel40.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel8.add(jLabel40);
        jLabel40.setBounds(8, 108, 70, 19);

        xTextField18.setCaption("West Boundary");
        xTextField18.setEnabled(false);
        xTextField18.setName("entity.oldrp.west");
        xTextField18.setRequired(true);
        jPanel8.add(xTextField18);
        xTextField18.setBounds(78, 144, 458, 20);

        xTextField19.setCaption("East Boundary");
        xTextField19.setEnabled(false);
        xTextField19.setName("entity.oldrp.south");
        xTextField19.setRequired(true);
        jPanel8.add(xTextField19);
        xTextField19.setBounds(78, 126, 458, 20);

        jLabel41.setText("South");
        jLabel41.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel8.add(jLabel41);
        jLabel41.setBounds(8, 126, 70, 19);

        jLabel42.setText("West");
        jLabel42.setPreferredSize(new java.awt.Dimension(34, 19));
        jPanel8.add(jLabel42);
        jLabel42.setBounds(8, 144, 70, 19);

        jPanel3.add(jPanel8);
        jPanel8.setBounds(10, 220, 802, 174);

        jPanel2.add(jPanel3, java.awt.BorderLayout.CENTER);

        add(jPanel2, java.awt.BorderLayout.CENTER);

    }// </editor-fold>//GEN-END:initComponents
    
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel26;
    private javax.swing.JLabel jLabel27;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel32;
    private javax.swing.JLabel jLabel33;
    private javax.swing.JLabel jLabel35;
    private javax.swing.JLabel jLabel36;
    private javax.swing.JLabel jLabel37;
    private javax.swing.JLabel jLabel38;
    private javax.swing.JLabel jLabel39;
    private javax.swing.JLabel jLabel40;
    private javax.swing.JLabel jLabel41;
    private javax.swing.JLabel jLabel42;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel10;
    private javax.swing.JPanel jPanel11;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private com.rameses.rcp.control.XDateField xDateField1;
    private com.rameses.rcp.control.XLabel xLabel3;
    private com.rameses.rcp.control.XNumberField xNumberField2;
    private com.rameses.rcp.control.XNumberField xNumberField3;
    private com.rameses.rcp.control.XNumberField xNumberField4;
    private com.rameses.rcp.control.XTextField xTextField10;
    private com.rameses.rcp.control.XTextField xTextField11;
    private com.rameses.rcp.control.XTextField xTextField12;
    private com.rameses.rcp.control.XTextField xTextField13;
    private com.rameses.rcp.control.XTextField xTextField14;
    private com.rameses.rcp.control.XTextField xTextField15;
    private com.rameses.rcp.control.XTextField xTextField16;
    private com.rameses.rcp.control.XTextField xTextField17;
    private com.rameses.rcp.control.XTextField xTextField18;
    private com.rameses.rcp.control.XTextField xTextField19;
    private com.rameses.rcp.control.XTextField xTextField2;
    private com.rameses.rcp.control.XTextField xTextField20;
    private com.rameses.rcp.control.XTextField xTextField21;
    private com.rameses.rcp.control.XTextField xTextField22;
    private com.rameses.rcp.control.XTextField xTextField23;
    private com.rameses.rcp.control.XTextField xTextField3;
    private com.rameses.rcp.control.XTextField xTextField4;
    private com.rameses.rcp.control.XTextField xTextField5;
    private com.rameses.rcp.control.XTextField xTextField6;
    private com.rameses.rcp.control.XTextField xTextField7;
    private com.rameses.rcp.control.XTextField xTextField8;
    private com.rameses.rcp.control.XTextField xTextField9;
    // End of variables declaration//GEN-END:variables
    
}