public class CafeJava {
    public static void main(String[] args) {
        // APP VARIABLES
        // Lines of text that will appear in the app. 
        String generalGreeting = "Welcome to Cafe Java, ";
        String pendingMessage = ", your order will be ready shortly!";
        String readyMessage = ", your order is ready! ";
        String displayTotalMessage = " Your total is $";
        
        // Menu variables (add yours below)
        double mochaPrice = 3.5;
        double coldBrewPrice = 4;
        double lattePrice = 3;
        double cappuccinoPrice = 2.95;
        double sum = lattePrice + lattePrice;
        double difference = coldBrewPrice - lattePrice;

        // Customer name variables (add yours below)
        String customer1 = "Cindhuri";
        String customer2 = "Sam";
        String customer3 = "Jimmy";
        String customer4 = "Noah";
    
        // Order completions (add yours below)
        boolean isReadyOrder1 = false;
        boolean isReadyOrder2 = true;
        boolean isReadyOrder3 = false;
        boolean isReadyOrder4 = true;
    
        // APP INTERACTION SIMULATION (Add your code for the challenges below)
        // Example:
        System.out.println("******************************************");
        System.out.println(generalGreeting + customer1 + pendingMessage); // Displays "Welcome to Cafe Java, Cindhuri"
        System.out.println("******************************************");
    	// ** Your customer interaction print statements will go here ** //
        if (isReadyOrder4) {
        System.out.println("******************************************");
        System.out.println(customer4 + readyMessage + displayTotalMessage + cappuccinoPrice); 
        System.out.println("******************************************");
        }
        System.out.println("******************************************");
        System.out.println(generalGreeting + customer2 + displayTotalMessage + sum); 
        System.out.println("******************************************");
        if (isReadyOrder2) {
        System.out.println(customer2 + readyMessage);
        } else {
        System.out.println(customer2 + pendingMessage);    
        }
        System.out.println("******************************************");
        System.out.println(customer3 + displayTotalMessage + difference);
        System.out.println("******************************************");
    }
    
}
