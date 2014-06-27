import Foundation
import SpriteKit

class BJScene : SKScene {

    let colorFelt = UIColor(red: (1.0/255.0), green: (64.0/255.0), blue:  (28.0/255.0), alpha: 1)
    let colorFeltLight = UIColor(red: (22.0/255.0), green: (123.0/255.0), blue:  (67.0/255.0), alpha: 1)

    func initBackground() {
        let felt = SKSpriteNode(color: colorFelt, size: self.size)
        felt.zPosition = -1
        felt.anchorPoint = CGPoint(x: 0, y: 0)
        felt.position = CGPoint(x: 0, y: 0)
        self.addChild(felt)
        let label = SKLabelNode(fontNamed: "HelveticaNeue-thin")
        label.position = CGPoint(x: 320, y: 1032)
        label.text = "BLACKJACK"
        label.fontSize = 72
        label.fontColor = colorFeltLight
        self.addChild(label)
    }

    override func didMoveToView(view: SKView) {
        initBackground()
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    }

    override func update(currentTime: CFTimeInterval) {
    }
}