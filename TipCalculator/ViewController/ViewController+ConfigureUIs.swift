import UIKit

extension ViewController
{
    func setGradientBackground()
    {
        let colorTop =  UIColor(red: 3.0/255.0, green: 150.0/255.0, blue: 200.0/255.0, alpha: 1).cgColor
        let colorBottom = UIColor(red: 3.0/255.0, green: 223.0/255.0, blue: 157.0/255.0, alpha: 0.6).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorBottom, colorTop]
        gradientLayer.locations = [0.5, 0.9]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    func autoLayout()
    {
        changeBillButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: self.view.frame.height * 0.08).isActive = true
        billLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: self.view.frame.height * 0.3).isActive = true
        billLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: self.view.frame.width * 0.65).isActive = true
        tipLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: self.view.frame.height * 0.4).isActive = true
        tipLabel.leftAnchor.constraint(equalTo: billLabel.leftAnchor).isActive = true
        totalLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: self.view.frame.height * 0.5).isActive = true
        totalLabel.leftAnchor.constraint(equalTo: billLabel.leftAnchor).isActive = true
        tipSlider.topAnchor.constraint(equalTo: self.view.topAnchor, constant: self.view.frame.height * 0.75).isActive = true
        tipSeg.topAnchor.constraint(equalTo: self.view.topAnchor, constant: self.view.frame.height * 0.7).isActive = true
        tipTxtFld.topAnchor.constraint(equalTo: self.view.topAnchor, constant: self.view.frame.height * 0.8).isActive = true
        tipTxtFld.leftAnchor.constraint(equalTo: tipSeg.leftAnchor).isActive = true
        calBtn.leftAnchor.constraint(equalTo: tipTxtFld.rightAnchor, constant: self.view.frame.width * 0.1).isActive = true
        calBtn.topAnchor.constraint(equalTo: tipTxtFld.topAnchor).isActive = true
        billCnsLabel.topAnchor.constraint(equalTo: billLabel.topAnchor).isActive = true
        billCnsLabel.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: self.view.frame.width * 0.1).isActive = true
        tipCnsLabel.topAnchor.constraint(equalTo: tipLabel.topAnchor).isActive = true
        tipCnsLabel.leftAnchor.constraint(equalTo: billCnsLabel.leftAnchor).isActive = true
        totalCnsLabel.topAnchor.constraint(equalTo: totalLabel.topAnchor).isActive = true
        totalCnsLabel.leftAnchor.constraint(equalTo: billCnsLabel.leftAnchor).isActive = true
        
    }
    
    func configureUIs()
    {
        setGradientBackground()
        autoLayout()
        billLabel.text = String(format: "$%.2f", billAmount)
    }
}
