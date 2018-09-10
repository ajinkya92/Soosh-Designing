//
//  LeagueVC.swift
//  Soosh Designing
//
//  Created by Ajinkya Sonar on 11/09/18.
//  Copyright © 2018 Ajinkya Sonar. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.isEnabled = false
        player = Player()
        
    }
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        
        let skillVC = storyboard?.instantiateViewController(withIdentifier: "SkillVC") as! SkillVC
        
        skillVC.player = player
        
        navigationController?.pushViewController(skillVC, animated: true)
    }
    
    @IBAction func gendetButtonTapped(_ sender: UIButton) {
        if sender.tag == 1 {
            selectLeague(leagueType: "Mens League")
        }
        else if sender.tag == 2 {
            selectLeague(leagueType: "Womens League")
        }
        else {
            selectLeague(leagueType: "Coed League")
        }
    }
    
    func selectLeague(leagueType: String) {
        
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    
    
}
