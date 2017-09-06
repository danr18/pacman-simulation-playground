import Foundation
import SpriteKit


public class PacmanScene: SKScene {
    
    let playerSpeed: CGFloat = 50.0
    var pacman: SKSpriteNode?
    var playerTextures: [SKTexture] = []
    var lastTouch: CGPoint? = nil
    var blinky: SKSpriteNode?
    var clyde: SKSpriteNode?
    var inky: SKSpriteNode?
    var pinky: SKSpriteNode?
    var bar1: SKSpriteNode?
    var bar2: SKSpriteNode?
    var barBL: SKSpriteNode?
    var barBR: SKSpriteNode?
    var logo: SKSpriteNode?
    var barTL: SKSpriteNode?
    var barTR: SKSpriteNode?
    var barV1: SKSpriteNode?
    var barV2: SKSpriteNode?
    var barV3: SKSpriteNode?
    var barV4: SKSpriteNode?
    var barC1: SKSpriteNode?
    var barC2: SKSpriteNode?
    
    
    override public init(size: CGSize) {
        let backgroundTexture = SKTexture(imageNamed: "background.png")
        let background = SKSpriteNode(texture: backgroundTexture)
        
        background.position = CGPoint(x:0,y:0)
        
        
        // +++PACMAN+++
        
        let pacmanTexture = SKTexture(imageNamed: "pacman01.png")
        pacman = SKSpriteNode(texture: pacmanTexture)
        pacman?.name = "pacman"
        
        pacman?.position = CGPoint(x:30, y:30)
        pacman?.zPosition = 1.0
        pacman?.physicsBody = SKPhysicsBody(texture: pacmanTexture, size: CGSize(width: (pacman?.size.width)!, height: (pacman?.size.height)!))
        pacman?.physicsBody?.allowsRotation = true
        pacman?.physicsBody?.affectedByGravity = false
        pacman?.physicsBody?.mass = 2
        


        for i in 1...4 {
            playerTextures.append(SKTexture(imageNamed: "pacman0\(i)"))
        }
        
        //BLINKY
        let blinkyTexture = SKTexture(imageNamed: "blinky.png")
        blinky = SKSpriteNode(texture: blinkyTexture)
        blinky?.name = "blinky"
        
        blinky?.position = CGPoint(x: 15, y: 60)
        blinky?.zPosition = 1.0
        blinky?.physicsBody = SKPhysicsBody(texture: pacmanTexture, size: CGSize(width: (blinky?.size.width)!, height: (blinky?.size.height)!))
        blinky?.physicsBody?.allowsRotation = false
        blinky?.physicsBody?.affectedByGravity = false
        blinky?.physicsBody?.mass = 1000
        
        
        
        //CLYDE
        let clydeTexture = SKTexture(imageNamed: "clyde.png")
        clyde = SKSpriteNode(texture: clydeTexture)
        clyde?.name = "clyde"
        
        clyde?.position = CGPoint(x: 20, y: 580)
        clyde?.zPosition = 1.0
        clyde?.physicsBody = SKPhysicsBody(texture: pacmanTexture, size: CGSize(width: (clyde?.size.width)!, height: (clyde?.size.height)!))
        clyde?.physicsBody?.allowsRotation = false
        clyde?.physicsBody?.affectedByGravity = false
        clyde?.physicsBody?.mass = 10
        
        //INKY
        let inkyTexture = SKTexture(imageNamed: "inky.png")
        inky = SKSpriteNode(texture: inkyTexture)
        inky?.name = "inky"
        
        inky?.position = CGPoint(x: 380, y: 300)
        inky?.zPosition = 1.0
        inky?.physicsBody = SKPhysicsBody(texture: pacmanTexture, size: CGSize(width: (inky?.size.width)!, height: (inky?.size.height)!))
        inky?.physicsBody?.allowsRotation = false
        inky?.physicsBody?.affectedByGravity = false
        inky?.physicsBody?.mass = 10
        
        //PINKY
        let pinkyTexture = SKTexture(imageNamed: "pinky.png")
        pinky = SKSpriteNode(texture: pinkyTexture)
        pinky?.name = "pinky"
        
        pinky?.position = CGPoint(x: 380, y: 20)
        pinky?.zPosition = 1.0
        pinky?.physicsBody = SKPhysicsBody(texture: pacmanTexture, size: CGSize(width: (pinky?.size.width)!, height: (pinky?.size.height)!))
        pinky?.physicsBody?.allowsRotation = false
        pinky?.physicsBody?.affectedByGravity = false
        pinky?.physicsBody?.mass = 10
        
        //logo
        let logoTexture = SKTexture(imageNamed: "logo.png")
        logo = SKSpriteNode(texture: logoTexture)
        logo?.name = "logo"
        
        logo?.position = CGPoint(x: 200, y:300)
        logo?.zPosition = 1.0
        logo?.physicsBody = SKPhysicsBody(texture: logoTexture, size: CGSize(width: (logo?.size.width)!, height: (logo?.size.height)!))
        logo?.physicsBody?.allowsRotation = false
        logo?.physicsBody?.affectedByGravity = false
        logo?.physicsBody?.mass = 100000000000
        logo?.physicsBody?.isDynamic = false
       

        //BARS
        //bar1
       let bar1Texture = SKTexture(imageNamed: "bar1.png")
        bar1 = SKSpriteNode(texture: bar1Texture)
        bar1?.name = "bar1"
        bar1?.position = CGPoint(x:0, y:0)
        bar1?.zPosition = 1.0
        bar1?.physicsBody = SKPhysicsBody(texture: bar1Texture, size: CGSize(width: (bar1?.size.width)!, height: (bar1?.size.height)!))
        bar1?.physicsBody?.affectedByGravity = false
        bar1?.physicsBody?.mass = 1000000000000000
        bar1?.physicsBody?.isDynamic = false
        //bar2
        let bar2Texture = SKTexture(imageNamed: "bar2.png")
        bar2 = SKSpriteNode(texture: bar2Texture)
        bar2?.name = "bar2"
        bar2?.position = CGPoint(x:0, y:600)
        bar2?.zPosition = 1.0
        bar2?.physicsBody = SKPhysicsBody(texture: bar1Texture, size: CGSize(width: (bar2?.size.width)!, height: (bar2?.size.height)!))
        bar2?.physicsBody?.affectedByGravity = false
        bar2?.physicsBody?.mass = 1000000000000000
        bar2?.physicsBody?.isDynamic = false
        //barBottomLeft
        let barBLTexture = SKTexture(imageNamed: "barBL.png")
        barBL = SKSpriteNode(texture: barBLTexture)
        barBL?.name = "barBL"
        barBL?.position = CGPoint(x:100, y:50)
        barBL?.zPosition = 1.0
        barBL?.physicsBody = SKPhysicsBody(texture: bar1Texture, size: CGSize(width: (barBL?.size.width)!, height: (barBL?.size.height)!))
        barBL?.physicsBody?.affectedByGravity = false
        barBL?.physicsBody?.mass = 100000000000000000
        barBL?.physicsBody?.isDynamic = false
        //barBottomRight
        let barBRTexture = SKTexture(imageNamed: "barBR.png")
        barBR = SKSpriteNode(texture: barBRTexture)
        barBR?.name = "barBR"
        barBR?.position = CGPoint(x:300, y:50)
        barBR?.zPosition = 1.0
        barBR?.physicsBody = SKPhysicsBody(texture: bar1Texture, size: CGSize(width: (barBR?.size.width)!, height: (barBR?.size.height)!))
        barBR?.physicsBody?.affectedByGravity = false
        barBR?.physicsBody?.mass = 100000000000000000
        barBR?.physicsBody?.isDynamic = false
        
        //barTopLeft
        let barTLTexture = SKTexture(imageNamed: "barTL.png")
        barTL = SKSpriteNode(texture: barTLTexture)
        barTL?.name = "barTL"
        barTL?.position = CGPoint(x:100, y:560)
        barTL?.zPosition = 1.0
        barTL?.physicsBody = SKPhysicsBody(texture: bar1Texture, size: CGSize(width: (barTL?.size.width)!, height: (barTL?.size.height)!))
        barTL?.physicsBody?.affectedByGravity = false
        barTL?.physicsBody?.mass = 100000000000000000
        barTL?.physicsBody?.isDynamic = false
       
        //barTopRight
        let barTRTexture = SKTexture(imageNamed: "barTR.png")
        barTR = SKSpriteNode(texture: barTRTexture)
        barTR?.name = "barTR"
        barTR?.position = CGPoint(x:300, y:560)
        barTR?.zPosition = 1.0
        barTR?.physicsBody = SKPhysicsBody(texture: bar1Texture, size: CGSize(width: (barTR?.size.width)!, height: (barTR?.size.height)!))
        barTR?.physicsBody?.affectedByGravity = false
        barTR?.physicsBody?.mass = 100000000000000000
        barTR?.physicsBody?.isDynamic = false
        //barVertical1
        let barV1Texture = SKTexture(imageNamed: "barV1.png")
        barV1 = SKSpriteNode(texture: barV1Texture)
        barV1?.name = "barTR"
        barV1?.position = CGPoint(x:100, y:450)
        barV1?.zPosition = 1.0
        barV1?.physicsBody = SKPhysicsBody(texture: bar1Texture, size: CGSize(width: (barV1?.size.width)!, height: (barV1?.size.height)!))
        barV1?.physicsBody?.affectedByGravity = false
        barV1?.physicsBody?.mass = 100000000000000000
        barV1?.physicsBody?.isDynamic = false
        
        //barVertical2
        let barV2Texture = SKTexture(imageNamed: "barV2.png")
        barV2 = SKSpriteNode(texture: barV2Texture)
        barV2?.name = "barV2"
        barV2?.position = CGPoint(x:100, y:150)
        barV2?.zPosition = 1.0
        barV2?.physicsBody = SKPhysicsBody(texture: bar1Texture, size: CGSize(width: (barTR?.size.width)!, height: (barTR?.size.height)!))
        barV2?.physicsBody?.affectedByGravity = false
        barV2?.physicsBody?.mass = 100000000000000000
        barV2?.physicsBody?.isDynamic = false
        //barVertical3
        let barV3Texture = SKTexture(imageNamed: "barV3.png")
        barV3 = SKSpriteNode(texture: barV3Texture)
        barV3?.name = "barV3"
        barV3?.position = CGPoint(x:300, y:450)
        barV3?.zPosition = 1.0
        barV3?.physicsBody = SKPhysicsBody(texture: bar1Texture, size: CGSize(width: (barV3?.size.width)!, height: (barV3?.size.height)!))
        barV3?.physicsBody?.affectedByGravity = false
        barV3?.physicsBody?.mass = 100000000000000000
        barV3?.physicsBody?.isDynamic = false
        //barVertical4
        let barV4Texture = SKTexture(imageNamed: "barV4.png")
        barV4 = SKSpriteNode(texture: barV4Texture)
        barV4?.name = "barV2"
        barV4?.position = CGPoint(x:300, y:150)
        barV4?.zPosition = 1.0
        barV4?.physicsBody = SKPhysicsBody(texture: barV4Texture, size: CGSize(width: (barV4?.size.width)!, height: (barV4?.size.height)!))
        barV4?.physicsBody?.affectedByGravity = false
        barV4?.physicsBody?.mass = 100000000000000000
        barV4?.physicsBody?.isDynamic = false
        //barCenter1
        let barC1Texture = SKTexture(imageNamed: "barC1.png")
        barC1 = SKSpriteNode(texture: barC1Texture)
        barC1?.name = "barBR"
        barC1?.position = CGPoint(x:200, y:450)
        barC1?.zPosition = 1.0
        barC1?.physicsBody = SKPhysicsBody(texture: barC1Texture, size: CGSize(width: (barC1?.size.width)!, height: (barC1?.size.height)!))
        barC1?.physicsBody?.affectedByGravity = false
        barC1?.physicsBody?.mass = 100000000000000000
        barC1?.physicsBody?.isDynamic = false
        //barCenter2
        let barC2Texture = SKTexture(imageNamed: "barC2.png")
        barC2 = SKSpriteNode(texture: barC2Texture)
        barC2?.name = "barC2"
        barC2?.position = CGPoint(x:200, y:150)
        barC2?.zPosition = 1.0
        barC2?.physicsBody = SKPhysicsBody(texture: bar1Texture, size: CGSize(width: (barC2?.size.width)!, height: (barC2?.size.height)!))
        barC2?.physicsBody?.affectedByGravity = false
        barC2?.physicsBody?.mass = 100000000000000000
        barC2?.physicsBody?.isDynamic = false
        
        
        playerTextures.append(playerTextures[2])
        playerTextures.append(playerTextures[1])
        
        
        //addChild
        super.init(size: size)
        addChild(background)
        addChild(pacman!)
        addChild(blinky!)
        addChild(clyde!)
        addChild(inky!)
        addChild(pinky!)
        addChild(bar1!)
        addChild(bar2!)
        addChild(barBL!)
        addChild(barBR!)
        addChild(logo!)
        addChild(barTL!)
        addChild(barTR!)
        addChild(barV1!)
        addChild(barV2!)
        addChild(barV3!)
        addChild(barV4!)
        addChild(barC1!)
        addChild(barC2!)
        
    }
    
   
    
    
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func didMove(to view: SKView) {
        //blinky motion
        let bmoveUp = SKAction.moveBy(x: 0, y: 450, duration: 4.0)
        
        let bmoveRight = SKAction.moveBy(x:20, y:0, duration: 1.0)
        
        let bmoveDown = SKAction.moveBy(x:0, y: -450, duration: 4.0)
        
       let bmoveLeft = SKAction.moveBy(x:-20, y:0, duration: 1.0)
        
        let bsequence = SKAction.sequence([bmoveUp, bmoveRight, bmoveDown, bmoveLeft])
        
        let bendlessAction = SKAction.repeatForever(bsequence)
        blinky?.run(bendlessAction)
        //clyde
        let cmoveRight = SKAction.moveBy(x:180, y:0, duration: 2.0)
        let cmoveDown = SKAction.moveBy(x:0, y:-80, duration: 1.5)
        let cmoveLeft = SKAction.moveBy(x:-70, y:0, duration: 1.5)
        let cmoveRight2 = SKAction.moveBy(x:150, y:0, duration: 2.0)
        let reversedcmoveDown = cmoveDown.reversed()
        let cmoveLeft2 = SKAction.moveBy(x:-180, y:0, duration: 2.0)
        
        let csequence = SKAction.sequence([cmoveRight, cmoveDown, cmoveLeft, cmoveDown, cmoveRight2, reversedcmoveDown, cmoveLeft, reversedcmoveDown,cmoveLeft2])
        
        let cendlessAction = SKAction.repeatForever(csequence)
        clyde?.run(cendlessAction)
        
        //pinky
        let pmoveUp = SKAction.moveBy(x:0, y:220, duration: 2.0)
        let pmoveLeft = SKAction.moveBy(x:-170, y:0, duration: 1.5)
        let pmoveDown = SKAction.moveBy(x:0, y:-80, duration: 1.5)
        let pmoveRight = SKAction.moveBy(x:70, y:0, duration: 1.5)
        let pmoveDown2 = SKAction.moveBy(x:0, y:-80, duration: 1.5)
        let pmoveLeft2 = SKAction.moveBy(x:-70, y:0, duration: 1.5)
        let pmoveDown3 = SKAction.moveBy(x:0, y:-80, duration: 1.5)
        let pmoveRight2 = SKAction.moveBy(x:170, y:0, duration: 1.5)
        
        let psequence = SKAction.sequence([pmoveUp,pmoveLeft,pmoveDown,pmoveRight,pmoveDown2,pmoveLeft2,pmoveDown3,pmoveRight2])
        
        let pendlessAction = SKAction.repeatForever(psequence)
        pinky?.run(pendlessAction)
        //inky
        let imoveUp = SKAction.moveBy(x:0, y:50, duration: 1.5)
        let imoveLeft = SKAction.moveBy(x:-320, y:0, duration: 3.0)
        let imoveDown = SKAction.moveBy(x:0, y:-105, duration: 1.5)
        let imoveRight = SKAction.moveBy(x:320, y:0, duration: 3.0)
        let imoveUp2 = SKAction.moveBy(x:0, y:300, duration: 4.0)
        let imoveDown2 = SKAction.moveBy(x:0, y:-245, duration: 4.0)
        
        let isequence = SKAction.sequence([imoveUp,imoveLeft,imoveDown,imoveRight,imoveUp2,imoveDown2])
        
        let iendlessAction = SKAction.repeatForever(isequence)
        inky?.run(iendlessAction)
        ///
        
    }
    
  
   

    
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        print("Game has begun")
        handleTouches(touches: touches)
       

    }
    
    private func handleTouches(touches: Set<UITouch>) {
        for touch in touches {
            let touchLocation = touch.location(in: self)
            lastTouch = touchLocation
        }
    }
    
    override public func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("Second tap done")
        handleTouches(touches: touches)
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("No more taps")
        handleTouches(touches: touches)
    }
    
    override public func update(_ currentTime: TimeInterval) {
    
    }
    
   
    
    override public func didSimulatePhysics() {
        print("Physics simulation")
        if let _  = pacman {
            print("Pacman Update")
            updatePlayer()
        }
    }
    
    
    private func shouldMove( currentPosition: CGPoint, touchPosition: CGPoint) -> Bool {
        print("Moving")
        return abs(currentPosition.x - touchPosition.x) > pacman!.frame.width / 2 || abs(currentPosition.y - touchPosition.y) > pacman!.frame.height / 2
    }
    
    func updatePlayer() {
        print("Pacman Update")
        if let touch = lastTouch {
            let currentPosition = pacman!.position
            if shouldMove(currentPosition: currentPosition, touchPosition: touch) {
                let angle = atan2(currentPosition.y - touch.y, currentPosition.x - touch.x) + CGFloat(M_PI)
               let rotateAction = SKAction.rotate(toAngle: angle + CGFloat(M_PI * 0), duration: 0)
                
                pacman!.run(rotateAction)
                
                let velocityX = playerSpeed * cos(angle)
                let velocityY = playerSpeed * sin(angle)
                
                let newVelocity = CGVector(dx: velocityX, dy: velocityY)
                pacman!.physicsBody!.velocity = newVelocity
                
                startPlayerAnimation()
            } else {
                pacman!.physicsBody!.isResting = true
                stopPlayerAnimation()
            }
        }
    }
    
    func startPlayerAnimation() {
        if pacman!.action(forKey: "animate") == nil {
            let playerAnimation = SKAction.animate(with: playerTextures, timePerFrame: 0.1)
            pacman!.run(SKAction.repeatForever(playerAnimation), withKey: "animate")
        }
    }
    
    func stopPlayerAnimation() {
        pacman!.removeAction(forKey: "animate")
    }
    

}
