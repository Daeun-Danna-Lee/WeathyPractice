//
//  HomeScrollVC.swift
//  weathyPractice
//
//  Created by DANNA LEE on 2020/12/23.
//

import UIKit

class HomeScrollVC: UIViewController{

    @IBOutlet var timeWeatherView: UIView!
    @IBOutlet var airView: UIView!
    @IBOutlet var detailInfoView: UIView!
    @IBOutlet var homeScroll: UIScrollView!
    
    var scrollOffset : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setTimeWeatherView()
        setAirView()
        setDetailInfoView()
//        initBoxLocation()
        
        homeScroll.delegate = self 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 0.7, animations: {
            self.initBoxLocation()
        })
        
    }
    
    func initBoxLocation() {
        timeWeatherView.frame = CGRect(x: 30, y: 20, width: 354, height: 224)
        airView.frame = CGRect(x: 30, y: 289, width: 354, height: 224)
        detailInfoView.frame = CGRect(x: 30, y: 558, width: 354, height: 224)
    }

}

extension HomeScrollVC {
    func setTimeWeatherView() {
        timeWeatherView.frame = CGRect(x: 30, y: 558, width: 354, height: 224)
        timeWeatherView.layer.cornerRadius = 35.0
        timeWeatherView.layer.masksToBounds = false
        timeWeatherView.layer.shadowColor = UIColor.black.cgColor
        timeWeatherView.layer.shadowOffset = CGSize(width: 0, height: 0)
        timeWeatherView.layer.shadowOpacity = 0.15
        timeWeatherView.layer.shadowRadius = 10
        timeWeatherView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    func setAirView() {
        airView.frame = CGRect(x: 30, y: 558, width: 354, height: 224)
        airView.layer.cornerRadius = 35.0
        airView.layer.masksToBounds = false
        airView.layer.shadowColor = UIColor.black.cgColor
        airView.layer.shadowOffset = CGSize(width: 0, height: 0)
        airView.layer.shadowOpacity = 0.15
        airView.layer.shadowRadius = 10
        airView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    func setDetailInfoView() {
        detailInfoView.frame = CGRect(x: 30, y: 558, width: 354, height: 224)
        detailInfoView.layer.cornerRadius = 35.0
        detailInfoView.layer.masksToBounds = false
        detailInfoView.layer.shadowColor = UIColor.black.cgColor
        detailInfoView.layer.shadowOffset = CGSize(width: 0, height: 0)
        detailInfoView.layer.shadowOpacity = 0.15
        detailInfoView.layer.shadowRadius = 10
        detailInfoView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}

extension HomeScrollVC : UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print(scrollView.contentOffset.y)
        self.scrollOffset = Int(scrollView.contentOffset.y)
        
        if self.scrollOffset <= -120 {
            
            self.dismiss(animated: true, completion: nil)
        }
    }
}
