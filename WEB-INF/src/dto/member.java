package dto;
import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;

	private String UserId;	//아이디
	private String UserPw;	//패스워드
	private String UserName; //유저 닉네임
	private String Gender; //성별
	private String Email; 	//이메일

    public Product() {
		super();
	}

	public Product(String UserId, String UserName) {
		this.Userid = UserId;
		this.UserName = UserName;
	}

	public String getUserId() {
		return UserId;
	}

	public String getUserName() {
		return UserName;
	}
    
    
	public void setUserName(String UserName) {
		this.UserName = UserName;
	}

	public void setUserId(String UserId) {
		this.Userid = UserId;
	}


	public String getUserPw() {
		return UserPw;
	}

	public void setUserPw(String UserPw) {
		this.Userpw = UserPw;
	}

	public String getGender() {
		return Gender;
	}

    public void setGender(String Gender) {
		this.gender = Gender;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String Email) {
		this.email = Email;
	}