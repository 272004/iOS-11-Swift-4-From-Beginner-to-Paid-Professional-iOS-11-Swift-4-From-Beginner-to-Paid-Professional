//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by PEDRO LUIS AARON R on 8/5/18.
//  Copyright © 2018 paaron. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player:Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player=Player()
    }
    
    @IBOutlet weak var NextBtn: BorderButton!
    
    @IBAction func onNextTapped(_ sender: Any) {
        
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
   
    @IBAction func onMensTapped(_ sender: Any) {
        selectedLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectedLeague(leagueType: "womens")

    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectedLeague(leagueType: "coed")

    }
    
    func selectedLeague(leagueType:String){
        player.desiredLeague=leagueType
        NextBtn.isEnabled=true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player=player
        }
    }
}
