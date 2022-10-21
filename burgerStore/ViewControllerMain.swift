//
//  ViewControllerMain.swift
//  burgerStore
//
//  Created by STEVEN HOBERG on 10/13/22.
//

import UIKit

class ViewControllerMain: UIViewController {

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
            let nvc = segue.destination as! ViewControllerMenu //force dsowncasts as ViewControllerBlue nvc stands for next view controller
            //nvc.name = textOutlet.text! //alows access within desitnation
        }
        if segue.identifier == "toBuySegue"{
                    let nvc = segue.destination as! ViewControllerMenu //force dsowncasts as ViewControllerBlue nvc stands for next view controller
            //nvc.name = textOutlet.text! //alows access within desitnation
        }
    }
    @IBAction func unwind(_ seg: UIStoryboardSegue) {
        let svc = seg.source as! ViewControllerMain
        burgers = svc.burgers
        print(burgers)
        print("ahh")
        //svc.textOutRed.text!
    }
}
