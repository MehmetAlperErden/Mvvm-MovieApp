//
//  MovieHomeCell.swift
//  MovieApp
//
//  Created by Alper Erden on 11.04.2023.
//

import UIKit

final class MovieHomeCell: UITableViewCell {
    
    // MARK: UI Elemets
    private let cellImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    
    private let cellNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private let cellOverView: UILabel = {
        let label = UILabel()
        return label
    }()
    
    // MARK: Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Cell Identifier
    
    enum Identifier: String {
        case custom = "cell"
    }
}

extension MovieHomeCell{
    
    func configure() {
        cellSubviews()
    }
    func cellSubviews() {
        addSubview(cellImageView)
        addSubview(cellNameLabel)
        addSubview(cellOverView)
    }
}
