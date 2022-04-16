//
//  TobaccoInfoStackView.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit

class TobaccoInfoStackView: UIStackView {
    //MARK: -Properties
    private let labelFont = Styleguide.Font.labelFont
    private let fieldFont = Styleguide.Font.fieldFont
    private let headerFont = Styleguide.Font.headerFont
    
    //MARK: -Init
    init() {
        super.init(frame: .zero)
        configure()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -Configure
    private func configure() {
        setAligment()
        
        self.addArrangedSubview(gramStackView)
        self.addArrangedSubview(filterStackView)
    }
    
    private func setAligment() {
        self.axis = .vertical
        self.distribution = .fill
        self.alignment = .leading
    }
    
    //MARK: -Gram
    lazy var gramStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = 8

        stackView.addArrangedSubview(gramHeaderLabel)
        stackView.addArrangedSubview(gramStackFieldInput)

        return stackView
    }()
    
    lazy var gramHeaderLabel: UILabel = {
        return UILabel.createLabel(text: "How many gram in pack?", font: Font.headerFont)
    }()
    
    lazy var gramStackFieldInput: UIStackView = {
        let label = UILabel.createLabel(text: "gram", font: Font.labelFont)
        let field = UITextField.createTextField(text: "30", font: Font.fieldFont)

        let stackView = UIStackView()

        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.spacing = 8

        stackView.addArrangedSubview(field)
        stackView.addArrangedSubview(label)

        return stackView
    }()
    
    //MARK: -Filter size
    lazy var filterStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.spacing = 8

        stackView.addArrangedSubview(filterHeaderLabel)
        stackView.addArrangedSubview(filterStackFieldInput)

        return stackView
    }()
    
    lazy var filterHeaderLabel: UILabel = {
        return UILabel.createLabel(text: "What's filter size?", font: Font.headerFont)
    }()

    lazy var filterStackFieldInput: UIStackView = {
        let label = UILabel.createLabel(text: "mm", font: Font.labelFont)
        let field = UITextField.createTextField(text: "6", font: Font.fieldFont)

        let stackView = UIStackView()

        stackView.axis = .horizontal
        stackView.alignment = .leading
        stackView.distribution = .fillProportionally
        stackView.spacing = 8

        stackView.addArrangedSubview(field)
        stackView.addArrangedSubview(label)

        return stackView
    }()
}
