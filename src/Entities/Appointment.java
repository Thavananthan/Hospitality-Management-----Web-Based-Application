package Entities;

public class Appointment {
		int Id;
	String department;
	String doctor;
	String fees;
	String date;
	String time;
	String email;
	
	public int getid()
	{
		return Id;
	}
	public void setId(int id)
	{
		this.Id=id;
	}
	public String getdepartment() {
		return department;
	}
	public void setdepartment(String department) {
		this.department = department;
	}
	public String getdoctor() {
		return doctor;
	}
	public void setdoctor(String doctor) {
		this.doctor = doctor;
	}
	public String getfees() {
		return fees;
	}
	public void setfees(String fees) {
		this.fees =fees;
	}
	public String getdate() {
		return date;
	}
	public void setdate(String date) {
		this.date =date;
	}
	public String gettime() {
		return time;
	}
	public void settime(String time) {
		this.time = time;
	}
	public String getemail() {
		return  email;
	}
	public void setemail(String  email) {
		this. email =  email;
	}
	
	

}
