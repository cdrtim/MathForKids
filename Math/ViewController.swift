//
//  ViewController.swift
//  Math
//
//  Created by Pham Ngoc Hai on 11/3/16.
//  Copyright © 2016 Mystudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Lbl_ran1: UILabel!
    
    @IBOutlet weak var Lbl_ran2: UILabel!
    
    @IBOutlet weak var lbl_Wrong: UILabel!
    @IBOutlet weak var Lbl_True: UILabel!
    
    @IBOutlet weak var Btn_p1: UIButton!
    
    @IBOutlet weak var Btn_p2: UIButton!
    
    @IBOutlet weak var Btn_p3: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setRandom()
        
    }
    
    var Dung = 0
    var Sai = 0
    var randomBut = 0
    
    func dungsai()
    {
    lbl_Wrong.text = String(format: "Wrong: %d", Sai)
    Lbl_True.text = String(format: "True: %d", Dung)
    }
    @IBAction func Btn_ac1(_ sender: UIButton) {
        if randomBut == 1
        {
            Dung += 1
            print(Dung, Sai)
        }else{
            Sai += 1
        print(Dung, Sai)
        }
        dungsai()
        setRandom()
    }
    
    @IBAction func Btn_ac2(_ sender: UIButton) {
        if randomBut == 2
        {
            Dung += 1
            print(Dung, Sai)
        }else{
            Sai += 1
            print(Dung, Sai)
        }
        dungsai()
        setRandom()
    }
    
    
    @IBAction func Btn_ac3(_ sender: UIButton) {
        if randomBut == 3
        {
            Dung += 1
            print(Dung, Sai)
        }else{
            Sai += 1
            print(Dung, Sai)
        }
        dungsai()
        setRandom()
    }
    
    func setRandom()
        
    {
        let random1 = Int(arc4random_uniform(4)) + 1
        let random2 = Int(arc4random_uniform(4)) + 1
        
//        print("\(random1) \(random2)")
        Lbl_ran1.text = String(random1)
        Lbl_ran2.text = String(random2)
        setResult(randomA: random1, randomB: random2)
        
    }
    
    func setResult(randomA: Int, randomB: Int)
    {
        
        randomBut = Int(arc4random_uniform(3)) + 1
        if randomBut == 1
        {
            Btn_p1.setTitle(String(sum(p1: randomA, p2: randomB)), for: .normal)
            Btn_p2.setTitle(String(randomB), for: .normal)
            Btn_p3.setTitle(String(randomA), for: .normal)
        }
        else if randomBut == 2
        {
            Btn_p1.setTitle(String(randomA), for: .normal)
            Btn_p2.setTitle(String(sum(p1: randomA, p2: randomB)), for: .normal)
            Btn_p3.setTitle(String(randomB), for: .normal)
        }
            
        else if randomBut == 3
        {
            Btn_p1.setTitle(String(randomA), for: .normal)
            Btn_p2.setTitle(String(randomB), for: .normal)
            Btn_p3.setTitle(String(sum(p1: randomA, p2: randomB)), for: .normal)
        }
        
    }
    
    
    func sum(p1: Int, p2: Int) -> Int
    {
        return p1 + p2;
    }
    
}

