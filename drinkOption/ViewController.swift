//
//  ViewController.swift
//  drinkOption
//
//  Created by Bryan Kuo on 2021/9/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var foodName: UISegmentedControl!
    @IBOutlet weak var finalOrder: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        finalOrder.layer.cornerRadius = 20
        
    }

    var food = "麵線糊"
    var spice = "不辣"
    var parsley = ""
    var vinegar = ""
    
    
    
    @IBAction func foodChoiced(_ sender: Any) {
        if foodName.selectedSegmentIndex == 0 {
            food = "麵線糊"
        } else if foodName.selectedSegmentIndex == 1 {
            food = "魷魚羹"
        } else if foodName.selectedSegmentIndex == 2{
            food = "生炒五味"
        } else {
            food = "蚵仔煎"
        }
    }
    

    @IBAction func spiceChoiced(_ sender: UISlider) {
        
        sender.value.round()
        
        if sender.value == 1 {
            spice = "不辣"
        } else if sender.value == 2 {
            spice = "小辣"
        } else if sender.value == 3 {
            spice = "中辣"
        } else if sender.value == 4 {
            spice = "大辣"
        }
    }
    
    @IBAction func choiceVinegar(_ sender: UISwitch) {
        if sender.isOn {
            vinegar = "，要加醋"
        } else {
            vinegar = ""
        }
    }
    
    @IBAction func choiceParsley(_ sender: UISwitch) {
        if sender.isOn {
            parsley = "，要加香菜"
        } else {
            parsley = ""
        }
    }
    
    
    @IBAction func choiceFinished(_ sender: Any) {
        
        finalOrder.text = "今晚...我想來點鹿港的\(food)，\(spice)\(vinegar)\(parsley)。"
        
    }
    
}

