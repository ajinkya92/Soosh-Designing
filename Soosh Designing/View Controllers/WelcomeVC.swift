//
//  WelcomeVC.swift
//  Soosh Designing
//
//  Created by Ajinkya Sonar on 11/09/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getStartedBtnTapped(_ sender: UIButton) {
        
        let leagueVC = storyboard?.instantiateViewController(withIdentifier: "LeagueVC") as! LeagueVC
        
        navigationController?.pushViewController(leagueVC, animated: true)
        
    }
    

}
