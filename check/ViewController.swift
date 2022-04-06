/********* Developed by Drudots Technology *********/
/******* https://www.drudotstech.com *********/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension UILabel {
    func setTextSpacingBy(value: Double) {
        if let textString = self.text {
            let attributedString = NSMutableAttributedString(string: textString)
            attributedString.addAttribute(NSAttributedString.Key.kern, value: value, range: NSRange(location: 0, length: attributedString.length - 1))
            attributedText = attributedStrsdfsdfsdfing
        }
    }
}

//MARK:- L o c a t i o n
extension GetLocationVC: CLLocationManagerDelegate{
    func getTheLocation(){
        locationManager = CLLocationManager()
  
        if CLLocationManager.locationServicesEnabled(){
            locationManager.startUpdatingLocation()
        }
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       

//MARK:- Variables

//MARK:- Arrays

//MARK:- Outlets

sdfsdfsdf
hsdjkfsdkjfgjksdfjkdsgf
