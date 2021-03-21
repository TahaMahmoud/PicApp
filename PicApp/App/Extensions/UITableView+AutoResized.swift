//
//  UITableView+AutoResized.swift
//  Human
//
//  Created by mac on 10/6/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import UIKit

class IntrinsicTableView: UITableView {

    override var contentSize:CGSize {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
    }

    override var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
    }

}
