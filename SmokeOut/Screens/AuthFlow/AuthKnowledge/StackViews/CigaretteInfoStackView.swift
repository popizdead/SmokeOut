//
//  CigaretteInfoStackView.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit

class CigaretteInfoStackView: UIStackView {
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
        
        self.addArrangedSubview(headerLabel)
        self.addArrangedSubview(cigarreteStackFieldInput)
    }
    
    private func setAligment() {
        self.axis = .vertical
        self.distribution = .fill
        self.alignment = .leading
    }
    
    //MARK: -Subviews
    private lazy var headerLabel: UILabel = {
        return UILabel.createLabel(text: "How many ciggaretes in pack?", font: Font.headerFont)
    }()
    
    private lazy var cigarreteStackFieldInput: UIStackView = {
        let label = UILabel.createLabel(text: "cigarette", font: Font.labelFont)
        let field = UITextField.createTextField(text: "20", font: Font.fieldFont)
        
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
