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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //this function is performed automaticly when performing segue is called
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMenuSegue"{
            let nvc = segue.destination as! ViewControllerMenu //force dsowncasts as ViewControllerBlue nvc stands for next view controller
            //nvc.name = textOutlet.text! //alows access within desitnation
        }
    }
    @IBAction func unwind(_ seg: UIStoryboardSegue) {
        let svc = svc.source as! ViewControllerMenu
        svc.textOutRed.text!
    }
    //this function is performed automaticly when performing segue is called
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toBuySegue"{
            let nvc = segue.destination as! ViewControllerBuy //force dsowncasts as ViewControllerBlue nvc stands for next view controller
            nvc.name = textOutlet.text! //alows access within desitnation
        }
    }
    @IBAction func unwind(_ seg: UIStoryboardSegue) {
        print("unwind")
        let svc = svc.source as! ViewControllerRed
        svc.textOutRed.text!
    }
}
