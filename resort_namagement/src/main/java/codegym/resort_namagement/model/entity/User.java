package codegym.resort_namagement.model.entity;

public class User {
    private String username;
    private String password;
    private boolean isDelete;

    public User() {
    }

    public String getUsername() {
        return username;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isDelete() {
        return isDelete;
    }

    public void setDelete(boolean delete) {
        isDelete = delete;
    }
}
