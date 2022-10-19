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
    var ketchup = false
    var patty = 1
    var bbqsauce = false
    var mushroom = false
    var lettuce = false
    var tomato = false
    var onion = false
    var bacon = false
    var mayo = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func burgerTypeBar(_ sender: UISegmentedControl) {
        switch burgerBarOutlet.selectedSegmentIndex
            {
            case 3:
            toppingView.isHidden = false
            default:
            toppingView.isHidden = true
            }
    }
    @IBAction func ketchupButton(_ sender: UIButton) {
        if ketchup{
            ketchup = true
            sender.backgroundColor = UIColor.green

        }
        else{
            ketchup = false
            sender.backgroundColor = UIColor.clear
        }
        print("gooba")
    }
    
    @IBAction func bbqButton(_ sender: UIButton) {
    }
    @IBAction func mayoButton(_ sender: UIButton) {
    }
    @IBAction func mushroomButton(_ sender: UIButton) {
    }
    @IBAction func lettuceButton(_ sender: UIButton) {
    }
    @IBAction func tomatoButton(_ sender: UIButton) {
    }
    @IBAction func onionButton(_ sender: UIButton) {
    }
    @IBAction func baconButton(_ sender: UIButton) {
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
