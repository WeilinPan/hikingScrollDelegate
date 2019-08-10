//
//  ViewController.swift
//  hikingScrollDelegate
//
//  Created by APAN on 2019/8/10.
//  Copyright © 2019 APAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var imageColection: [UIImageView]!
    @IBOutlet weak var scrollControl: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet var viewOutlet: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = 9
        pageControl.currentPage = 0
        scrollControl.delegate = self
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = Int(scrollControl.contentOffset.x / scrollControl.frame.size.width)
        pageControl.currentPage = currentPage
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        for viewOutlet in scrollControl.subviews {
            if viewOutlet.isKind(of: UIView.self) {
                return viewOutlet
            }
        }
        return nil
    }

}

