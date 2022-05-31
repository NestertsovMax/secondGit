//
//  ViewController.swift
//  secondGit
//
//  Created by M1 on 31.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelRedColoe: UILabel!
    @IBOutlet weak var labelGreenColor: UILabel!
    @IBOutlet weak var labelBlueColor: UILabel!
    @IBOutlet weak var viewColorChange: UIView!
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderRed.value = (sliderRed.maximumValue - sliderRed.minimumValue) / 2 + sliderRed.minimumValue
        sliderBlue.value = (sliderBlue.maximumValue - sliderBlue.minimumValue) / 2 + sliderBlue.minimumValue
        sliderGreen.value = (sliderGreen.maximumValue - sliderGreen.minimumValue) / 2 + sliderGreen.minimumValue
        updateColorLabel()
        updateViewColor()
    }

    @IBAction func changeToMinValueColor(_ sender: UIButton) {
        sliderRed.value = sliderRed.minimumValue
        sliderGreen.value = sliderGreen.minimumValue
        sliderBlue.value = sliderBlue.minimumValue
        updateColorLabel()
        updateViewColor()
    }
    
    @IBAction func changeToMediumValueColor(_ sender: UIButton) {
        sliderRed.value = sliderRed.maximumValue / 2
        sliderGreen.value = sliderGreen.maximumValue / 2
        sliderBlue.value = sliderBlue.maximumValue / 2
        updateColorLabel()
        updateViewColor()
    }
    
    @IBAction func changeToMaxValueColor(_ sender: UIButton) {
        sliderRed.value = sliderRed.maximumValue
        sliderGreen.value = sliderGreen.maximumValue
        sliderBlue.value = sliderBlue.maximumValue
        updateColorLabel()
        updateViewColor()
    }
    
    func updateColorLabel() {
        labelRedColoe.text = "\(Int(sliderRed.value))"
        labelBlueColor.text = "\(Int(sliderBlue.value))"
        labelGreenColor.text = "\(Int(sliderGreen.value))"
    }
    
    @IBAction func sliderRed(_ sender: UISlider) {
        updateColorLabel()
        updateViewColor()
    }
    
    @IBAction func sliderGreen(_ sender: UISlider) {
        updateColorLabel()
        updateViewColor()
    }
    
    @IBAction func sliderBlue(_ sender: UISlider) {
        updateColorLabel()
        updateViewColor()
    }
    
    func updateViewColor() {
        viewColorChange.backgroundColor = UIColor(red: CGFloat(sliderRed.value) / 255, green: CGFloat(sliderGreen.value) / 255, blue: CGFloat(sliderBlue.value) / 255, alpha: 1)
    }
}

