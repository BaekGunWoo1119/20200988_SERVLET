package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    private static ProductRepository instance = new ProductRepository();
    
    public static ProductRepository getInstance(){
		return instance;
   	}


		public ProductRepository() {
            Product phone = new Product("P1234", "GTA6", 80000);
            phone.setDescription("i3-8100, ddr3 RAM 16G, GTX1650, 140G 이상의 저장공간");
            phone.setCategory("OpenWorld");
            phone.setManufacturer("Rockstar");
            phone.setUnitsInStock(1000);
            phone.setCondition("New");
            phone.setFilename("P1234.jpg");

            Product notebook = new Product("P1235", "TEKKEN 8", 70000);
            notebook.setDescription("i5-7500, ddr4 RAM 8G, GTX1060, 60G 이상의 저장공간");
            notebook.setCategory("Fighting Game");
            notebook.setManufacturer("Bandai Namco");
            notebook.setUnitsInStock(1000);
            notebook.setCondition("New");
            notebook.setFilename("P1235.jpg");

            Product tablet = new Product("P1236", "OverWatch 2", 60000);
            tablet.setDescription("i5-3500, ddr3 RAM 8G, GTX960, 50G 이상의 저장공간");
            tablet.setCategory("HyperFPS");
            tablet.setManufacturer("Blizzard");
            tablet.setUnitsInStock(1000);
            tablet.setCondition("New");
            tablet.setFilename("P1236.jpg");

            // 위와 같이 상품 초기화 하고 아래에 상품을 추가

            listOfProducts.add(phone);
            listOfProducts.add(notebook);
            listOfProducts.add(tablet);
            // listOfProducts.add(상품명);
        }

        public ArrayList<Product> getAllProducts() {
            return listOfProducts;
        }
    
    	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
    }
 		public void addProduct(Product product){
		listOfProducts.add(product);
        }
}

