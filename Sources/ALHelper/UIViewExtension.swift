//
//  File.swift
//  
//
//  Created by Chad Garrett on 2022/08/12.
//


import UIKit

extension UIView {
    
    /// Adds a child view to the parent view and set its constraint to the parent views edges with the given insets
    /// - Parameters:
    ///   - view: Child view to be added to the views subviews
    ///   - insets: Optionally supplied insets to be added
    public func addSubviewAndPinToSuperviewEdges(_ view: UIView, insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)) {
        addSubview(view)
        view.pinToSuperviewEdges(with: insets)
    }
}

extension UIView {
    
    /// Add constraints to the view to lay it out to its parent views edges
    /// - Parameter insets: Optionally supplied insets to be added
    public func pinToSuperviewEdges(with insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)) {
        guard let superview = self.superview
        else { return }
        
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor, constant: insets.top),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: insets.left),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: insets.right),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: insets.bottom)
        ])
    }
}


