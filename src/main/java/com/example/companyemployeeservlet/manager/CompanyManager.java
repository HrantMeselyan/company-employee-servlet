package com.example.companyemployeeservlet.manager;


import com.example.companyemployeeservlet.db.DbConnectionProvider;
import com.example.companyemployeeservlet.model.Company;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CompanyManager {
    private Connection connection = DbConnectionProvider.getInstance().getConnection();

    public List<Company> getAll() {
        List<Company> companyList = new ArrayList<>();
        try (Statement statement = connection.createStatement();) {
            ResultSet resultSet = statement.executeQuery("SELECT * from company");
            while (resultSet.next()) {
                companyList.add(getCompanyFromResultSet(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return companyList;
    }


    public void save(Company company) {
        try (Statement statement = connection.createStatement()) {
            String sql = "INSERT INTO company(name,country)Values('%s','%s')";
            statement.executeUpdate(String.format(sql, company.getName(), company.getCountry()));
            System.out.println("Company is inserted!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Company getById(int id) {
        try (Statement statement = connection.createStatement();) {
            ResultSet resultSet = statement.executeQuery("SELECT * from company where id  = " + id);
            if (resultSet.next()) {
                return getCompanyFromResultSet(resultSet);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Company> getByCountry(String country) {
        List<Company> companyList = new ArrayList<>();
        try (Statement statement = connection.createStatement();) {
            ResultSet resultSet = statement.executeQuery("SELECT * from company where country = '" + country + "';");
            if (resultSet.next()) {
                companyList.add(getCompanyFromResultSet(resultSet));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return companyList;
    }

    public void removeById(int companyId) {
        String sql = "DELETE FROM company WHERE id = " + companyId;
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private Company getCompanyFromResultSet(ResultSet resultSet) throws SQLException {
        Company company = new Company();
        company.setId(resultSet.getInt("id"));
        company.setName(resultSet.getString("name"));
        company.setCountry(resultSet.getString("country"));
        return company;
    }

    public void update(Company company) {
        String sql = "UPDATE company SET name = '%s', country = '%s' where id = %d";
        try (Statement statement = connection.createStatement()) {
            statement.executeUpdate(String.format(sql, company.getName(), company.getCountry(), company.getId()));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
