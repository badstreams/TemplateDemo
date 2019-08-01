//
//  UIConstant.swift
//  TemplateDemo
//
//  Created by imac on 2019/8/1.
//  Copyright © 2019 jack. All rights reserved.
//

import Foundation
import UIKit

let kScreenWidth = UIScreen.main.bounds.size.width
let kScreenHeight = UIScreen.main.bounds.size.height
/// screen width: 320,375,414
let kScaleFacotr = kScreenWidth / 375

// iphone X
let isIphoneX = kScreenHeight == 812 ? true : false
// LBFMNavBarHeight
let kNavBarHeight : CGFloat = isIphoneX ? 88 : 64
// LBFMTabBarHeight
let kTabBarHeight : CGFloat = isIphoneX ? 49 + 34 : 49
