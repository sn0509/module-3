package codegym.resort_namagement.model.entity;

public class UserRole {
    private int roleId;
    private String userName;
    private boolean isDelete;

    public UserRole() {
    }

    public UserRole(int roleId, String userName, boolean isDelete) {
        this.roleId = roleId;
        this.userName = userName;
        this.isDelete = isDelete;
    }
}
