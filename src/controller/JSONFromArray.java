package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.google.gson.Gson;

import bean.User;

@WebServlet("/array")
public class JSONFromArray extends HttpServlet{

	private static final long serialVersionUID = -5358770439429399894L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ArrayList<User> arr = new ArrayList<>();
		arr.add(new User("admin", "123"));
		arr.add(new User("vathana", "123"));
		arr.add(new User("kokpheng", "123"));
		arr.add(new User("teckchun", "123"));
		arr.add(new User("manith", "123"));
		arr.add(new User("pirang", "123"));
		
		resp.setContentType("application/json");
		
		/* normal array object */
		JSONArray json = new JSONArray(arr);
		
		resp.getWriter().write(json.toString());
		
	}
}
