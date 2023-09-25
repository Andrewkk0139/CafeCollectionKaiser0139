//
//  ViewController.swift
//  CafeCollectionKaiser
//
//  Created by ANDREW KAISER on 9/14/23.
//

import UIKit

class ViewController: UIViewController {
    //Images
    @IBOutlet weak var cartOutlet: UIImageView!
    @IBOutlet weak var cartCounterOutlet: UILabel!
    @IBOutlet weak var chickenOutlet: UIImageView!
    @IBOutlet weak var eggOutlet: UIImageView!
    @IBOutlet weak var hotdogOutlet: UIImageView!
    @IBOutlet weak var chipOutlet: UIImageView!
    @IBOutlet weak var milkOutlet: UIImageView!
    //name and quantity fields
    @IBOutlet weak var nameFieldOutlet: UITextField!
    @IBOutlet weak var priceFieldOutlet: UITextField!
    @IBOutlet weak var invalidOutlet: UILabel!
    @IBOutlet weak var usernameOutlet: UITextField!
    @IBOutlet weak var passwordOutlet: UITextField!
    
    @IBOutlet weak var itemFieldOutlet: UITextField!
    @IBOutlet weak var adminPriceFieldOutlet: UITextField!
    var cartCount = 0
    // lables
    @IBOutlet weak var tenDollarOutlet: UILabel!
    @IBOutlet weak var fiveDollarOutlet: UILabel!
    @IBOutlet weak var threeDollarOutlet: UILabel!
    @IBOutlet weak var oneDollarOutlet: UILabel!
    @IBOutlet weak var sixDollarOutlet: UILabel!
    @IBOutlet weak var purchaseButton: UIButton!
    @IBOutlet weak var backOutlet: UIButton!
    //cartTextField
    @IBOutlet weak var cartTextFieldOutlet: UITextView!
    //addedTextField
    @IBOutlet weak var addedTextField: UITextView!
    //username and password
    var username = "Admin"
    var password = 0139
    //buttons
    @IBOutlet weak var addButtonOutlet: UIButton!
    
    @IBOutlet weak var loginOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cartOutlet.image = UIImage(named: "cart")
        chickenOutlet.image = UIImage(named: "chicken")
        eggOutlet.image = UIImage(named: "eggs")
        hotdogOutlet.image = UIImage(named: "hotdog")
        chipOutlet.image = UIImage(named: "chips")
        milkOutlet.image = UIImage(named: "milk")
        invalidOutlet.isHidden = true
        cartTextFieldOutlet.isHidden = true
        backOutlet.isHidden = true
        usernameOutlet.isHidden = true
        passwordOutlet.isHidden = true
        itemFieldOutlet.isHidden = true
        adminPriceFieldOutlet.isHidden = true
        addButtonOutlet.isHidden = true

        
    }
    //Arrays
    var menu = ["chicken","egg","hotdog","chip","milk"]
    var menuPrice = [10,5,3,1,6]
    var cart: [String:Int] = [:]
    //
    @IBAction func purchaseAction(_ sender: Any) {
        print("button clicked")
        var name = nameFieldOutlet.text ?? ""
        var quantity = Int(priceFieldOutlet.text!)
        var index = 0
        var checkingCart = Array(cart.keys)
        checkingCart.append("")
        while(index<menu.count){
            if(name.lowercased() == menu[index] && name.lowercased() != checkingCart[0]){
                if let a = quantity {
                    invalidOutlet.isHidden = true
                    print(menu[index])
                    cartCount+=1
                    cartCounterOutlet.text = "\(cartCount)"
                    cart[name.lowercased()] = (quantity ?? 0) * menuPrice[index]
                    print(cart)
                    break
                }
            } else{
                invalidOutlet.isHidden = false
            }
            index+=1
        }
    }
    @IBAction func cartAction(_ sender: Any) {
        cartScene()
    }
    
    @IBAction func loginAction(_ sender: Any) {
       // print("login attempted: \(usernameOutlet.text ?? "nill") and \(Int(passwordOutlet.text ?? "0")"))
        if((usernameOutlet.text ?? "nill").lowercased() == username && Int(passwordOutlet.text ?? "0") == password) {
            itemFieldOutlet.isHidden = false
            adminPriceFieldOutlet.isHidden = false
            addButtonOutlet.isHidden = true
        }
    }

    @IBAction func addingItemAction(_ sender: Any) {
        if let x = itemFieldOutlet.text {
            if let y = Int(itemFieldOutlet.text!){
               // menu[x] = y
                addedTextField.text += "\(x): $\(y)"
            }
        }
    }
    
    @IBAction func backAction(_ sender: Any) {
        chickenOutlet.isHidden = false
        eggOutlet.isHidden = false
        hotdogOutlet.isHidden = false
        chipOutlet.isHidden = false
        milkOutlet.isHidden = false
        tenDollarOutlet.isHidden = false
        fiveDollarOutlet.isHidden = false
        threeDollarOutlet.isHidden = false
        oneDollarOutlet.isHidden = false
        sixDollarOutlet.isHidden = false
        purchaseButton.isHidden = false
        nameFieldOutlet.isHidden = false
        priceFieldOutlet.isHidden = false
        cartTextFieldOutlet.isHidden = true
        cartTextFieldOutlet.text = ""
        cartOutlet.isHidden = false
        cartCounterOutlet.isHidden = false
        usernameOutlet.isHidden = true
        passwordOutlet.isHidden = true
        addedTextField.isHidden = false
        itemFieldOutlet.isHidden = true
        adminPriceFieldOutlet.isHidden = true
        addButtonOutlet.isHidden = true

    }
    func cartScene(){
        backOutlet.isHidden = false
        chickenOutlet.isHidden = true
        eggOutlet.isHidden = true
        hotdogOutlet.isHidden = true
        chipOutlet.isHidden = true
        milkOutlet.isHidden = true
        tenDollarOutlet.isHidden = true
        fiveDollarOutlet.isHidden = true
        threeDollarOutlet.isHidden = true
        oneDollarOutlet.isHidden = true
        sixDollarOutlet.isHidden = true
        purchaseButton.isHidden = true
        nameFieldOutlet.isHidden = true
        priceFieldOutlet.isHidden = true
        addedTextField.isHidden = true
        cartOutlet.isHidden = true
        cartCounterOutlet.isHidden = true
        cartTextFieldOutlet.isHidden = false
        usernameOutlet.isHidden = false
        passwordOutlet.isHidden = false
        
        for (name2,price) in cart{
            cartTextFieldOutlet.text += "\n \(name2): $\(price)"
        }
    }
}
