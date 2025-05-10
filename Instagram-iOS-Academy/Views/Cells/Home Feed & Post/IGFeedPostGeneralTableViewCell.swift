//
//  IGFeedPostGeneralTableViewCell.swift
//  Instagram-iOS-Academy
//
//  Created by Brandon Boothe on 5/5/25.
//

import UIKit

/// Comments
class IGFeedPostGeneralTableViewCell: UITableViewCell {

    static let identifier = "IGFeedPostGeneralTableViewCell"
    
    override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemOrange
    }
    
    public func configure() {
        // configure the cell
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }

}
