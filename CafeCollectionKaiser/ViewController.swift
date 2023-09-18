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
    var cartCount = 0
    //
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
    }
    //Arrays
    var menu = ["chicken","egg","hotdog","chip","milk"]
    var menuPrice = [10,5,3,1,6]
    var cart: [String:Int] = [:]
    //
    @IBAction func purchaseAction(_ sender: Any) {
        print("button clicked")
        var name = nameFieldOutlet.text ?? ""
        var quantity = priceFieldOutlet.text ?? ""
        var index = 0
        while(index<menu.count){
            if(name.lowercased() == menu[index]){
                print(menu[index])
                cartCount+=1
                cartCounterOutlet.text = "\(cartCount)"
            } else{
                invalidOutlet.isHidden = false
            }
            index+=1
        }
        
    }
    func newScene(){
        
    }
}
