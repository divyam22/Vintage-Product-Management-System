package pojo;

public class SignUpInfo {

    String userName;
    String password;

    public SignUpInfo() {
        // TODO Auto-generated constructor stub
    }

    public SignUpInfo(String userName, String password) {
        super();
        this.userName = userName;
        this.password = password;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "SignUpInfo [userName=" + userName + ", password=" + password + "]";
    }

}
