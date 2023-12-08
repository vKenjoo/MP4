/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShoppingCartServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("add".equals(action)) {
            addItemToCart(request);
        } else if ("checkout".equals(action)) {
            checkout(request, response);
        } else {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
        }
    }

    private void addItemToCart(HttpServletRequest request) {
        String itemId = request.getParameter("itemId");
        String itemName = request.getParameter("itemName");
        double itemPrice = Double.parseDouble(request.getParameter("itemPrice"));

        // Get or create the user's session
        HttpSession session = request.getSession(true);

        // Get the user's shopping cart from the session
        Map<String, ShoppingCartItem> cart = (Map<String, ShoppingCartItem>) session.getAttribute("cart");

        // If the cart doesn't exist, create a new one
        if (cart == null) {
            cart = new HashMap<>();
        }

        // Add the item to the cart or update its quantity
        if (cart.containsKey(itemId)) {
            ShoppingCartItem existingItem = cart.get(itemId);
            existingItem.setQuantity(existingItem.getQuantity() + 1);
        } else {
            ShoppingCartItem newItem = new ShoppingCartItem(itemId, itemName, itemPrice, 1);
            cart.put(itemId, newItem);
        }

        // Update the cart in the session
        session.setAttribute("cart", cart);
    }

    private void checkout(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        // Get the user's session
        HttpSession session = request.getSession(false);

        // Check if the session exists and contains a cart
        if (session != null) {
            Map<String, ShoppingCartItem> cart = (Map<String, ShoppingCartItem>) session.getAttribute("cart");

            if (cart != null && !cart.isEmpty()) {
                // Perform the checkout process (in a real application, this may involve sending an order confirmation email)

                // Clear the user's session and cart after successful checkout
                session.invalidate();

                // Forward the request to the confirmation JSP
                request.getRequestDispatcher("/confirmation.jsp").forward(request, response);
                return;
            }
        }

        // If the cart is empty or the session expired, redirect to an error page
        response.sendRedirect(request.getContextPath() + "/MP4/error.jsp");
    }

    private static class ShoppingCartItem {

        private String id;
        private String name;
        private double price;
        private int quantity;

        public ShoppingCartItem(String id, String name, double price, int quantity) {
            this.id = id;
            this.name = name;
            this.price = price;
            this.quantity = quantity;
        }

        public String getId() {
            return id;
        }

        public String getName() {
            return name;
        }

        public double getPrice() {
            return price;
        }

        public int getQuantity() {
            return quantity;
        }

        public void setQuantity(int quantity) {
            this.quantity = quantity;
        }
    }
}
