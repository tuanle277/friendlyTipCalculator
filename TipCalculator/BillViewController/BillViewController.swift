import UIKit

class BillViewController: UIViewController
{
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var tipperLabel: UILabel!
    

    
    @IBAction func calculateAction(_ sender: UIButton)
    {
        if billAmountTextField.text!.isEmpty || Double(billAmountTextField.text!) == nil
        {
            errorLabel.text = "Please enter a valid bill amount"
        }
        else
        {
            performSegue(withIdentifier: "toMain", sender: nil)
        }
    }
}
