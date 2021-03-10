package dao;

// load data to jsp page

import context.DBContext;
import intity.Account;
import intity.Category;
import intity.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    Connection connection = null;
    PreparedStatement pStatement = null;
    ResultSet rs = null;


    public void addNewProduct(String name,String memory,String color ,String image, String price, String title, String categoryID, String isNew, String isSale, String amount) {
        String sql = "insert into product(name,memory,color,image,price,title,category_ID,is_new,is_sale,amount) value(?,?,?,?,?,?,?,?,?,?)";
        try {
            connection = DBContext.getConnection();// mở kết nối;
            pStatement = connection.prepareStatement(sql);
            pStatement.setString(1,name);
            pStatement.setString(2,memory);
            pStatement.setString(3,color);
            pStatement.setString(4,image);
            pStatement.setString(5,price);
            pStatement.setString(6,title);
            pStatement.setString(7,categoryID);
            pStatement.setString(8,isNew);
            pStatement.setString(9,isSale);
            pStatement.setString(10,amount);
            int rs = pStatement.executeUpdate();
            connection.close();// đóng kết nối;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }



    public List <Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String query = "select * from category order by cid asc;";
        try {
            connection = DBContext.getConnection();// mở kết nối;
            pStatement = connection.prepareStatement(query);
            rs = pStatement.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt("cid"),rs.getString("cname")));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;
    }


    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product order by price desc ;";
        try {
            connection = DBContext.getConnection();// mở kết nối;
            pStatement = connection.prepareStatement(query);
            rs = pStatement.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString("name"),
                        rs.getInt("memory"),
                        rs.getString("color"),
                        rs.getString("image"),
                        rs.getInt("price"),
                        rs.getString("title"),
                        rs.getInt("category_ID"),
                        rs.getInt("sell_ID"),
                        rs.getInt("is_new"),
                        rs.getInt("is_sale"),
                        rs.getInt("amount"))
                );
            }
            connection.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;
    }


    public List<Product> getAllProductByCateID(String cid){
        List<Product> list = new ArrayList<>();
        String query = "select * from product  where category_id =?  order by price desc;";
        try {
            connection = DBContext.getConnection();// mở kết nối;
            pStatement = connection.prepareStatement(query);
            pStatement.setString(1,cid);
            rs = pStatement.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString("name"),
                        rs.getInt("memory"),
                        rs.getString("color"),
                        rs.getString("image"),
                        rs.getInt("price"),
                        rs.getString("title"),
                        rs.getInt("category_ID"),
                        rs.getInt("sell_ID"),
                        rs.getInt("is_new"),
                        rs.getInt("is_sale"),
                        rs.getInt("amount"))
                );
            }
            connection.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;

    }


    public Product getProductByID(String id){
        String query ="select * from product  where id =?";
        Product product=null;
        try {
            connection = DBContext.getConnection();// mở kết nối;
            pStatement = connection.prepareStatement(query);
            pStatement.setString(1,id);
            rs = pStatement.executeQuery();
            while (rs.next()) {
                product= new Product(
                        rs.getInt(1),
                        rs.getString("name"),
                        rs.getInt("memory"),
                        rs.getString("color"),
                        rs.getString("image"),
                        rs.getInt("price"),
                        rs.getString("title"),
                        rs.getInt("category_ID"),
                        rs.getInt("sell_ID"),
                        rs.getInt("is_new"),
                        rs.getInt("is_sale"),
                        rs.getInt("amount"));
                connection.close();
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return product;

    }


    public  Product getOneProductByName(String name){
        Product product = null;
        String query ="select * from product  where name =?";
        try {
            connection = DBContext.getConnection();// mở kết nối;
            pStatement = connection.prepareStatement(query);
            pStatement.setString(1,name);
            rs = pStatement.executeQuery();
            while (rs.next()) {
                product= new Product(
                        rs.getInt(1),
                        rs.getString("name"),
                        rs.getInt("memory"),
                        rs.getString("color"),
                        rs.getString("image"),
                        rs.getInt("price"),
                        rs.getString("title"),
                        rs.getInt("category_ID"),
                        rs.getInt("sell_ID"),
                        rs.getInt("is_new"),
                        rs.getInt("is_sale"),
                        rs.getInt("amount"));
            }
            connection.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return product;
    }


    public List<Product> getAllProductByName(String name){
        List<Product> list = new ArrayList<>();
        String query = "select * from product  where name  like ?  order by price desc;";
        try {
            connection = DBContext.getConnection();// mở kết nối;
            pStatement = connection.prepareStatement(query);
            pStatement.setString(1,"%"+name+"%");
            rs = pStatement.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString("name"),
                        rs.getInt("memory"),
                        rs.getString("color"),
                        rs.getString("image"),
                        rs.getInt("price"),
                        rs.getString("title"),
                        rs.getInt("category_ID"),
                        rs.getInt("sell_ID"),
                        rs.getInt("is_new"),
                        rs.getInt("is_sale"),
                        rs.getInt("amount"))
                );
            }
            connection.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;

    }

    public Account getAccount(String accName,String pass){
        Account account = null;
        String query = "select * from account where account_name=? and u_pass =? ;";
        try {
            connection = DBContext.getConnection();// mở kết nối;
            pStatement = connection.prepareStatement(query);
            pStatement.setString(1,accName);
            pStatement.setString(2,pass);
            rs = pStatement.executeQuery();
            while (rs.next()) {
                account = new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                    rs.getInt(6)
                );
        }
            connection.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return account;
    }


    public String getAccountName(){
        String  allAccount = "";
        String query = "select * from account";
        try {
            connection = DBContext.getConnection();// mở kết nối;
            pStatement = connection.prepareStatement(query);

            rs = pStatement.executeQuery();
            while (rs.next()) {
                allAccount += rs.getString("account_name")+"-";
            }
            connection.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return allAccount;
    }

    public void signUp(String uName,String account,String pass){
        String update =" insert into nhatminhapple.account(account_name,u_name,u_pass,is_sale,is_admin) value(?,?,?,0,0);";
        try {
            connection =DBContext.getConnection();
            pStatement = connection.prepareStatement(update);
            pStatement.setString(1,account);
            pStatement.setString(2,uName);
            pStatement.setString(3,pass);
            pStatement.executeUpdate();
            connection.close();
        }
        catch (SQLException e){
            System.out.println(e.getMessage());
        }
    }

    public void deleteProductByID(String id ){
        String update = "delete from product where id =? ;";
        try{
            connection = DBContext.getConnection();
            pStatement = connection.prepareStatement(update);
            pStatement.setString(1,id);
            pStatement.executeUpdate();
            connection.close();
        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
    }

    public void updateProduct(String id,String name,String memory,String color,String image,String price,String title,String categoryID,String isNew,String is_sale,String amount){
        String update = "update product set name=?, memory=?,color =?,image=?,price=?,title=?,category_ID=?,is_new=?,is_sale=?,amount=?" +
                "where id =?;";
        try {
            connection = DBContext.getConnection();
            pStatement = connection.prepareStatement(update);
            pStatement.setString(1,name);
            pStatement.setString(2,memory);
            pStatement.setString(3,color);
            pStatement.setString(4,image);
            pStatement.setString(5,price);
            pStatement.setString(6,title);
            pStatement.setString(7,categoryID);
            pStatement.setString(8,isNew);
            pStatement.setString(9,is_sale);
            pStatement.setString(10,amount);
            pStatement.setString(11,id);
            pStatement.executeUpdate();
            connection.close();

        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
    }

    public List<Account> getAllAccount(){
        List<Account> list = new ArrayList<>();
        String query = "select * from account";
        try {
            connection = DBContext.getConnection();
            pStatement = connection.prepareStatement(query);
            rs = pStatement.executeQuery();
            while (rs.next()){
                list.add(new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getInt(6)
                ));
            }
            connection.close();

        }catch (SQLException e){
            System.out.println(e.getMessage());
        }
        return list;
    }

    public List<Product> getNext8Product(int amount){
        List<Product> list = new ArrayList<>();
        String query = "select * from nhatminhapple.product  order by price desc\n" +
                "limit 8 \n" +
                "offset ?;";
        try {
            connection = DBContext.getConnection();// mở kết nối;
            pStatement = connection.prepareStatement(query);
            pStatement.setInt(1,amount);
            rs = pStatement.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString("name"),
                        rs.getInt("memory"),
                        rs.getString("color"),
                        rs.getString("image"),
                        rs.getInt("price"),
                        rs.getString("title"),
                        rs.getInt("category_ID"),
                        rs.getInt("sell_ID"),
                        rs.getInt("is_new"),
                        rs.getInt("is_sale"),
                        rs.getInt("amount"))
                );
            }
            connection.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;
    }

    public List<Product> get8ProductByCID(String cid,int amount){
        List<Product> list = new ArrayList<>();
        String query = "select * from product  where category_id =?  order by price desc" +
                " limit 8 offset ?;";
        try {
            connection = DBContext.getConnection();// mở kết nối;
            pStatement = connection.prepareStatement(query);
            pStatement.setString(1,cid);
            pStatement.setInt(2,amount);
            rs = pStatement.executeQuery();
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString("name"),
                        rs.getInt("memory"),
                        rs.getString("color"),
                        rs.getString("image"),
                        rs.getInt("price"),
                        rs.getString("title"),
                        rs.getInt("category_ID"),
                        rs.getInt("sell_ID"),
                        rs.getInt("is_new"),
                        rs.getInt("is_sale"),
                        rs.getInt("amount"))
                );
            }
            connection.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return list;
    }


    public static void main(String[] args) {
        DAO dao = new DAO();
        for (Product product: dao.get8ProductByCID("1",0)){
            System.out.println(product);
        }
//        System.out.println(dao.getOneProductByName("Iphone Xs MAx"));
//
//        System.out.println(dao.getAccount("tùng","12345678"));
//        System.out.println(dao.getAccountName());
    }
}
