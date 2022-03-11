package in.kenneth.entity;

import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

public class Employee {

	private Integer id;

	@Size(min = 2, max = 50, message = "Your name must between {min} and {max} characters.")
	private String fullname;

	@Email(message = "Your email must be a valid email.")
	@Size(min = 4, max = 50, message = "Your email must between {min} and {max} characters.")
	private String email;

	@Size(max = 50, message = "Gender must not be longer than {max} characters.")
	private String gender;

	@Size(max = 50, message = "Hobbies must not be longer than {max} characters.")
	private String hobbies;

	@Size(max = 50, message = "Country must not be longer than {max} characters.")
	private String country;

	@Size(max = 50, message = "Address must not be longer than {max} characters.")
	private String address;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHobbies() {
		return hobbies;
	}

	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", fullname=" + fullname + ", email=" + email + ", gender=" + gender
				+ ", hobbies=" + hobbies + ", country=" + country + ", address=" + address + "]";
	}

}
