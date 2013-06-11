/*
 * Main.java
 *
 * Created on May 27, 2013, 3:17 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package signatorytemplate22;

import com.rameses.osiris2.test.OsirisTestPlatform;
import com.rameses.rcp.common.SubListModel;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author rameses
 */
public class Main {
    
    /** Creates a new instance of Main */
    public Main() {
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        Map map = new HashMap();
        map.put("app.host", "localhost:8080");
        map.put("app.context", "misocc");
        OsirisTestPlatform.runTest(map, new HashMap());
        
        
    }
    
}
