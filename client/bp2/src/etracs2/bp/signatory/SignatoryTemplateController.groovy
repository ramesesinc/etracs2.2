package etracs2.bp.signatory
        
import com.rameses.rcp.annotations.*
import com.rameses.rcp.common.*
import com.rameses.osiris2.client.*
        
public abstract class SignatoryTemplateController
{
    public abstract String getDocType();
    public abstract Object getService();
    
    def signatories = [];
    def selectedItem;

    def currentIndex = 0;
    def listSize = 0;
    
    public void init() {
        signatories.addAll( service.getList( [doctype:getDocType()] ) );
        currentIndex = signatories.indexOf( selectedItem );
        listSize = signatories.size();
    }
    
    public def addSignatory() {
        def params = [
            doctype : getDocType(),
            indexno : signatories.size() + 1,
            refreshListHandler : { o ->
                signatories.add( o );
                signatoryListHandler.load();
            }
        ];

        return InvokerUtil.lookupOpener( 'signatory:create', params );
    }
    
    public void removeSignatory() {
        if( MsgBox.confirm( 'Remove signatory?' ) ) {
            signatories = service.delete( [signatory:selectedItem, signatories:signatories] );
            signatoryListHandler.load();
        }
    }
    
    public void moveUp() {
        def prevItem = signatories.get( selectedItem.indexno - 2 );
        signatories = service.changeIndexNo( [selectedItem, prevItem] );
        signatoryListHandler.load();
    }
    
    public void moveDown() {
        def nextItem = signatories.get( selectedItem.indexno );
        signatories = service.changeIndexNo( [selectedItem, nextItem] );
        signatoryListHandler.load();
    }

    def signatoryListHandler = [
        getRows     : { return 50; },
        getColumns  : {
            return [
                new Column(name:'lastname', caption:'Last Name'),
                new Column(name:'firstname', caption:'First name'),
                new Column(name:'middlename', caption:'Middle Name'),
                new Column(name:'position', caption:'Position')
            ];
        },
        fetchList    : { return signatories; }
    ] as SubListModel
    
    void setSelectedItem( selectedItem ) {
        this.selectedItem = selectedItem;
        currentIndex = signatories.indexOf( selectedItem );
        listSize = signatories.size();
    }
}