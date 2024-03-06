//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Zeynep Turnalı on 8.02.2024.
//

import UIKit

/// Controller to house tabs and root tab controllers
final class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpTabs()
    }
    
    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let navToCharacters = UINavigationController(rootViewController: charactersVC)
        let navToLocations = UINavigationController(rootViewController: locationsVC)
        let navToEpisodes = UINavigationController(rootViewController: episodesVC)
        let navToSettings = UINavigationController(rootViewController: settingsVC)
        
        navToCharacters.tabBarItem = UITabBarItem(title: "Characters",
                                                  image: UIImage(systemName: "person"),
                                                  tag: 1
        )
        
        navToLocations.tabBarItem = UITabBarItem(title: "Locations",
                                                  image: UIImage(systemName: "globe"),
                                                  tag: 2
        )
        
        navToEpisodes.tabBarItem = UITabBarItem(title: "Episodes",
                                                  image: UIImage(systemName: "tv"),
                                                  tag: 3
        )
        
        navToSettings.tabBarItem = UITabBarItem(title: "Settings",
                                                  image: UIImage(systemName: "gear"),
                                                  tag: 4
        )
        
        for nav in [navToCharacters, navToLocations, navToEpisodes, navToSettings] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
            [navToCharacters, navToLocations, navToEpisodes, navToSettings],
            animated: true
        )
    }
}

