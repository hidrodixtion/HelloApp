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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
