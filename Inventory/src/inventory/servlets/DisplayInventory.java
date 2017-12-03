package inventory.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inventory.Inventory;
import inventory.InventoryEntry;

/**
 * Servlet implementation class DisplayInventory
 */
public class DisplayInventory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Inventory inventory = (Inventory) getServletContext().getAttribute("inventory");
		String msg = (String) request.getAttribute("errorMsg"); 
		
		List<InventoryEntry> bookList = new ArrayList();
		List<InventoryEntry> compactDiscList = new ArrayList();
		
		// make a list for seperate for bookList and compactDiscList 
		for(String id : inventory.getProductIDs()) {
			InventoryEntry ie = inventory.get(id);
			if(ie.getProductType().equals("COMPACTDISC")) {
				compactDiscList.add(ie);
			} else {
				bookList.add(ie);
			}
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("displayInventory.jsp");
		request.setAttribute("errorMsg", msg);
		request.setAttribute("bookList", bookList);
		request.setAttribute("compactDiscList", compactDiscList);
		dispatcher.forward(request, response);
				
				
		
	}

}
