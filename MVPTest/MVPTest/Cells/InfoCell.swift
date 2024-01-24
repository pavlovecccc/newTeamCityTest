//
//  File.swift
//  MVPTest
//
//  Created by user on 7.11.23.
//

import UIKit

final class InfoCell: UITableViewCell {

    // MARK: - GUI Properties

    private var title: UILabel = {
        let title = UILabel(frame: .zero)
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.systemFont(ofSize: 16.0)
        return title
    }()

    // MARK: - Init

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        self.setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setup()
    }

    // MARK: - Interanl

    func configur(title: String) {

    }
    
    // MARK: - Methods

    private func setup() {
        contentView.addSubview(self.title)
        setupConstraints()
    }

    private func setupConstraints() {
        let titleConstraints: [NSLayoutConstraint] = [
            title.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 5.0),
            title.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 5.0),
            title.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 5.0),
            title.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 5.0)
        ]

        titleConstraints.forEach {
            $0.isActive = true
        }
    }
}
