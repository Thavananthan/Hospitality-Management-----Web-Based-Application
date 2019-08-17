package Entities;

public class Register {
	String fname;
	String age;
	String email;
	String phone_number;
	String password;
	String address;
	
	public String getUsername() {
		return fname;
	}
	public void setUsername(String username) {
		this.fname = username;
	}
	public String getAge()
	{
		return age;
	}
	public void setAge(String age)
	{
		this.age=age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	 public String getphone() {
		 return phone_number;
		 
	 }
	 public void setphone(String pho) {
		 this.phone_number=pho;
	 }
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String conpassword) {
		this.address = conpassword;
	}
	
	

}
