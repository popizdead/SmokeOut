//
//  AuthKnowledgeViewController.swift
//  SmokeOut
//
//  Created by Daniel Dorozhkin on 16/04/2022.
//

import UIKit

class AuthKnowledgeViewController: UIViewController {
    typealias Localize = Constants.AuthKnwoledgeScreenLabels
    
    //MARK: -Outlets
    @IBOutlet private weak var contentStackView: UIStackView!
    
    //Pack type
    @IBOutlet private weak var packTypeHeaderLabel: UILabel!
    @IBOutlet private weak var packTypeStackView: UIStackView!
    @IBOutlet private weak var packTypeSegmentedControl: UISegmentedControl!
    
    //Pack info
    private lazy var cigaretteInfoStack = CigaretteInfoStackView()
    private lazy var tobaccoInfoStack   = TobaccoInfoStackView()
    
    //Cigarretes per day amount
    @IBOutlet private weak var amountPerDayStackView: UIStackView!
    
    @IBOutlet private weak var ciggaretePerDayHeaderLabel: UILabel!
    @IBOutlet private weak var cigaretteAmountLabel: UILabel!
    
    @IBOutlet private weak var cigarettePerDayTextField: UITextField!
    @IBOutlet private weak var cigarettePerDayLabel: UILabel!
    
    @IBOutlet private weak var amountKnowledgeSwitch: UISwitch!
    @IBOutlet private weak var amountKnowledgeLabel: UILabel!
    
    //Price info
    @IBOutlet private weak var priceHeaderLabel: UILabel!
    @IBOutlet private weak var priceTextField: UITextField!
    @IBOutlet private weak var currencyTextField: UITextField!
    
    //MARK: -Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupVC()
        setupUI()
    }
    
    private func setupVC() {
        setupKeyboardHiding()
        localize()
    }
    
    private func setupUI() {
        packTypeSegmentedControl.setFont()
        styleguide()
    }
    
    //MARK: -UI
    private func styleguide() {
        let headers : [UILabel] = [packTypeHeaderLabel, ciggaretePerDayHeaderLabel, priceHeaderLabel]
        headers.forEach {
            $0.font = Font.headerFont
            $0.textColor = .darkGray
        }
        
        let labels: [UILabel] = [cigaretteAmountLabel, amountKnowledgeLabel]
        labels.forEach {
            $0.font = Font.labelFont
            $0.textColor = .darkGray
        }
        
        let fields: [UITextField] = [priceTextField, currencyTextField]
        fields.forEach {
            $0.font = Font.fieldFont
            $0.textColor = .darkGray
        }
    }
    
    private func localize() {
        packTypeHeaderLabel.text = Localize.packTypeHeader
        
        packTypeSegmentedControl.setTitle(Localize.cigaretteSegment, forSegmentAt: 0)
        packTypeSegmentedControl.setTitle(Localize.tobaccoSegment, forSegmentAt: 1)
        
        ciggaretePerDayHeaderLabel.text = Localize.amountHeader
        cigaretteAmountLabel.text = Localize.ciggareteAmount
        amountKnowledgeLabel.text = Localize.knowledgeSwitchLabel
        
        priceHeaderLabel.text = Localize.priceHeader
    }
}
