//
//  ViewController.swift
//  HomeWork_2_2_UIKit
//
//  Created by vfxbro on 26.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewDisplayColors: UIView!
    
    @IBOutlet var labelRedValue: UILabel!
    @IBOutlet var sliderRedColor: UISlider!
    
    @IBOutlet var labelGreenValue: UILabel!
    @IBOutlet var sliderGreenColor: UISlider!
    
    @IBOutlet var labelBlueValue: UILabel!
    @IBOutlet var sliderBlueColor: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: RED Slider/ label
        sliderRedColor.value = 0
        sliderRedColor.minimumValue = 0.0
        sliderRedColor.maximumValue = 255.0
        sliderRedColor.minimumTrackTintColor = .yellow
        sliderRedColor.maximumTrackTintColor = .blue
        sliderRedColor.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        labelRedValue.text = String(sliderRedColor.value)
        
        // MARK: GREEN Slider/ label
        sliderGreenColor.value = 0
        sliderGreenColor.minimumValue = 0.0
        sliderGreenColor.maximumValue = 255.0
        sliderGreenColor.minimumTrackTintColor = .yellow
        sliderGreenColor.maximumTrackTintColor = .blue
        sliderGreenColor.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        labelGreenValue.text = String(sliderGreenColor.value)
        
        // MARK: BLUE Slider/ label
        sliderBlueColor.value = 0
        sliderBlueColor.minimumValue = 0.0
        sliderBlueColor.maximumValue = 255.0
        sliderBlueColor.minimumTrackTintColor = .yellow
        sliderBlueColor.maximumTrackTintColor = .blue
        sliderBlueColor.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        labelBlueValue.text = String(sliderBlueColor.value)
        
    }

    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        labelRedValue.text = String(Int(sliderRedColor.value))
        
        let backgroundColor = UIColor(
            red: CGFloat(sliderRedColor.value/255),
                green: CGFloat(sliderGreenColor.value/255),
                blue: CGFloat(sliderBlueColor.value/255),
                alpha:1.0
            )
        viewDisplayColors.backgroundColor = backgroundColor
    }
    
    @IBAction func sliderValueChangedGreen(_ sender: UISlider) {
        labelGreenValue.text = String(Int(sliderGreenColor.value))
        
        let backgroundColor = UIColor(
            red: CGFloat(sliderRedColor.value/255),
                green: CGFloat(sliderGreenColor.value/255),
                blue: CGFloat(sliderBlueColor.value/255),
                alpha:1.0
            )
        viewDisplayColors.backgroundColor = backgroundColor
    }
    
    
    @IBAction func sliderValueChangedBlue(_ sender: UISlider) {
        labelBlueValue.text = String(Int(sliderBlueColor.value))
        
        let backgroundColor = UIColor(
            red: CGFloat(sliderRedColor.value/255),
                green: CGFloat(sliderGreenColor.value/255),
                blue: CGFloat(sliderBlueColor.value/255),
                alpha:1.0
            )
        viewDisplayColors.backgroundColor = backgroundColor
    }
    
}


