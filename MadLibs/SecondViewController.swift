//
//  SecondViewController.swift
//  MadLibs
//
//  Created by A Ab. on 15/05/1443 AH.
//

import UIKit

protocol SecondDelegate{
    func sendSentence(text: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var adjectiveTF: UITextField!
    @IBOutlet weak var verbTF1: UITextField!
    @IBOutlet weak var verbTF2: UITextField!
    @IBOutlet weak var nounTF: UITextField!
    
    var delegate: SecondDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitPressed(_ sender: UIButton) {
        guard let adjective = adjectiveTF.text else { return}
        guard let verb1 = verbTF1.text else { return}
        guard let verb2 = verbTF2.text else { return}
        guard let noun = nounTF.text else { return}
        let sentence = "We are having a perfectly \(adjective) right now. Later we will \(verb1) and \(verb2) in the \(noun)"
        delegate?.sendSentence(text: sentence)
        self.dismiss(animated: true, completion: nil)
         
    }
    

}
