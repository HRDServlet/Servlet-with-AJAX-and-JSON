package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import model.Student;
import model.StudentDAO;

@WebServlet("/list")
public class GetStudentListController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			// retrieve data from model
			ArrayList<Student> arr = new StudentDAO().getAllStudent();
			// set content type
			resp.setContentType("application/json");
			JSONArray json = new JSONArray(arr);
			// write data to view
			resp.getWriter().write(json.toString());
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
