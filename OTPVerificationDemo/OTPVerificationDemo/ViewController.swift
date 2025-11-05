import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textfield1: UITextField!
    @IBOutlet weak var textfield2: UITextField!
    @IBOutlet weak var textfield3: UITextField!
    @IBOutlet weak var textfield4: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Delegate setup
        textfield1.delegate = self
        textfield2.delegate = self
        textfield3.delegate = self
        textfield4.delegate = self
        
        // Start from first text field
        textfield1.becomeFirstResponder()
    }
    
   
    
/*
    //  OTP single-digit logic
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // Allow only digits (no alphabets or symbols)
        let allowedCharacters = CharacterSet.decimalDigits
        if string.rangeOfCharacter(from: allowedCharacters.inverted) != nil && string != "" {
            return false
        }
        
        // Limit each field to a single digit
        if (textField.text?.count ?? 0) >= 1 && string != "" {
            return false
        }

        //  Move to next text field on typing
        if (textField.text ?? "").count < 1 && string.count > 0 {
            let nextTag = textField.tag + 1
            textField.text = string
            
            // move to next field if exists
            if let nextResponder = textField.superview?.viewWithTag(nextTag) {
                nextResponder.becomeFirstResponder()
            } else {
                textField.resignFirstResponder()
            }
            return false
        }
        
        //  Move to previous text field on delete
        else if (textField.text ?? "").count >= 1 && string.count == 0 {
            let previousTag = textField.tag - 1
            textField.text = ""
            
            if let previousResponder = textField.superview?.viewWithTag(previousTag) {
                previousResponder.becomeFirstResponder()
            }
            return false
        }
        
        return true
    }
*/
    
        
        // this function is called everytime the text field is updated or deleted
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            
            //        Prevent more than 1 character
    //        guard let currentText = textField.text else { return true }
    //        let newLength = currentText.count + string.count - range.length
    //        if newLength > 1 {return false}
            
            //        print("currentText.count -> \(currentText)")
            print("string.count -> \(string.count)")
            //        print("range.length -> \(range.length)")
            //
            //        print(newLength)
            
            //                textField.text = string
            
            if string.count == 1{
                print("in the 1")
                textField.text = string
                switch textField {
                case textfield1:
                    textfield2.becomeFirstResponder()
                case textfield2:
                    textfield3.becomeFirstResponder()
                case textfield3:
                    textfield4.becomeFirstResponder()
                case textfield4:
                    textfield4.becomeFirstResponder()
                default:
                    break
                }
            }else if string.count == 0 || textField.text == ""{
                print("in the 0")
                textField.text = ""
                switch textField {
                case textfield2:
                    textfield1.becomeFirstResponder()
                case textfield3:
                    textfield2.becomeFirstResponder()
                case textfield4:
                    textfield3.becomeFirstResponder()
                case textfield1:
                    textfield1.becomeFirstResponder()
                default:
                    break
                }
            }else if string.count > 1 {
                textField.text = string
                switch textField {
                case textfield1:
                    textfield2.becomeFirstResponder()
                case textfield2:
                    textfield3.becomeFirstResponder()
                case textfield3:
                    textfield4.becomeFirstResponder()
                case textfield4:
                    textfield4.becomeFirstResponder()
                default:
                    break
                }
            }
            return false
        }
        
    //    func textFieldDidBeginEditing(_ textField: UITextField) {
    //           print("TextField did begin editing method called")
    //       }
    //       func textFieldDidEndEditing(_ textField: UITextField) {
    //           print("TextField did end editing method called\(textField.text!)")
    //       }
    //       func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    //           print("TextField should begin editing method called")
    //           return true;
    //       }
    //       func textFieldShouldClear(_ textField: UITextField) -> Bool {
    //           print("TextField should clear method called")
    //           return true;
    //       }
    //       func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
    //           print("TextField should end editing method called")
    //           return true;
    //       }
    ////       func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    ////           print("While entering the characters this method gets called")
    ////           return true;
    ////       }
    //       func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    //           print("TextField should return method called")
    //           textField.resignFirstResponder();
    //           return true;
    //       }
    }


