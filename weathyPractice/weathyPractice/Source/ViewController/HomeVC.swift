//
//  HomeVC.swift
//  weathyPractice
//
//  Created by DANNA LEE on 2020/12/22.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet var dateTimeLabel: UILabel!
    @IBOutlet var weatherImage: UIImageView!
    @IBOutlet var maxTempLabel: UILabel!
    @IBOutlet var minTempLabel: UILabel!
    @IBOutlet var weatherDescriptionLabel: UILabel!
    @IBOutlet var todayWeathyView: UIView!
    @IBOutlet var boxMaxTempLabel: UILabel!
    @IBOutlet var boxMinTempLabel: UILabel!
    @IBOutlet var boxNowTempTitleLabel: UIView!
    @IBOutlet var boxColdFaceImage: UIImageView!
    @IBOutlet var boxWeatherDescribeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setHeader()
        setBox()
        
        

        // Do any additional setup after loading the view.
    }
    

}

extension HomeVC {
    func setHeader() {
        weatherImage.alpha = 0.4
        maxTempLabel.alpha = 0.5
        minTempLabel.alpha = 0.5

        
    }
    
    func setBox() {
        todayWeathyView.layer.cornerRadius = 35.0
        todayWeathyView.layer.masksToBounds = false
        todayWeathyView.layer.shadowColor = UIColor.black.cgColor
        todayWeathyView.layer.shadowOffset = CGSize(width: 0, height: 0)
        todayWeathyView.layer.shadowOpacity = 0.15
        todayWeathyView.layer.shadowRadius = 10
        todayWeathyView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        boxMaxTempLabel.alpha = 0.5
        boxMinTempLabel.alpha = 0.5
        
        boxNowTempTitleLabel.layer.cornerRadius = 15
        
        boxColdFaceImage.alpha = 0.7
        boxWeatherDescribeLabel.alpha = 0.7
    }
}
