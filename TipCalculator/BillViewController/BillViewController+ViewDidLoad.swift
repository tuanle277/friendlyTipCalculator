import UIKit

extension BillViewController
{
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ViewController
        {
            let vc = segue.destination as? ViewController
            vc?.billAmount = Double(billAmountTextField.text!)
        }
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureUIs()
    }
}
