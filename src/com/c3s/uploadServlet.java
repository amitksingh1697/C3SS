package com.c3s;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 19625456)   
public class uploadServlet extends HttpServlet {
     
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        String depar = request.getParameter("dep");
        String name = request.getParameter("name");
         
        InputStream inputStream = null; 
        Part filePart = request.getPart("book");
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
           
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null;
        String message = null;  
        try {
            conn =com.c3s.GetCon.getCon();
            String sql = "INSERT INTO book (department,name,book) values ( ?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, depar);
            statement.setString(2, name);
            if (inputStream != null) {
               
                statement.setBlob(3, inputStream);
            }
 
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } 
            request.setAttribute("Message", message);
             
      
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        }
    }
