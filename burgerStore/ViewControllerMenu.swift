//
//  ViewControllerMenu.swift
//  burgerStore
//
//  Created by STEVEN HOBERG on 10/13/22.
//

import UIKit

class ViewControllerMenu: UIViewController {
    @IBOutlet weak var toppingView: UIStackView!
    @IBOutlet weak var burgerBarOutlet: UISegmentedControl!
    @IBOutlet weak var burgerCookedController: UISegmentedControl!
    var burgers: [Burger] = []
    var ketchup = false
    var patty = 1
    var bbqsauce = false
    var mushroom = false
    var lettuce = false
    var tomato = false
    var onion = false
    var bacon = false
    var mayo = false
    var cheese = false
    var cooked = BurgerDone.mediumRare
    var bType = Btype.plain
    enum Btype{
        case cheese,plain,custom,deluxe
    }
    enum BurgerDone{
        case blueRare, rare, mediumRare, medium, mediumWell, wellDone
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func burgerCookedBar(_ sender: UISegmentedControl) {
        switch burgerCookedController.selectedSegmentIndex{
        case 0:
            cooked = .blueRare
        case 1:
            cooked = .rare
        case 2:
            cooked = .mediumRare
        case 3:
            cooked = .medium
        case 4:
            cooked = .mediumWell
        case 5:
            cooked = .wellDone
        default:
            break
        }
    }
    @IBAction func burgerTypeBar(_ sender: UISegmentedControl) {
        switch burgerBarOutlet.selectedSegmentIndex
            {
            case 0:
            bType = .plain
            case 1:
            bType = .cheese
            case 2:
            bType = .deluxe
            case 3:
            toppingView.isHidden = false
            default:
            toppingView.isHidden = true
            }
    }
    @IBAction func ketchupButton(_ sender: UIButton) {
        if !ketchup{
            ketchup = true
            sender.backgroundColor = UIColor.green

        }
        else{
            ketchup = false
            sender.backgroundColor = UIColor.clear
        }
    }
    
    @IBAction func bbqButton(_ sender: UIButton) {
        if !bbqsauce{
            bbqsauce = true
            sender.backgroundColor = UIColor.green

        }
        else{
            bbqsauce = false
            sender.backgroundColor = UIColor.clear
        }
    }
    @IBAction func mayoButton(_ sender: UIButton) {
        if !mayo{
            mayo = true
            sender.backgroundColor = UIColor.green

        }
        else{
            mayo = false
            sender.backgroundColor = UIColor.clear
        }
    }
    @IBAction func mushroomButton(_ sender: UIButton) {
        if !mushroom{
            mushroom = true
            sender.backgroundColor = UIColor.green

        }
        else{
            mushroom = false
            sender.backgroundColor = UIColor.clear
        }
    }
    @IBAction func lettuceButton(_ sender: UIButton) {
        if !lettuce{
            lettuce = true
            sender.backgroundColor = UIColor.green

        }
        else{
            lettuce = false
            sender.backgroundColor = UIColor.clear
        }
    }
    @IBAction func tomatoButton(_ sender: UIButton) {
        if !tomato{
            tomato = true
            sender.backgroundColor = UIColor.green

        }
        else{
            tomato = false
            sender.backgroundColor = UIColor.clear
        }
    }
    @IBAction func onionButton(_ sender: UIButton) {
        if !onion{
            onion = true
            sender.backgroundColor = UIColor.green

        }
        else{
            onion = false
            sender.backgroundColor = UIColor.clear
        }
    }
    @IBAction func baconButton(_ sender: UIButton) {
        if !bacon{
            bacon = true
            sender.backgroundColor = UIColor.green

        }
        else{
            bacon = false
            sender.backgroundColor = UIColor.clear
        }
    }
    @IBAction func cheeseButton(_ sender: UIButton) {
        if !cheese{
            cheese = true
            sender.backgroundColor = UIColor.green

        }
        else{
            cheese = false
            sender.backgroundColor = UIColor.clear
        }
    }
    
    @IBAction func addBurgerButton(_ sender: UIBarButtonItem) {
        if bType == .plain{
            burgers.append(Burger())
        }
        else if bType == .cheese{
            burgers.append(Burger(ketchup: true, patty: 1, bbqsauce: false, mushroom: false, lettuce: false, tomato: false, onion: false, bacon: false, mayo: false, cheese: true))
        }
        else if bType == .deluxe{
            burgers.append(Burger(ketchup: true, patty: 2, bbqsauce: false, mushroom: true, lettuce: true, tomato: true, onion: true, bacon: true, mayo: true, cheese: true))
        }
        else{
            burgers.append(Burger(ketchup: ketchup, patty: patty, bbqsauce: bbqsauce, mushroom: mushroom, lettuce: lettuce, tomato: tomato, onion: onion, bacon: bacon, mayo: mayo, cheese: cheese))
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
