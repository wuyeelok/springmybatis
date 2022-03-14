package in.kenneth.entity;

import javax.validation.constraints.Size;

public class Publisher {

	private Integer id;

	@Size(min = 1, max = 255, message = "Publish name must between {min} and {max} characters.")
	private String name;

	@Size(max = 30, message = "Phone number must not be longer than {max} characters.")
	private String phoneNumber;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}
