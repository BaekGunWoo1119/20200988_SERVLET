package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    
    public ProductRepository() {
        Product gta6 = new Product("P1234", "Grand Theft Auto VI", 70000);
        gta6.setDescription("i3-8100, GTX 1060, DDR3 8GB, HDD 120GB, Windows10/11/MacOS/SteamOS");
        gta6.setCategory("FPS");
        gta6.setManufacturer("Rockstar");
        gta6.setUnitsInSock(1000);
        gta6.setCondition("New");
        
        Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");

    }
}