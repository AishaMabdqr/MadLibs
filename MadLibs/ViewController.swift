//
//  ViewController.swift
//  MadLibs
//
//  Created by A Ab. on 15/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var barBut: UIBarButtonItem!
    @IBOutlet weak var sentenceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func barButPressed(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        vc.delegate = self
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}

extension ViewController: SecondDelegate{
    func sendSentence(text: String) {
        sentenceLabel.text = text
    }
}

