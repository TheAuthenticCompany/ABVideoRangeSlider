//
//  ABTimeView.swift
//  Pods
//
//  Created by Oscar J. Irun on 12/12/16.
//
//

import UIKit

open class ABTimeView: UIView {
    
    public var timeLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        timeLabel = UILabel()
        timeLabel.textAlignment = .center
        timeLabel.textColor = UIColor.lightGray
        timeLabel.font = UIFont.systemFont(ofSize: 16)
        addSubview(self.timeLabel)
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
		let timeLabelFrameWidth = self.frame.width
		let timeLabelFrameHeight = self.frame.height
        self.timeLabel.frame = CGRect(x: 0,
                                      y: 0,
                                      width: timeLabelFrameWidth,
                                      height: timeLabelFrameHeight)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func display(seconds: Float64) {
        let minutes = Int(seconds.truncatingRemainder(dividingBy: 3600) / 60)
        let seconds = Int(seconds.truncatingRemainder(dividingBy: 60))

        timeLabel.text = "\(minutes).\(seconds)s"
    }

}
