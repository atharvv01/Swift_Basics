import Foundation

class Bank
{
    /*
     here since we want to print message for any changes in account balance,
     we will set and didset and willset for it
     */
    var accountBalance: Double
    {
        /*
         didSet see for the changes in value and executes it after there is change in value
         */
        didSet
        {
            sendUserMessage()
        }
        
        /*
         willSet checks for the value before there is change in value and executes code accordingly
         */
        willSet (newAccountBalance)
        {
            if (newAccountBalance>=100000)
            {
                sendAuditorMessage()
            }
        }
        
    }
    
    init(accountBalance: Double) {
        self.accountBalance = accountBalance
    }
    
    func addMoney (amount:Double) {
        accountBalance += amount
    }
    
    func withdrawMoney (amount: Double) {
        accountBalance -= amount
    }
    
    func sendUserMessage(){
        debugPrint("Account balance updated, new balance = \(accountBalance)")
    }
    
    func sendAuditorMessage() {
        debugPrint("Please check this account, and make sure transaction is not fraud")
    }
    
}

let bank = Bank(accountBalance: 10000)
bank.addMoney(amount: 5000000)
debugPrint(bank.accountBalance)



