//
//  LeagueVC.swift
//  coursera_swoosh
//
//  Created by Muhammad Hashim on 1/18/20.
//  Copyright © 2020 Muhammad Hashim. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLEague(league:  "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLEague(league:  "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLEague(league: "co-ed")
    }
    
    func selectLEague(league: String){
        player.league = league
        nextBtn.isEnabled = true
    }
    
    @IBAction func onNextAction(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
    
}
