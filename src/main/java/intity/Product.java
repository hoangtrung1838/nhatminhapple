package intity;

public class Product {
//    id,name,image,price,title,category_ID,sell_ID,is_new,is_sale,amount

    private int id;

    private String name;

    private int memory;

    private String color;

    private String image;

    private double price;

    private String title;

    private int categoryID;

    private int sellID;

    private int isNew;

    private int isSale;

    private int amount;

    public int getMemory() {
        return memory;
    }

    public void setMemory(int memory) {
        this.memory = memory;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Product(int id, String name, int memory, String color, String image, int price, String title, int categoryID, int sellID, int isNew, int isSale, int amount) {
        this.id = id;
        this.name = name;
        this.memory = memory;
        this.color = color;
        this.image = image;
        this.price = price;
        this.title = title;
        this.categoryID = categoryID;
        this.sellID = sellID;
        this.isNew = isNew;
        this.isSale = isSale;
        this.amount = amount;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public int getSellID() {
        return sellID;
    }

    public void setSellID(int sellID) {
        this.sellID = sellID;
    }

    public int getIsNew() {
        return isNew;
    }

    public void setIsNew(int isNew) {
        this.isNew = isNew;
    }

    public int getIsSale() {
        return isSale;
    }

    public void setIsSale(int isSale) {
        this.isSale = isSale;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    @Override
    public String toString() {
        return ("Sản phẩm: \n" +
                "id = "+ id +
                "-name: " + name  +
                "-memory: "+memory+
                "-color_ID: "+color+
                "-image: " + image  +
                "-price: " + price +
                "-title: " + title  +
                "-categoryID: " + categoryID +
                "-sellID: " + sellID +
                "-isNew: " + isNew +
                "-isSale: " + isSale +
                "-amount: " + amount );
    }
}
