//
//  ViewControllerBuy.swift
//  burgerStore
//
//  Created by STEVEN HOBERG on 10/13/22.
//

import UIKit

class ViewControllerBuy: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buyButton(_ sender: UIButton) {
        //step 1 create alert controller
        let alert = UIAlertController(title: "Error!", message: "Insufficient Funds", preferredStyle: .alert)
        //step 2 create actions
        let okAction = UIAlertAction(title: "Try Again", style: .default, handler: nil)
        let noAction = UIAlertAction(title: "Ok", style: .destructive){
            (action) in
            self.view.backgroundColor = UIColor.green
        }
        //step 3 add actions
        alert.addAction(noAction)
        alert.addAction(okAction)
        
        //step 4 present alert controller
        present(alert, animated: true, completion: nil)
    }
//    override func viewWillDisappear(_ animated: Bool) {
//        performSegue(withIdentifier: "unwind", sender: self)
//
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
