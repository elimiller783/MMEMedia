//
//  extensions.swift
//  MeMedia
//
//  Created by Elias Miller on 4/1/17.
//  Copyright © 2017 Elias Miller. All rights reserved.
//

import Foundation
import UIKit


extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

extension UIApplication {
    var statusBarView: UIView? {
        return value(forKey: "statusBar") as? UIView
    }
}

extension UIView {
    func addConstraintsWithFormat(format: String, view: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, views) in view.enumerated() {
            let key = "v\(index)"
            viewsDictionary[key] = views
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
