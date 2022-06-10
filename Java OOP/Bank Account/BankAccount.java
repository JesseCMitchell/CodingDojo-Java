import java.util.Random;
public class BankAccount {
    //Class Attributes
	private String accountNumber = "";
	private double checkingBalance = 0.0;
	private double savingsBalance = 0.0;
	private static int totalAccountsCreated = 0;
	private static double totalAmountMoney = 0.0;
	
	//Constructors
	public BankAccount() {
		String accountNumber = newAccountNumber();
		double checkingBalance = 0.0;
		double savingsBalance = 0.0;
		totalAccountsCreated += 1;
		System.out.println("New user created with account number: " + accountNumber + ".");
		System.out.println("Total accounts created: " + totalAccountsCreated + ".");		
	}
	
	//Getters
	public double getCheckingBalance() {
		return checkingBalance;
	}
	public double getSavingsBalance() {
		return savingsBalance;
	}

	//Setters
	public void setCheckingBalance(double checkingBalance) {
		this.checkingBalance = checkingBalance;
	}

	public void setSavingsBalance(double savingsBalance) {
		this.savingsBalance = savingsBalance;
	}

	//Methods
	private String newAccountNumber() {
		String numberTable = "0123456789";
		String randomNumber = "";
		
		Random rand = new Random();
		
		for(int i = 0; i < 10; i++) {
			char num = numberTable.charAt(rand.nextInt(10));
			randomNumber += num;
		}
		accountNumber = randomNumber;
		return randomNumber;	
	}
	
	public void accountDeposit(String type, double depositAmount) {
		if(type == "checking" || type == "Checking") {
			setCheckingBalance(getCheckingBalance() + depositAmount);
			totalAmountMoney += depositAmount;
		}
		if(type == "savings" || type == "Savings") {
			setSavingsBalance(getSavingsBalance() + depositAmount);
			totalAmountMoney += depositAmount;
		}
		else {
			System.out.println("Please choose account type.");
		}	
	}
	
	public void accountWithdrawal(String type, double withdrawalAmount) {
		if(type == "checking" || type == "Checking") {
			if(getCheckingBalance() < withdrawalAmount) {
				System.out.println("Insufficient Funds.");
			}
			else {
			setCheckingBalance(getCheckingBalance() - withdrawalAmount);
			totalAmountMoney -= withdrawalAmount;
			}
		}
		if(type == "savings" || type == "Savings") {
			if(getSavingsBalance() < withdrawalAmount) {
				System.out.println("Insufficient Funds.");
			}
			else {
			setSavingsBalance(getSavingsBalance() - withdrawalAmount);
			totalAmountMoney -= withdrawalAmount;
			}
		}
	}
	public double myBalance() {
		double totalBalance = checkingBalance + savingsBalance;
		System.out.println(totalBalance);
		return totalBalance;
	}
}
