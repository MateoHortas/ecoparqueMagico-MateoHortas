
object feliz {
    method estaFeliz() {
        return "feliz"
    }
}

object triste {
    method estaTriste() {
        return "triste"
    }
}

object diurno {
    method esDiurno() {
        return "diurno"
    }
}


object nocturno{
    method esNocturno() {
        return "nocturno"
    }
}



/*Dragón:
Tiene 90 años, es una criatura diurna y tiene también una temperatura corporal 
de 200°C. Necesita un cuidador que soporte altas temperaturas. Cuando se lo alimenta, 
su temperatura corporal aumenta en 20°. Entrena escupiendo fuego mientras vuela, por lo que cuando lo hace su 
temperatura se reduce 40°. El dragón no puede ser entrenado si su temperatura corporal es 100°C o menos. Cuando duerme, 
su temperatura corporal vuelve a 200°C. Se considera joven a un dragón si su edad es menor a 100 años.
*/



object dragon {
  var edad = 90

  var tipo = diurno

  var temperaturaCorporal = 200

  method temperaturaActual() {
    return temperaturaCorporal
  }

  method aumentarTemperatura() {
    temperaturaCorporal = temperaturaCorporal + 20
  }

  method entrenar() {
    if (temperaturaCorporal > 100) {
      temperaturaCorporal = temperaturaCorporal - 40
    }
  }



  method dormir() {
    temperaturaCorporal = 200
  }

  method esJoven() {
    return edad < 100
  }
}

/*Unicornio:
Tiene 30 años y, además, tiene un poder mágico de 3 unidades y queremos saber si está feliz. Es una criatura diurna y no tiene ninguna condición extra para ser cuidado. 
Cuando se lo alimenta, su poder mágico aumenta en 1 unidad. Para ser entrenado necesita que su poder mágico sea mayor a 5, y cuando lo hace se pone feliz. Si se duerme y 
estaba feliz, deja de estar feliz, pero si duerme cuando no está feliz, pasa a estar feliz. Se considera joven a un unicornio si tiene menos de 50 años.
*/

object unicornio {
var edad = 30


  var tipo = diurno

var poderMagico = 3

var estado = feliz

method poderMagico(){
return poderMagico
}

method alimentar(){
poderMagico = poderMagico + 1
}

  method entrenar() {
    if (poderMagico > 5) {
     estado = feliz
    }
  }

   method dormir() {
    if (estado==feliz) {
        estado = triste
    } else {
        estado = feliz
    }

}

 method esJoven() {
    return edad < 50
  }
}

/*Sirena:
Tiene 60 años y tiene una habilidad acuática de 40. Es una criatura nocturna y además el cuidador debe saber nadar. Cuando se la alimenta, 
su habilidad acuática aumenta en un 50%. La sirena además puede nadar una distancia (en metros) y practicar para la batalla. Al nadar, 
su habilidad acuática se reduce en 1 unidad por cada metro recorrido. Al practicar para la batalla, su habilidad acuática se reduce en 20 unidades. 
Cuando entrena, la sirena nada una cantidad de metros igual a la mitad de su habilidad acuática y además practica para la batalla. En este caso, puede practicar 
para la batalla o nadar, aunque la habilidad acuática sea menor a la necesitada, pero nunca puede ser menor que 0. En caso de que sea 0, no puede nadar ni practicar. 
Si duerme, su habilidad acuática vuelve a ser 40. Se considera joven a una sirena si tiene menos de 45 años.*/

object sirena {
var edad = 60

var habilidadAcuatica = 40

var tipo = nocturno

method alimentar(){
habilidadAcuatica = habilidadAcuatica * 1.5   
}

    method nadar(mtsRecorridos) {
        habilidadAcuatica = habilidadAcuatica - mtsRecorridos
        if (habilidadAcuatica < 0) {
            habilidadAcuatica = 0
        }
    }

    
    method entrenar() {
var metrosNadados = habilidadAcuatica / 2
 
 self.nadar(metrosNadados)

 habilidadAcuatica = habilidadAcuatica - 20
 if (habilidadAcuatica < 0) {
  habilidadAcuatica = 0
 }
    }

    method esJoven() {
        return edad < 45
    }


  method dormir() {
        habilidadAcuatica = 40
    }

}

/* Fénix:
Tiene 180 años y nos interesa saber su energía. Su energía es igual a su edad si su pelaje está reluciente, pero si no lo está se reduce a la mitad. Además, 
también queremos saber si el fénix es un pichón. Esto ocurre cuando su edad es menor a 5 años. Es una criatura tanto diurna como nocturna, por lo que se puede atender a 
cualquier horario. Requiere un trabajador que soporte altas temperaturas y tenga más de 5 años de experiencia para su cuidado. 
Cuando es alimentado pueden pasar dos cosas: si es un pichón, su edad aumenta en 1 unidad. Si ya no es pichón, su plumaje se vuelve reluciente. 
Solo puede entrenar si no es un pichón y aumenta su edad en un 10%. Si duerme su plumaje deja de estar reluciente, aunque no haya entrenado. Ahora bien, si duerme cuando tiene 
más de 200 años,el fénix termina su ciclo de vida y vuelve a ser un pichón, volviendo su edad a 1. Se considera joven a un fénix cuando tiene menos de 150 años.*/


object fenix {
 var edad = 180
 


 method energia(){
if ( self.plumajeReluciente()){
return edad 
}else {
        edad / 2
    }

 } 

   method esPichon() {
        return edad < 5
    }

  method esJoven() {
    return edad >= 5 && edad < 150
}

method alimentar(){
if (self.esPichon()){
  edad = edad + 1  
} else {
self.plumajeReluciente()
}
}

method entrenar() {
    if (!self.esPichon()) {
        edad = edad * 1.1
        !self. plumajeReluciente()
    }}



 method dormir(){
if (edad > 200){
   edad = 1 
} else {
 !self. plumajeReluciente() 
}

 }

 method plumajeReluciente(){
return true

 }
}


/*Gárgola:
Tiene 15 años y tiene dos estados: puede estar en forma de estatua o en forma viva, pudiendo cambiar esto cuando quiera. 
Es una criatura nocturna y solo puede ser cuidado si está en forma viva. Esta criatura no puede ser alimentada, por lo que si se quiere hacer esto no va a 
tener ningún efecto. Al entrenar, su edad disminuye en 1 unidad y 
vuelve a su estado de estatua. Como esta criatura descansa de día y el sol la daña, su edad aumenta 5 unidades cuando duerme. Siempre se la considera joven.*/


object gargola {
 var edad = 15

 var tipo = nocturno

 var estadoGargola = self.estaViva()

 method estatua(){
return true
 }   

 method estaViva(){
   return true
 }

method entrenar(){
edad = edad - 1
estadoGargola = self.estatua()

}

method dormir(){
 edad = edad + 5   
}

method esJoven(){
 return true   
}
}

