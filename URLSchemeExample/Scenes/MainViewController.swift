//
//  MainViewController.swift
//  URLSchemeExample
//
//  Created by Jaewon on 2022/08/08.
//

import UIKit

final class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapTransferMapAppButton(_ sender: UIButton) {
        guard
            let url = URL.init(string: "http://maps.apple.com/?ll=37.5642135,127.0016985"),
            UIApplication.shared.canOpenURL(url)
        else { return }
        
        UIApplication.shared.open(
            url,
            options: [ : ],
            completionHandler: nil
        )
    }
    
    @IBAction func didTapSendMessageButton(_ sender: UIButton) {
        guard
            let url = URL.init(string: "sms:1-888-555-1212"),
            UIApplication.shared.canOpenURL(url)
        else { return }
        
        UIApplication.shared.open(
            url,
            options: [ : ],
            completionHandler: nil
        )
    }
}
