import objetos.*
import personas.*

object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota

    method reemplazarObjetos(enVidriera, enMostrador) {
        objetoEnVidriera = enVidriera
        objetoEnMostrador = enMostrador
    }

    method esBrillante() {
        return objetoEnVidriera.esBrillante() && objetoEnMostrador.esBrillante()
    }

    method esMonocromatico() {
        return objetoEnVidriera.color() == objetoEnMostrador.color()
    }

    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }

    method tieneObjetoDeColor(unColor) {
        return objetoEnMostrador.color() == unColor || objetoEnVidriera.color() == unColor
    }

    method puedeMejorar() {
        return !self.estaEquilibrado() || !self.esMonocromatico()
    }

    method puedeOfrecerleAlgoA(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
    }

}