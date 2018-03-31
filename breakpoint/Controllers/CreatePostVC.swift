//
//  createPostVC.swift
//  breakpoint
//
//  Created by iosdev on 30.3.2018.
//  Copyright © 2018 HuyTrinh. All rights reserved.
//

import UIKit
import Firebase

class CreatePostVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var sendBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
        // Do any additional setup after loading the view.
        sendBtn.bindToKeyboard()
    }

    @IBAction func sendBtnWasPressed(_ sender: Any) {
        DataService.instance.uploadPost(withMesaage: textView.text!, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil, sendComplete: { (isComplete) in
            if isComplete {
                self.sendBtn.isEnabled = true
                self.dismiss(animated: true, completion: nil)
            } else {
                self.sendBtn.isEnabled = true
                print("There was an error while sending message!")
            }
        })
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension CreatePostVC: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
    
    func textViewDidChange(_ textView: UITextView) {
        if !textView.text.isEmpty && textView.text != "Say something here ..." {
            sendBtn.isEnabled = true
        } else {
            sendBtn.isEnabled = false
        }
    }
}
