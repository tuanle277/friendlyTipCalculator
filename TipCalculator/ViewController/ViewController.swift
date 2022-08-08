import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipSeg: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipTxtFld: UITextField!
    @IBOutlet weak var changeBillButton: UIButton!
    @IBOutlet weak var billCnsLabel: UILabel!
    @IBOutlet weak var totalCnsLabel: UILabel!
    @IBOutlet weak var tipCnsLabel: UILabel!
    @IBOutlet weak var calBtn: UIButton!
    
    let tips: Array = [0.15, 0.18, 0.2]
    var tipAmount: Double = 0
    var billAmount: Double!
    
    @IBAction func changeBillAction(_ sender: UIButton)
    {
        dismiss(animated: true)
    }

}
