import java.util.ArrayList;

public class CafeUtil {

    public int getStreakGoal(int numWeeks) {
        int i = 1, sum = 0;
        while(i <= numWeeks) {
            sum += i;
            i++;
        }
        return sum;
    }

    public double getOrderTotal(double[] prices) {
        double sum = 0;
        for (double value : prices) {
            sum += value;
        }
        return sum;
    }

    public void displayMenu(ArrayList<String>menu){
        // we need to display the index as well as the menu item, so we can't use an enhanced for loop here. Traditional for loop:
        // because this is an ArrayList, we don't use .length, we use .size to iterate our menu
        for(int i=0; i<menu.size(); i++) {
            System.out.println(i + " : " + menu.get(i));
        } 
    }

    public void addCustomer(ArrayList<String>customers){
        System.out.println("Please enter your name: ");
        String userName = System.console().readLine();
        System.out.printf("Hello, %s! ", userName);
        customers.add(userName);
        for(int i=0; i<customers.size(); i++) {
            System.out.printf("There are %s people in front of you", i);
            System.out.println(i + " : " +customers.get(i));
        }
    }
    
}

