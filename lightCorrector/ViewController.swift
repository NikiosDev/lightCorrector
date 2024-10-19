//
//  ViewController.swift
//  lightCorrector
//
//  Created by Olga on 19.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var valueforBlue: UILabel!
    @IBOutlet weak var valueForRed: UILabel!
    @IBOutlet weak var valueForGreen: UILabel!
    
    @IBOutlet weak var sliderForRed: UISlider!
    @IBOutlet weak var sliderForBlue: UISlider!
    @IBOutlet weak var sliderForGreen: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 10
        
        sliderForBlue.value = 0.5
        sliderForBlue.minimumValue = 0
        sliderForBlue.maximumValue = 1
        
        sliderForRed.value = 0.5
        sliderForRed.minimumValue = 0
        sliderForRed.maximumValue = 1
        
        sliderForGreen.value = 0.5
        sliderForGreen.minimumValue = 0
        sliderForGreen.maximumValue = 1
    }
    @IBAction func greenSliderAction() {
        valueForGreen.text = String(format: "%.2f", sliderForGreen.value)
        mainView.backgroundColor = UIColor(red:CGFloat(sliderForRed.value), green: CGFloat(sliderForGreen.value), blue: CGFloat(sliderForBlue.value), alpha: 1)
    }

    @IBAction func redSliderAction() {
        valueForRed.text = String(format: "%.2f", sliderForRed.value)
        mainView.backgroundColor = UIColor(red:CGFloat(sliderForRed.value), green: CGFloat(sliderForGreen.value), blue: CGFloat(sliderForBlue.value), alpha: 1)
    }
    @IBAction func blueSliderAction() {
        valueforBlue.text = String(format: "%.2f", sliderForBlue.value)
        mainView.backgroundColor = UIColor(red:CGFloat(sliderForRed.value), green: CGFloat(sliderForGreen.value), blue: CGFloat(sliderForBlue.value), alpha: 1)
}
    
}
