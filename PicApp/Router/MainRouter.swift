//
//  RootRouter.swift
//  Human
//
//  Created by mac on 9/23/20.
//  Copyright © 2020 AITC. All rights reserved.
//

import UIKit

class MainRouter {
    
    //let SCENE = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate
    //let sharedAppDelegate = UIApplication.shared.delegate as! AppDelegate

    static func presentRootScreen(viewController: UIViewController) {
        
        var window: UIWindow?
        
        if #available(iOS 13.0, *) {
            window = (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.window
        } else {
            window = (UIApplication.shared.delegate as! AppDelegate).window
        }
        
        window?.makeKeyAndVisible()
        window?.rootViewController = viewController
        
    }
    
    static func resetApp() {
        //let viewController = SplashRouter.createModule()
        //presentRootScreen(viewController: viewController!)
    }
    
    static func instantiate(_ storyboardID: Storyboards, _ viewController: ViewControllers) -> UIViewController? {
        
        let id = String(describing: viewController.rawValue)
        let storyboard = UIStoryboard(name: storyboardID.rawValue ,bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: id)
        return viewController
        
    }
    
    static func presentViewController(from: UIViewController, viewController: UIViewController) {
        from.present(viewController, animated: true, completion: nil)
    }
    
    static func dismissViewController(from: UIViewController) {
        from.dismiss(animated: true, completion: nil)
    }
    
}
