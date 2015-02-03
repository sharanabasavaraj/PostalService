package com.postoffice.pojo;

public class PostOfficePojo {
	private String firstname;
	private String lastname;
	private String email;
	private String password;
	private String address;
	
	public PostOfficePojo() {
		
	}

	public PostOfficePojo(String firstname, String lastname, String email,
			String password, String address) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.password = password;
		this.address = address;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "PostOfficepojo [firstname=" + firstname + ", lastname="
				+ lastname + ", email=" + email + ", password=" + password
				+ ", address=" + address + "]\n";
	}

	
}
