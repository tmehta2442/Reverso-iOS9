//
//  ViewController.swift
//  Reverso iOS9
//
//  Created by Tejas Mehta on 1/20/16.
//  Copyright © 2016 Tejas Mehta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblReversedWord: UILabel!
    
    var wordData = ""
    var reversedWord = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnReverse(sender: UIButton) {
        reverseTheWord()
    }

    @IBAction func btnClear(sender: UIButton) {
        clear()
    }
    
    func reverseTheWord(){
        wordData = txtName.text!
        reversedWord = String(wordData.characters.reverse())
        hideKeyboard()
        printReversedWord()
    }
    
    func clear(){
        txtName.text = ""
        lblReversedWord.text = "Word"
        hideKeyboard()
    }
    
    func printReversedWord(){
        lblReversedWord.text = "\(reversedWord.lowercaseString)"
    }
    
    func hideKeyboard(){
        txtName.resignFirstResponder()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        hideKeyboard()
    }
    
}

