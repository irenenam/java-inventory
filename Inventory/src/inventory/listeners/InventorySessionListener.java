package inventory.listeners;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * User a Listener that records all transactions. 
 */
@WebListener
public class InventorySessionListener implements HttpSessionAttributeListener {

    /**
     * Default constructor. 
     */
    public InventorySessionListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent event)  {
    		//The Listener simply needs to print out the transaction (using System.out) 
    		//including value username, productId, product price, quantity (ex : michael , B001, 4.30, 20 
    		System.out.println("Inventory has modified: " + event.getName() + ": " + event.getValue());
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent event)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent arg0)  { 
         // TODO Auto-generated method stub
    }
	
}
