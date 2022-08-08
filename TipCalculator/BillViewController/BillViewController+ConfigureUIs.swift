import UIKit

extension BillViewController
{
    func setGradientBackground()
    {
        let colorTop =  UIColor(red: 3.0/255.0, green: 150.0/255.0, blue: 200.0/255.0, alpha: 1).cgColor
        let colorBottom = UIColor(red: 3.0/255.0, green: 223.0/255.0, blue: 157.0/255.0, alpha: 0.6).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.3, 0.7]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    func autoLayout()
    {
        tipperLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: self.view.frame.height * 0.15).isActive = true
        billAmountTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: self.view.frame.height * 0.7).isActive = true
        calculateButton.topAnchor.constraint(equalTo: self.view.topAnchor, constant: self.view.frame.height * 0.85).isActive = true
        errorLabel.topAnchor.constraint(equalTo: self.view.topAnchor, constant: self.view.frame.height * 0.78).isActive = true
    }

    func configureUIs()
    {
        setGradientBackground()
        autoLayout()
        tipperLabel.layer.borderWidth = 2.0
        tipperLabel.layer.borderColor = UIColor.white.cgColor
    }
}
