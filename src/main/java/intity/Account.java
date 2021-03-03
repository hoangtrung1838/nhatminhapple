package intity;

public class Account {

    private int id;

    private String accName;

    private String pass;

    private String userName;

    private int isSale;

    private int isAdmin;

    public Account(int id, String accName, String pass, String userName, int isSale, int isAdmin) {
        this.id = id;
        this.accName = accName;
        this.pass = pass;
        this.userName = userName;
        this.isSale = isSale;
        this.isAdmin = isAdmin;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccName() {
        return accName;
    }

    public void setAccName(String accName) {
        this.accName = accName;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public int getIsSale() {
        return isSale;
    }

    public void setIsSale(int isSale) {
        this.isSale = isSale;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", accName='" + accName + '\'' +
                ", pass='" + pass + '\'' +
                ", userName='" + userName + '\'' +
                ", isSale=" + isSale +
                ", isAdmin=" + isAdmin +
                '}';
    }
}
