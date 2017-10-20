//
//  ViewController.swift
//  LasVegasDice
//
//  Created by Rilind on 10/19/17.
//  Copyright © 2017 Rilind Ramushi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Fotoja1: UIImageView!
    @IBOutlet weak var Fotoja2: UIImageView!
    
    var fotot = ["zari1", "zari2", "zari3", "zari4", "zari5", "zari6"]
    
    var fotot1 = ["zari1", "zari2", "zari3", "zari4", "zari5", "zari6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func rollButton(_ sender: Any) {
         luajLojen()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        if motion == UIEventSubtype.motionShake{
            
            luajLojen()
        }
    }
    
    
    
    func luajLojen(){
        var zariRandom:Int = Int(arc4random_uniform(UInt32(fotot.count)))
        var zariRandom2:Int = Int(arc4random_uniform(UInt32(fotot1.count)))
        
        var zariQeDel:String = (fotot[zariRandom])
        var zariQeDel2:String = (fotot1[zariRandom2])
        
        Fotoja1.image = UIImage.init(named:zariQeDel)
        Fotoja2.image = UIImage.init(named:zariQeDel2)

    }
}
