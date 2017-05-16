package com.bridgelabz.Employee.model;


public class EmployeeDeatails1
{
	private int id;
	private String employeeName;
	private String password;
	private String gender;
	private String emailId;
	private String address;
	private String specialized;
	private String language;
	private long contactNo;
	private int age;
	private float salary;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getSpecialized() {
		return specialized;
	}
	public void setSpecialized(String specialized) {
		this.specialized = specialized;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public long getContactNo() {
		return contactNo;
	}
	public void setContactNo(long contactNo) {
		this.contactNo = contactNo;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public float getSalary() {
		return salary;
	}
	public void setSalary(float salary) {
		this.salary = salary;
	}
	
	
	@Override
	public String toString() {
		return "EmployeeDeatails1 [id=" + id + ", employeeName=" + employeeName + ", password=" + password + ", gender="
				+ gender + ", emailId=" + emailId + ", address=" + address + ", specialized=" + specialized
				+ ", language=" + language + ", contactNo=" + contactNo + ", age=" + age + ", salary=" + salary + "]";
	}
	
	
	
	
}
