package codegym.resort_namagement.model.entity;

public class Role {
    private int id;
    private String name;
    private boolean isDelete;

    public Role() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isDelete() {
        return isDelete;
    }

    public void setDelete(boolean delete) {
        isDelete = delete;
    }
}
