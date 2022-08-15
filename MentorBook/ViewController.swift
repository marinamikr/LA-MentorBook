//
//  ViewController.swift
//  MentorBook
//
//  Created by 原田摩利奈 on 8/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iphone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.jpg", course: "webS"))

        setUI()
    }
    
    func setUI()  {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    @IBAction func mae(){
        if index > 0 {
            index = index - 1
        } else {
            index = 2
        }
        setUI()
    }
    
    @IBAction func tugi(){
        if index < 2 {
        index = index + 1
        } else {
            index = 0
        }
        setUI()
    }


}

