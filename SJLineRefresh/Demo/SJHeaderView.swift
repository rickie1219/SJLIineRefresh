//
//  SJHeaderView.swift
//  SJLineRefresh
//
//  Created by Shi Jian on 2017/6/5.
//  Copyright © 2017年 Shi Jian. All rights reserved.
//

import UIKit

class SJHeaderView: UIView {

    @IBOutlet weak var stackView: UIStackView!
 
    fileprivate var configInfo = SJConfigModel.default()

    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        addParaViews()
        
    }
    
    fileprivate func addParaViews() {
    
        for aInfo in configInfo {
            
            let aView = SJConfigView(config: aInfo)
            stackView.addSubview(aView)
            stackView.addArrangedSubview(aView)
        }
    
    }
    
    func getHeaderFrame(width: CGFloat) -> CGRect {
        
        return CGRect(x: 0, y: 0, width: Int(width), height: 40 * configInfo.count)
    }

}
