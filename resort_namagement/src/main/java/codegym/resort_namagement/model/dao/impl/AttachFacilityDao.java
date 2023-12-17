package codegym.resort_namagement.model.dao.impl;

import codegym.resort_namagement.model.dao.IAttachFacilityDao;
import codegym.resort_namagement.model.dao.MyConnection;
import codegym.resort_namagement.model.entity.AttachFacility;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AttachFacilityDao implements IAttachFacilityDao {
    private final String SELECT_ALL ="SELECT * FROM attach_facility";
    private final String INSERT_INTO = "INSERT INTO attach_facility(name,cost,unit,status,is_delete VALUES(?,?,?,?,?)";
    @Override
    public List<AttachFacility> findAll() {
        List<AttachFacility> attachFacilityList = new ArrayList<>();
        Connection connection = MyConnection.getConnectDB();
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                double cost = resultSet.getDouble("cost");
                String unit = resultSet.getString("unit");
                String status = resultSet.getString("status");
                boolean isDelete = resultSet.getBoolean("is_delete");
                attachFacilityList.add(new AttachFacility(id,name,cost,unit,status,isDelete));
            }
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
        return attachFacilityList;
    }

    @Override
    public AttachFacility findById(int id) {
        return null;
    }

    @Override
    public boolean add(AttachFacility attachFacility) {
        Connection connection = MyConnection.getConnectDB();
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO);

        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
        
    }

    @Override
    public boolean edit(AttachFacility attachFacility) {
        return false;
    }

    @Override
    public boolean remove(int id) {
        return false;
    }
}
