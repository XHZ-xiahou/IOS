//
//  ViewController.swift
//  12Bottom
//
//  Created by ChengAng on 2020/12/3.
//

import UIKit

class ViewController: UIViewController {

    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let button5 = UIButton()
    let button6 = UIButton()
    let button7 = UIButton()
    let button8 = UIButton()
    let button9 = UIButton()
    let button10 = UIButton()
    let button11 = UIButton()
    let button12 = UIButton()
    var flag = 0
    var temp:UIButton!
    var count = 0
    let endGameView = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        setupButton()
    }
    func creatRandomNumber()->Array<Int>{
        var randomNumbers:[Int] = []
        for i in 0...11{
            randomNumbers.append(i)
        }
        for i in 0..<randomNumbers.count{
            let n = (randomNumbers.count - 1) - i
            let cur = Int(arc4random_uniform(UInt32(n)))
            let temp = randomNumbers[n]
            randomNumbers[n] = randomNumbers[cur]
            randomNumbers[cur] = temp
        }
        return randomNumbers
    }

    func setupButton(){
        setupCoverImage()
        setupRandomImage()
        temp = endGameView
        view.addSubview(button1)
        button1.layer.masksToBounds = true
        button1.layer.cornerRadius = 12
        button1.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button1.addTarget(self, action: #selector(rolloverImages), for: .touchDown)
        view.addSubview(button2)
        button2.layer.masksToBounds = true
        button2.layer.cornerRadius = 12
        button2.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button2.addTarget(self, action: #selector(rolloverImages), for: .touchDown)
        view.addSubview(button3)
        button3.layer.masksToBounds = true
        button3.layer.cornerRadius = 12
        button3.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button3.addTarget(self, action: #selector(rolloverImages), for: .touchDown)
        view.addSubview(button4)
        button4.layer.masksToBounds = true
        button4.layer.cornerRadius = 12
        button4.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button4.addTarget(self, action: #selector(rolloverImages), for: .touchDown)
        view.addSubview(button5)
        button5.layer.masksToBounds = true
        button5.layer.cornerRadius = 12
        button5.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button5.addTarget(self, action: #selector(rolloverImages), for: .touchDown)
        view.addSubview(button6)
        button6.layer.masksToBounds = true
        button6.layer.cornerRadius = 12
        button6.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button6.addTarget(self, action: #selector(rolloverImages), for: .touchDown)
        view.addSubview(button7)
        button7.layer.masksToBounds = true
        button7.layer.cornerRadius = 12
        button7.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button7.addTarget(self, action: #selector(rolloverImages), for: .touchDown)
        view.addSubview(button8)
        button8.layer.masksToBounds = true
        button8.layer.cornerRadius = 12
        button8.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button8.addTarget(self, action: #selector(rolloverImages), for: .touchDown)
        view.addSubview(button9)
        button9.layer.masksToBounds = true
        button9.layer.cornerRadius = 12
        button9.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button9.addTarget(self, action: #selector(rolloverImages), for: .touchDown)
        view.addSubview(button10)
        button10.layer.masksToBounds = true
        button10.layer.cornerRadius = 12
        button10.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button10.addTarget(self, action: #selector(rolloverImages), for: .touchDown)
        view.addSubview(button11)
        button11.layer.masksToBounds = true
        button11.layer.cornerRadius = 12
        button11.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button11.addTarget(self, action: #selector(rolloverImages), for: .touchDown)
        view.addSubview(button12)
        button12.layer.masksToBounds = true
        button12.layer.cornerRadius = 12
        button12.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        button12.addTarget(self, action: #selector(rolloverImages), for: .touchDown)
        button1.frame = CGRect(x:0,y:0,width: 260,height: 260)
        button2.frame = CGRect(x:0+260+27,y:0,width: 260,height: 260)
        button3.frame = CGRect(x:0+260*2+27*2,y:0,width: 260,height: 260)
        button4.frame = CGRect(x:0,y:284,width: 260,height: 260)
        button5.frame = CGRect(x:0+260+27,y:284,width: 260,height: 260)
        button6.frame = CGRect(x:0+260*2+27*2,y:284,width: 260,height: 260)
        button7.frame = CGRect(x:0,y:284+284,width: 260,height: 260)
        button8.frame = CGRect(x:0+260+27,y:284*2,width: 260,height: 260)
        button9.frame = CGRect(x:0+260*2+27*2,y:284*2,width: 260,height: 260)
        button10.frame = CGRect(x:0,y:284*3,width: 260,height: 260)
        button11.frame = CGRect(x:0+260+27,y:284*3,width: 260,height: 260)
        button12.frame = CGRect(x:0+260*2+27*2,y:284*3,width: 260,height: 260)
    }
    func setupCoverImage(){
        button1.setImage(UIImage(named: "7.jpg"), for: .normal)
        button2.setImage(UIImage(named: "7.jpg"), for: .normal)
        button3.setImage(UIImage(named: "7.jpg"), for: .normal)
        button4.setImage(UIImage(named: "7.jpg"), for: .normal)
        button5.setImage(UIImage(named: "7.jpg"), for: .normal)
        button6.setImage(UIImage(named: "7.jpg"), for: .normal)
        button7.setImage(UIImage(named: "7.jpg"), for: .normal)
        button8.setImage(UIImage(named: "7.jpg"), for: .normal)
        button9.setImage(UIImage(named: "7.jpg"), for: .normal)
        button10.setImage(UIImage(named: "7.jpg"), for: .normal)
        button11.setImage(UIImage(named: "7.jpg"), for: .normal)
        button12.setImage(UIImage(named: "7.jpg"), for: .normal)
    }
    func setupRandomImage(){
        let array:[Int] = creatRandomNumber()
        button1.tag = array[0]%6
        button2.tag = array[1]%6
        button3.tag = array[2]%6
        button4.tag = array[3]%6
        button5.tag = array[4]%6
        button6.tag = array[5]%6
        button7.tag = array[6]%6
        button8.tag = array[7]%6
        button9.tag = array[8]%6
        button10.tag = array[9]%6
        button11.tag = array[10]%6
        button12.tag = array[11]%6
    }
    @objc func rolloverImages(_ i:UIButton) {
            
            if i == temp {
                i.setImage(UIImage(named: "7.jpg"), for: .normal)
                flag = 0
                temp = nil
            } else {
                if flag == 0 {
                    i.setImage(UIImage(named: "\(i.tag).jpg"), for: .normal)
                    temp = i
                    flag = 1
                } else {
                    i.setImage(UIImage(named: "\(i.tag).jpg"), for: .normal)
                    flag = 0
                    
                    if temp.tag == i.tag {
                        // 将触摸事件设为不响应
                        self.view.isUserInteractionEnabled = false
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { [self] in
                            i.isHidden = true
                            temp.isHidden = true
                            count = count+1
                            if count == 6 {
                                endGame()
                            }
                            temp = nil
                            // 恢复触摸事件的响应
                            self.view.isUserInteractionEnabled = true
                        }
                    } else {
                        // 将触摸事件设为不响应
                        self.view.isUserInteractionEnabled = false
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            i.setImage(UIImage(named: "7.jpg"), for: .normal)
                            self.temp.setImage(UIImage(named: "7.jpg"), for: .normal)
                            self.temp = nil
                            // 恢复触摸事件的响应
                            self.view.isUserInteractionEnabled = true
                        }
                    }
                }
            }
        }

    func endGame() -> Void {
        endGameView.isHidden = false
        count = 0
        view.addSubview(endGameView)
        endGameView.frame = CGRect(x: 117, y: 400, width: 600, height: 200)
        endGameView.layer.masksToBounds = true
        endGameView.layer.cornerRadius = 12
        endGameView.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        endGameView.setTitle("You are WIN! Play Again?", for: .normal)
        endGameView.setTitleColor(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), for: .normal)
        endGameView.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        endGameView.addTarget(self, action: #selector(reStartGame), for: .touchDown)
    }
    @objc func reStartGame(){
        endGameView.isHidden = true
        button1.isHidden = false
        button2.isHidden = false
        button3.isHidden = false
        button4.isHidden = false
        button5.isHidden = false
        button6.isHidden = false
        button7.isHidden = false
        button8.isHidden = false
        button9.isHidden = false
        button10.isHidden = false
        button11.isHidden = false
        button12.isHidden = false
        setupRandomImage()
        setupCoverImage()
    }
}
