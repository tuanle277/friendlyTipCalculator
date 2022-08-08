import UIKit

extension ViewController
{
    @IBAction func tipSegAction(_ sender: UISegmentedControl)
    {
        tipAmount = tips[tipSeg.selectedSegmentIndex]
        tipSlider.value = Float(tipAmount)
        tipTxtFld.text = "\(String(Int(tipAmount * 100)))%"
        tipLabel.text = String(format: "$%.2f", tipAmount * billAmount)
        totalLabel.text = String(format: "$%.2f", billAmount + tipAmount * billAmount)
    }
    
    @IBAction func tipSliderAction(_ sender: UISlider)
    {
        tipAmount = Double(tipSlider.value)
        tipTxtFld.text = "\(Int(tipAmount * 100))%"
        tipLabel.text = String(format: "$%.2f", tipAmount * billAmount)
        totalLabel.text = String(format: "$%.2f", billAmount + tipAmount * billAmount)
    }
    
    @IBAction func tipTxtFldAction(_ sender: UIButton)
    {
        tipAmount = Double(tipTxtFld.text!)! / 100
        tipSlider.value = Float(tipAmount)
        tipLabel.text = String(format: "$%.2f", tipAmount * billAmount)
        totalLabel.text = String(format: "$%.2f", billAmount + tipAmount * billAmount)
    }
    
    
    
    
}
