//
//  ViewControllerMain.swift
//  burgerStore
//
//  Created by STEVEN HOBERG on 10/13/22.
//

import UIKit

class ViewControllerMain: UIViewController {
    @IBOutlet weak var menuOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var burgers: [Burger] = []

   
    @IBAction func toMenuButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toMenuSegue", sender: self)
    }
    @IBAction func toBuyButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toBuySegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMenuSegue"{
            let nvc = segue.destination as! ViewControllerMenu
            nvc.burgers = burgers//force dsowncasts as ViewControllerBlue nvc stands for next view controller
        }
        if segue.identifier == "toBuySegue"{
                    let nvc = segue.destination as! ViewControllerBuy //force dsowncasts as ViewControllerBlue nvc stands for next view controller
            //nvc.name = textOutlet.text! //alows access within desitnation
        }
    }
    @IBAction func unwind(_ seg: UIStoryboardSegue) {
        let svc = seg.source as! ViewControllerMenu
        burgers = svc.burgers
        updateMenu(burgers)
    }
    func updateMenu(_ newArray: [Burger]){
        menuOutlet.text! = "----------\n"
        for i in 0..<newArray.count{
            menuOutlet.text = menuOutlet.text! + "\(newArray[i].patty) patty's"
            if newArray[i].cheese{
                menuOutlet.text = menuOutlet.text! + ", cheese"
            }
            if newArray[i].mayo{
                menuOutlet.text = menuOutlet.text! + ", mayo"
            }
            if newArray[i].bacon{
                menuOutlet.text = menuOutlet.text! + ", bacon"
            }
            if newArray[i].onion{
                menuOutlet.text = menuOutlet.text! + ", onion"
            }
            if newArray[i].tomato{
                menuOutlet.text = menuOutlet.text! + ", tomato"
            }
            if newArray[i].lettuce{
                menuOutlet.text = menuOutlet.text! + ", lettuce"
            }
            if newArray[i].mushroom{
                menuOutlet.text = menuOutlet.text! + ", mushroom"
            }
            if newArray[i].ketchup{
                menuOutlet.text = menuOutlet.text! + ", ketchup"
            }
            if newArray[i].bbqsauce{
                menuOutlet.text = menuOutlet.text! + ", bbqsauce"
            }
            menuOutlet.text?.append("\n----------\n")
        }
    }
}
