// Velocimetro Digital
// @iRodriguez



import UIKit


enum Velocidades: Int {
    
    //velocidades
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

//clase auto
class Auto {
    
    var velocidad: Velocidades
    
    // inicializador
    init() {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    //cambio de velocidad
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String) {
        
        switch velocidad {
            
        case .Apagado :
            velocidad = .VelocidadBaja
            return (velocidad.rawValue, "Velocidad Baja")
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            return (velocidad.rawValue, "Velocidad Alta")
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            return (velocidad.rawValue, "Velocidad Media")
            
        }
    }
}

