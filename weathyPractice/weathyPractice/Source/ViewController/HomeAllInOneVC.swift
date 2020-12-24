//
//  HomeAllInOneVC.swift
//  weathyPractice
//
//  Created by DANNA LEE on 2020/12/25.
//

import UIKit

class HomeAllInOneVC: UIViewController {

    @IBOutlet var homeMainView: UIView!
    @IBOutlet var dateTimeLabel: UILabel!
    @IBOutlet var weatherImage: UIImageView!
    @IBOutlet var maxTempLabel: UILabel!
    @IBOutlet var minTempLabel: UILabel!
    @IBOutlet var weatherDescriptionLabel: UILabel!
    @IBOutlet var todayWeathyView: UIView!
    @IBOutlet var boxMaxTempLabel: UILabel!
    @IBOutlet var boxMinTempLabel: UILabel!
    @IBOutlet var boxNowTempTitleView: UIView!
    @IBOutlet var boxColdFaceImage: UIImageView!
    @IBOutlet var boxWeatherDescribeLabel: UILabel!
    
    @IBOutlet var timeWeatherView: UIView!
    @IBOutlet var airView: UIView!
    @IBOutlet var detailInfoView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setHeader()
        setBox()
        setTimeWeatherView()
        setAirView()
        setDetailInfoView()
        // Do any additional setup after loading the view.
    }
    



}

extension HomeAllInOneVC {
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
        
        boxNowTempTitleView.layer.cornerRadius = 15
        
        boxColdFaceImage.alpha = 0.7
        boxWeatherDescribeLabel.alpha = 0.7
    }
    
    func setTimeWeatherView() {
        timeWeatherView.layer.cornerRadius = 35.0
        timeWeatherView.layer.masksToBounds = false
        timeWeatherView.layer.shadowColor = UIColor.black.cgColor
        timeWeatherView.layer.shadowOffset = CGSize(width: 0, height: 0)
        timeWeatherView.layer.shadowOpacity = 0.15
        timeWeatherView.layer.shadowRadius = 10
        timeWeatherView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    func setAirView() {
        airView.layer.cornerRadius = 35.0
        airView.layer.masksToBounds = false
        airView.layer.shadowColor = UIColor.black.cgColor
        airView.layer.shadowOffset = CGSize(width: 0, height: 0)
        airView.layer.shadowOpacity = 0.15
        airView.layer.shadowRadius = 10
        airView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    func setDetailInfoView() {
        detailInfoView.layer.cornerRadius = 35.0
        detailInfoView.layer.masksToBounds = false
        detailInfoView.layer.shadowColor = UIColor.black.cgColor
        detailInfoView.layer.shadowOffset = CGSize(width: 0, height: 0)
        detailInfoView.layer.shadowOpacity = 0.15
        detailInfoView.layer.shadowRadius = 10
        detailInfoView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
}
