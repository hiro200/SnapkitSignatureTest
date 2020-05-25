//
//  ViewController.swift
//  SnapKitTest
//
//  Created by healthmax on 2020/05/22.
//  Copyright © 2020 healthmax. All rights reserved.
//

import UIKit
import SnapKit
import SwiftSignatureView


class ViewController: UIViewController, SwiftSignatureViewDelegate {
   
    

    
    let nameLb = UILabel()
    let nameTF = UITextField()
    let changeBt = UIButton()
    
   
    @IBOutlet weak var croppedSignatureView: UIImageView!
    
    @IBOutlet weak var signatureView: SwiftSignatureView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        snapkit_draw()
        self.signatureView.delegate = self
        
        
    }

    @IBAction func didTapClear() {
        signatureView.clear()
    }
    
    @IBAction func didTapRefreshCroppedSignature() {
        croppedSignatureView.image = signatureView.getCroppedSignature()
    }
    
    
    func swiftSignatureViewDidTapInside(_ view: SwiftSignatureView) {
           view
       }
       
       func swiftSignatureViewDidPanInside(_ view: SwiftSignatureView, _ pan: UIPanGestureRecognizer) {
           view
       }
    
    
    func snapkit_draw() {
        self.view.addSubview(nameLb)
        self.view.addSubview(nameTF)
        self.view.addSubview(changeBt)
        
        nameLb.textColor = .red
        nameLb.text = "HIHIHIHIHI"
        nameLb.backgroundColor = .blue
        changeBt.backgroundColor = .red
        nameTF.backgroundColor = .red
        
        changeBt.snp.makeConstraints{
            $0.center.equalToSuperview()
        }
        
        nameLb.snp.makeConstraints{
            $0.top.equalToSuperview().offset(100)
            $0.leading.equalToSuperview().offset(24)
            $0.trailing.equalToSuperview().offset(-24)
        }
        
        nameTF.snp.makeConstraints{
            $0.top.equalTo(nameLb.snp.bottom).offset(24)
            $0.leading.trailing.equalTo(nameLb)
            //$0.trailing.equalTo(nameLb)
        }
        
        
    }
    
 
    
}

