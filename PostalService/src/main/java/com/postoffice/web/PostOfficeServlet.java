package com.postoffice.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.postoffice.pojo.ParcelDetails;
import com.postoffice.pojo.PostOfficePojo;


/**
 * Servlet implementation class PostOfficeServlet
 */
//@WebServlet("/post/*")
public class PostOfficeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	List<PostOfficePojo> pList=new ArrayList<PostOfficePojo>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostOfficeServlet() {
    	//postOfficePojo=new PostOfficePojo();
    //	pList=new ArrayList<PostOfficePojo>();
    	pList.add(new PostOfficePojo("sharan","koti","sha@gmail.com","1234","ilkal"));
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//pList=new ArrayList<PostOfficePojo>();
		PostOfficePojo postOfficePojo=new PostOfficePojo();
		ParcelDetails parcelDetails=new ParcelDetails();

		String uri=request.getRequestURI();
		if(uri.endsWith("login.do")){
			System.out.println("inside login");
			boolean res=false;
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			for (PostOfficePojo poj : pList) {
				if(email.equals(poj.getEmail())&&password.equals(poj.getPassword())){
					res=true;
					break;
				}
			}
			if(res==true){
				request.getRequestDispatcher("postdetails.jsp").forward(request, response);
			}else{
				//request.getRequestDispatcher("landing.jsp").forward(request, response);
				response.sendRedirect("login.jsp");
			}
			
			/*System.out.println("list called:"+pList);
			Iterator<PostOfficePojo> iterator=pList.iterator();
			while (iterator.hasNext()) {
				String email=request.getParameter("email");
				String password=request.getParameter("password");
			boolean isvalide=false;
			for (PostOfficePojo postOfficePojo : pList) {
				if(email.equals(postOfficePojo.getEmail()) && password.equals(postOfficePojo.getPassword())){
					
					isvalide=true;
					break;
				}
			}
				if (isvalide) {
					request.getRequestDispatcher("landing.jsp").forward(request, response);
				}*/
			
				
				
			//}
		}
		else if(uri.endsWith("register.do")){
			System.out.println("register servlet-"+uri);
			//pList=new ArrayList<PostOfficePojo>();
			boolean isAdd=false;
			String fname=request.getParameter("firstname");
			String lname=request.getParameter("lastname");
			String  email=request.getParameter("email");
			String password=request.getParameter("password");
			String address=request.getParameter("address");
			postOfficePojo.setFirstname(fname);
			postOfficePojo.setLastname(lname);
			postOfficePojo.setEmail(email);
			postOfficePojo.setPassword(password);
			postOfficePojo.setAddress(address);
			isAdd=pList.add(postOfficePojo);
			if(isAdd){
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			System.out.println("list->"+pList);
		}
		else if (uri.endsWith("parcel.do")) {
			
			System.out.println("parcel servlet");
			List<ParcelDetails> parcelList=new ArrayList<ParcelDetails>();
			
			String name=request.getParameter("name");
			String ptype=request.getParameter("prcl");
			String weight=request.getParameter("weight");
			float wt=Float.parseFloat(weight);
			String date=request.getParameter("date");
			String time=request.getParameter("time");
			String format=request.getParameter("pm");
			String atype=request.getParameter("opt");
			String address=request.getParameter("address");
			parcelDetails.setName(name);
			parcelDetails.setpType(ptype);
			parcelDetails.setWeight(wt);
			parcelDetails.setDate(date);
			parcelDetails.setTime(time);
			parcelDetails.setFormat(format);
			parcelDetails.setaType(atype);
			parcelDetails.setAddress(address);
			parcelList.add(parcelDetails);
			System.out.println("parcelDetails"+parcelList);
			request.setAttribute("list", parcelList);
			request.getRequestDispatcher("thankyou.jsp").forward(request, response);
		}
	}
}
