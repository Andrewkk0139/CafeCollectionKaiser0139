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
    }
    var menu = ["Chicken","Egg","Hotdog","Chip","Milk"]
    var menuPrice = [10,5,3,1,6]

}

