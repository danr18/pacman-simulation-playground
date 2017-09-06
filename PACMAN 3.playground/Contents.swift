//PACMAN
//By Daniel Rascon
//WWDC 2017

import SpriteKit
import XCPlayground
import PlaygroundSupport


let frame = CGRect(x: 0, y: 0, width: 400, height: 600)
let scene = PacmanScene(size: frame.size)
let view = SKView(frame: frame)
view.presentScene(scene)
PlaygroundPage.current.liveView = view
