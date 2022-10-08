public class Fridge {
	public string modelNumber;
    public integer numberInStock;
    public void updateStock(integer justSold) {
        numberInStock = numberInStock - justSold;
    }
}