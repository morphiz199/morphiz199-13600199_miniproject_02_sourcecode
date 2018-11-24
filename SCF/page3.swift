//
//  page3.swift
//  SCF
//
//  Created by ICT on 9/11/2561 BE.
//  Copyright © 2561 Phanuphong Lengjaroen. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
class page3: UIViewController, AVAudioPlayerDelegate  {
    var audioPlayer : AVAudioPlayer!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var processLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var TimeShow: UILabel!
    
    @IBOutlet weak var Question1: UIButton!
    @IBOutlet weak var Question2: UIButton!
    @IBOutlet weak var Question3: UIButton!
    
    
    let allQuestion = QuestionBank()
    var selectedAnswer : Int = 0
    var questionNumber : Int = 0
    var timer = Timer()
    var timeCount = 60
    var  score = 0
    let soundFilesName = ["1","2"]
    
    
    @objc func processTimer() {
        
        
        
        if timeCount > 0{
            timeCount -= 1
            TimeShow.text = "\(timeCount)"
        }
        else if timeCount < 0{
            timeCount = 0
            TimeShow.text = "\(timeCount)"
        }
        else{
            timer.invalidate()
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(page3.processTimer), userInfo: nil, repeats: true)
        updateQuestion()
        
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if timeCount < 60 && timeCount > 0{
        if sender.tag == selectedAnswer{
            print("picked true")
            score+=1
            ProgressHUD.showSuccess("สุดยอดไปเลย")
            playSound("2")
        }else{
            print("picked flase")
            ProgressHUD.showError("พลาดจนได้")
            playSound("1")
            
        }
        questionNumber+=1
        updateQuestion()
        updateUI()
    }
    }
    
    func updateQuestion(){
        if questionNumber < allQuestion.list.count{
            questionLabel?.text = allQuestion.list[questionNumber].questionText
            Question1?.setTitle(allQuestion.list[questionNumber].questionA, for: UIControl.State.normal)
            Question2?.setTitle(allQuestion.list[questionNumber].questionB, for: UIControl.State.normal)
            Question3?.setTitle(allQuestion.list[questionNumber].questionC, for: UIControl.State.normal)
            selectedAnswer = allQuestion.list[questionNumber].answer
        }
        else{
            print("end of question")
            let alert = UIAlertController(title: "ผลสรุป", message: "คุณได้เล่นเกมจบแล้ว คะแนนของคุณคือ \(score)", preferredStyle: .alert)
            let  restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.resatartQuestion()})
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            resatartQuestion()
        }
        
    }
    func updateUI(){
        progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(questionNumber)
        processLabel.text = String(questionNumber) + "/10"
    }
    func resatartQuestion(){
        timeCount = 60
        score = 0
        questionNumber = 0
        updateQuestion()
    }
    func playSound(_ playThis: String){
        let soundURL = Bundle.main.url(forResource: playThis, withExtension: "WAV")
        audioPlayer = try! AVAudioPlayer(contentsOf: soundURL!)
        audioPlayer.play()
    }
    
}
