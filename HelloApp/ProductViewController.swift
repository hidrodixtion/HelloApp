//
//  ProductViewController.swift
//  HelloApp
//
//  Created by Adi Nugroho on 20/07/18.
//  Copyright © 2018 Lonely Box. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var labelSize: UILabel!
    @IBOutlet weak var labelColor: UILabel!
    @IBOutlet weak var labelStatus: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelDelivery: UILabel!
    @IBOutlet weak var btnAddToCart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelSize.text = NSLocalizedString("Size", comment: "")
        labelColor.text = NSLocalizedString("Color", comment: "")
        labelStatus.text = NSLocalizedString("Status", comment: "")
        labelPrice.text = NSLocalizedString("Price", comment: "")
        labelDelivery.text = NSLocalizedString("Delivery", comment: "")
        btnAddToCart.setTitle(NSLocalizedString("Add to cart", comment: "").uppercased(), for: .normal)
    }

    @IBAction func onBtnClicked(_ sender: UIButton) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            self?.showAlert()
        }
    }
    
    private func showAlert() {
        let title = NSLocalizedString("Success", comment: "")
        let message = NSLocalizedString("Message", comment: "")
        
        let uiAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { (_) in
            uiAlert.dismiss(animated: true, completion: nil)
        }
        uiAlert.addAction(okAction)
        
        present(uiAlert, animated: true, completion: nil)
    }
}
