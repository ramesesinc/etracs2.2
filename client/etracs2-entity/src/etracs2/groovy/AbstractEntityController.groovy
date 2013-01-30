package etracs2.groovy;

import com.rameses.rcp.common.*;
import com.rameses.rcp.annotations.*;
import com.rameses.osiris2.client.*;

abstract class AbstractEntityController {
    @Binding
    def binding;
    
    def mode = "view" ;
    def entity;
    
    def createHandler;
    def editHandler;
    def cancelHandler;
    def insertHandler;
    def updateHandler;
    def deleteHandler;
    def selectedContact
    
    abstract def getService();
    def getCreateFocusComponent() { return "entity.objid"; }
    def getEditFocusComponent() { return "entity.objid"; }
    def createEntity() { return [:]; }
    
    void init() {}
    
    void create() {
        doCreateEntity()
        focus( createFocusComponent );
        invokeCreateHandler()
        mode = "create";
    }
    
    void doCreateEntity(){
        entity = createEntity();
        entity.contacts = []
        entity._deletedContacts = []
    }
    
    void edit() {
        focus( editFocusComponent );
        invokeEditHandler()
        mode = "edit";
    }
    
    void cancel() {
        open( entity.objid, entity.entitytype );
        invokeCancelHandler()
        mode = "view";
    }
    
    void save() {
        //if( okPossibleDuplicate() ) {
            if( mode == 'create' ) {
                entity = service.create( entity );
                invokeInsertHandler();
            } 
            else {
                entity = service.update( entity );
                invokeUpdateHandler();
            }
            mode = "view";
        //}
    }
    
    void delete() {
        if( MsgBox.confirm("Delete record?") ) {
            service.delete( entity );
            invokeDeleteHandler();
            mode = "view";
        }
    }
    
    void focus( name ) {
        binding?.refresh("entity.*");
        binding?.focus( name );
    }
    
    void open( objid, entitytype ) {
        entity = service.open( objid, entitytype );
        if( ! entity) {
            doCreateEntity()
        }
    }
    
    void invokeCreateHandler() {
        if( createHandler ) {
            createHandler()
        }
    }
    
    void invokeEditHandler() {
        if( editHandler ) {
            editHandler()
        }
    }
    
    void invokeCancelHandler() {
        if( cancelHandler ){
            cancelHandler()
        }
    }
    
    void invokeInsertHandler() {
        if( insertHandler ) {
            insertHandler( entity )
        }
    }
    
    void invokeUpdateHandler() {
        if( updateHandler ) {
            updateHandler( entity )
        }
    }
    
    void invokeDeleteHandler() {
        if( deleteHandler ) {
            deleteHandler( entity )
        }
    }
    
    boolean okPossibleDuplicate() {
        def dupEntity = service.getPossibleDuplicateName( entity )
        if( dupEntity ) {
            return MsgBox.confirm('Possible duplicate for ' + dupEntity.entityname + ' from ' + dupEntity.entityaddress +' with Entity No. ' + dupEntity.entityno + '.\nSave anyway?') 
        }    
        return true
    }
    
    
    
    /*===============================================================================================
     * Contact Support 
     *=============================================================================================*/
    
    def onaddContact = { contact -> 
        checkDuplicateContact( contact )
        contact._isnew = true 
        entity.contacts.add( contact )
        contactListHandler.load()
    }
    
    void checkDuplicateContact( contact ){
        def dup = entity.contacts.find{ it.contacttype == contact.contacttype && it.contact == contact.contact}
        if( dup ) throw new Exception('Contact information already exists.')
    }
    
    def addContact() {
        return InvokerUtil.lookupOpener('entitycontact.create', [onadd:onaddContact] )
    }
    
    def contactListHandler = [
        getColumns : { return [
            new Column(name:'contacttype', caption:'Type'),
            new Column(name:'contact', caption:'Contact'),
        ]},
        fetchList  : { return entity.contacts },
        onRemoveItem : { item -> 
            if( MsgBox.confirm('Remove selected contact?') ) {
                entity.contacts.remove( selectedContact )
                if( ! entity._deletedContacts ) {
                    entity._deletedContacts = []
                }
                entity._deletedContacts.add( selectedContact )
            }
        }
    ] as SubListModel
}
