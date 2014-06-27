import UIKit
import SpriteKit
import Foundation
import UIKit

class BJViewController: UIViewController {
    func createScene(size: CGSize ) -> SKScene {
        let scene = BJScene(size: size)
        scene.scaleMode = .AspectFill
        return scene
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Configure the view.
        let skView = self.view as SKView
        skView.showsFPS = false
        skView.showsNodeCount = false
        skView.presentScene(createScene(skView.bounds.size))
    }

    override func shouldAutorotate() -> Bool {
        return false
    }

    override func supportedInterfaceOrientations() -> Int {
        return Int(UIInterfaceOrientationMask.Portrait.toRaw())
    }
}