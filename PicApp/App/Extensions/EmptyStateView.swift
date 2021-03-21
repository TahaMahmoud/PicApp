//
//  EmptyStateView.swift
//  Steps
//
//  Created by Taha on 1/17/21.
//

import Foundation
import UIKit

enum Title {
    
    case notifications
}

func getTitleString(title: Title) -> String {
    
    switch title {
    case .notifications:
        return "notifications"
    default:
        return "data"
    
    }
    
}

class EmptyStateView {
    
    static func getEmptyStateView(title: Title, titleColor: UIColor, descriptionColor: UIColor) -> UIView {
        
        let titleMessage = "There is no " + getTitleString(title: title) + " yet"
        
        let emptyStateView = UIView()
        
        // set empty image
        let image = UIImage(named: "ic_no_data")
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x: 0, y: 0, width: 150, height: 150)
        emptyStateView.addSubview(imageView)

        imageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: emptyStateView.safeAreaLayoutGuide.topAnchor, constant: 50),
            imageView.centerXAnchor.constraint(equalTo: emptyStateView.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 150),
            imageView.heightAnchor.constraint(equalToConstant: 150),
        ])

        // set empty title
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        titleLabel.textAlignment = .center
        titleLabel.text = titleMessage
        titleLabel.textColor = titleColor
        titleLabel.font = AppFonts.getMediumFont(fontSize: 25)
        emptyStateView.addSubview(titleLabel)

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: imageView.safeAreaLayoutGuide.bottomAnchor, constant: 30),
            titleLabel.centerXAnchor.constraint(equalTo: emptyStateView.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 30)
        ])

        
        emptyStateView.transform = .identity
        emptyStateView.fadeIn(duration: 1)
        
        return emptyStateView
    }
    
}

