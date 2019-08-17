package Entities;

/**
 * Servlet implementation class Feedback
 */

public class Feedback {

	String name;
	String email;
	int phone;
	String messages;

	public String getname() {
		return name;

	}

	public void setname(String name) {
		this.name = name;
	}

	public String getemail() {
		return email;
	}

	public void setemail(String email) {
		this.email = email;
	}

	public int getphonenumber() {
		return phone;
	}

	public void setphone(int phone) {
		this.phone = phone;
	}

	public String getmessages() {
		return messages;
	}

	public void setmessage(String message) {
		this.messages = message;
	}

}
