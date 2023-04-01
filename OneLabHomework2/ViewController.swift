//
//  ViewController.swift
//  OneLabHomework2
//
//  Created by Gazinho Dos Santos on 30.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .systemGray6
        scrollView.frame = view.bounds
        scrollView.contentSize = CGSize(width: contentView.frame.size.width, height: contentView.frame.size.height+CGFloat(Constants.spaceFromTheTop))
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let contentView = UIView(frame: CGRect(x: Constants.spaceFromTheSides, y: Constants.spaceFromTheTop, width: Int(view.frame.width)-Constants.spaceFromTheSides*2, height: Int(Double(Constants.numberOfCells)*(Constants.cellHeight+Constants.stackViewSpacing))))
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 11
        return contentView
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = Constants.stackViewSpacing
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView)
//        setupContentViewConstraints()
        setupColors()
        setupViewsConstraints()
    }
}

extension ViewController {
    private func setupContentViewConstraints() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            contentView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 10),
            contentView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
        ])
        
    }
}

extension ViewController {
    private func setupViewsConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            stackView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            stackView.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
        ])
        
        for view in stackView.arrangedSubviews {
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalToConstant: 300),
                view.heightAnchor.constraint(equalToConstant: 100),
            ])
        }
        
    }
    
    private func setupColors() {
        let colors = [UIColor.systemTeal, .systemPurple, .systemMint]
        for index in 0..<Constants.numberOfCells {
            let view = UIView()
            view.backgroundColor = colors[index % colors.count]
            stackView.addArrangedSubview(view)
        }
    }
}

extension ViewController {
    enum Constants {
        static let numberOfCells = 15
        static let cellWidth = 300.0
        static let cellHeight = 100.0
        static let stackViewSpacing = 10.0
        static let spaceFromTheSides = 20
        static let spaceFromTheTop = 50
    }
}
