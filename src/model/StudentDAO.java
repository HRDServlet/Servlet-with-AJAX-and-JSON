package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class StudentDAO {
	
	public ArrayList<Student> getAllStudent() throws ClassNotFoundException, SQLException{
		Statement st = ConnectionManager.getConnection().createStatement();
		ResultSet rs = st.executeQuery("SELECT * from tbstudent");
		ArrayList<Student> arr = new ArrayList<>();
		while(rs.next())
			arr.add(new Student(rs.getInt("stu_id"), rs.getString("stu_name")));
		return arr;
	}
	public boolean insert(Student s) throws ClassNotFoundException, SQLException{
		Student studnet = new Student(s.getId(), s.getName());
		PreparedStatement pstmt =ConnectionManager.getConnection().prepareStatement("INSERT INTO tblstudent values(?,?)");
			StudentDAO dao =  new StudentDAO();
			
			
		if(pstmt.executeUpdate()>0){
			return true;
		}
		return false;
	}
}
