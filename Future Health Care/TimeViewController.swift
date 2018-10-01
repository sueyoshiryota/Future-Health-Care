//
//  TimeViewController.swift
//  Future Health Care
//
//  Created by 末吉亮太 on 2018/09/24.
//  Copyright © 2018年 末吉亮太. All rights reserved.
//

import UIKit

class TimeViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    
    var futureArray = [String]()
    
    @IBOutlet var pickerView: UIPickerView!
   
    @IBOutlet var label: UILabel!
  
    
    var dataList = [
        "1",
        "2",
        "3",
        "4",
        "5",
        "6",
        "7",
        "8",
        "9",
        "10",
        "11",
        "12"
        ]
    let dataList2 = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
    "29",
    "30",
    "31",
    "32",
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44",
    "45",
    "46",
    "47",
    "48",
    "49",
    "50",
    "51",
    "52",
    "53",
    "54",
    "55",
    "56",
    "57",
    "58",
    "59",
    ]
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Delegate設定
        pickerView.delegate = self
        pickerView.dataSource = self
        
        
  
       
        

        // Do any additional setup after loading the view.
    }
        // UIPickerViewの列の数
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 2
            
        }
    
    
        
        // UIPickerViewの行数、要素の全数
        func pickerView(_ pickerView: UIPickerView,
                        numberOfRowsInComponent component: Int) -> Int {
            if component == 0 {
                return dataList.count}
            return dataList2.count
            
        }
        
        // UIPickerViewに表示する配列
        func pickerView(_ pickerView: UIPickerView,
                        titleForRow row: Int,
                        forComponent component: Int) -> String? {
            if component == 0{
            return dataList[row]
        }
            return dataList2[row]
    }
        
        // UIPickerViewのRowが選択された時の挙動
        func pickerView(_ pickerView: UIPickerView,
                        didSelectRow row: Int,
                        inComponent component: Int) {
            // 処理
            let minute = dataList[pickerView.selectedRow(inComponent: 0)]
            let second = dataList2[pickerView.selectedRow(inComponent: 1)]
            
            print("\(minute)時間\(second)分")
            
            label.text = "\(minute)時間\(second)分"
    
        }
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let alertViewController:AlertViewController = segue.destination as! AlertViewController
        alertViewController.text1 = label.text
       
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func button(){
      
      
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
