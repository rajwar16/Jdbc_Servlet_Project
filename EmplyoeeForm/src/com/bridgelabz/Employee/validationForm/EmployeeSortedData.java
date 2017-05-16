package com.bridgelabz.Employee.validationForm;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bridgelabz.Employee.model.EmployeeDeatails1;

public class EmployeeSortedData extends HttpServlet
{
	protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		ArrayList<EmployeeDeatails1> arrayList=(ArrayList<EmployeeDeatails1>) request.getAttribute("arrayList");
		ArrayList<EmployeeDeatails1> arrayList2=new ArrayList<EmployeeDeatails1>();
		//out.print(arrayList);
		EmployeeDeatails1 employeeDeatails1;
		Iterator iterator=arrayList.iterator();
		while (iterator.hasNext()) 
		{
			String name= request.getParameter("empNname");
			employeeDeatails1=(EmployeeDeatails1)iterator.next();
			String employeeName = employeeDeatails1.getEmployeeName();
			if(employeeName.equals(name))
			{
				int id = employeeDeatails1.getId();
				String gender = employeeDeatails1.getGender();
				String emailId = employeeDeatails1.getEmailId();
				String address = employeeDeatails1.getAddress();
				String specialized = employeeDeatails1.getSpecialized();
				String language = employeeDeatails1.getLanguage();
				long contactNo = employeeDeatails1.getContactNo();
				float salary = employeeDeatails1.getSalary();
				arrayList2.add(employeeDeatails1);
				request.setAttribute("SortedEmpData", arrayList2);
			}
		} 

	}
}
