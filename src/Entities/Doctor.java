package Entities;



public class Doctor {
    private String id;
    private String fname;
    private String lname;
    private String age;
    private  String salary;
    private  String pay;
    private String password;
   
    
     
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getfname() {
        return fname;
    }
    public void setfname(String fname) {
        this.fname = fname;
    }
    public String getlname() {
        return lname;
    }
    public void setlname(String lname) {
        this.lname = lname;
    }
    
    public String getage() {
        return age;
    }
    public void setage(String age) {
        this.age =age;
    }
    public String getsalary() {
        return salary;
    }
    public void setsalary(String salary) {
        this.salary = salary;
    }
    public String getpay() {
        return pay;
    }
    public void setpay(String pay) {
        this.pay = pay;
    }
    public String getpassword()
     {
    	 return password;
     }
     public void setpassword(String password)
     {
    	 this.password=password;
     }

}