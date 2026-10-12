// class Profesional {
//     const universidad 
//     const honorarios
//     const provincias
// }
class ProfesionalVinculadoA {
    const universidad = new Universidad(provincia = provincias, honorarios = sueldo,nombre = nombre)
    const sueldo = 1
    const provincias = []
    const nombre
    var dineroCobrado = 0 
    method dineroCobrado() = dineroCobrado
    method nombre() = nombre
    method sueldo() = universidad.honorarios()
    method provincias() = [universidad.provincia()]
    method universidad() = universidad
    method cobrarDinero(importe){
        universidad.recibirDonacion(importe/2)
        dineroCobrado = dineroCobrado + importe/2
    }
}
class ProfesionalAsocidadoDelLitoral{
    const universidad 
    const honorarios = 3000
    const provincias = [entreRios,santaFe,corrientes] 
    const nombre
    var dineroCobrado = 0 
    method nombre() = nombre
    method sueldo() = honorarios
    method provincias() = provincias
    method universidad() = universidad
    method cobrarDinero(importe){
        asociacionProfesionalesDelLitoral.recibirDonacion(importe) 
    }
}
object asociacionProfesionalesDelLitoral{
    var totalRecaudado = 0
    method totalRecaudado() = totalRecaudado
    method recibirDonacion(importe){ totalRecaudado = totalRecaudado + importe}
}
class ProfesionalLibre{
    const universidad 
    const honorarios 
    const provincias = []
    const nombre 
    var dineroCobrado = 0
    method dineroCobrado() = dineroCobrado
    method nombre() = nombre
    method sueldo() = honorarios
    method provincias() = provincias
    method universidad() = universidad
    method cobrarDinero(importe){
        dineroCobrado = dineroCobrado + importe
    }
    method pasarDinero(profesional,monto){
        dineroCobrado = dineroCobrado - monto
        profesional.cobrarDinero(monto)
    }

}
class Universidad{
    const provincia
    const honorarios
    const nombre 
    var donaciones = 0
    method nombre() = nombre
    method honorarios() = honorarios
    method provincia() = provincia
    method donaciones() = donaciones
    method recibirDonacion(importe){
        donaciones = donaciones + importe
    }
}

class EmpresaDeServicios{
    const profesionales = []
    method nombrarProfesionales() = profesionales.map({p=>p.nombre()})
    method agregarProfesional(unProfesional){
        profesionales.add(unProfesional)
    }
    method quitarrProfesional(unProfesional){
        profesionales.remove(unProfesional)
    }
    method cuantosEstudiaronEnUna(universidadDeterminada){
        return profesionales.count({p=>p.universidad() == universidadDeterminada})
    }
    method profesionalesCaros(honorarioRefe){
        return profesionales.filter({p=>p.sueldo() > honorarioRefe}).map({p=>p.nombre()})
    }
    method conjuntoUniversidadesFormadoras(){
        return self.universidadedsFormadoras().asSet().map({p=>p.nombre()})
    }
    method universidadedsFormadoras(){
        return profesionales.map({p=>p.universidad()})
    }
    method profesionalMasBarato(){
        return profesionales.min({p=>p.sueldo()}).map({p=>p.nombre()})
    }
    method esDeGenteAcotada(){
        return !profesionales.all({p=>p.provincias().size() >= 3})
    }
}




////////////// PRUEBILLAS /////////////////
object entreRios{}
object santaFe{}
object corrientes{}
object buenosAires{}
object cordoba{}

const universidadDeSanMartin = new Universidad(provincia=buenosAires,honorarios=3500,nombre="universidadDeSanMartin")
const universidadDeRosario = new Universidad(provincia=santaFe,honorarios=2800,nombre="universidadDeRosario")
const universidadDeCorrientes = new Universidad(provincia=corrientes,honorarios=4200,nombre="universidadDeCorrientes")
const universidadDeHurlingham = new Universidad(provincia=buenosAires,honorarios=8800,nombre="universidadDeHurlingham")

const juana = new ProfesionalVinculadoA(universidad = universidadDeRosario,nombre="juana")
const melina = new ProfesionalAsocidadoDelLitoral(universidad = universidadDeCorrientes,nombre="melina")
const rocio = new ProfesionalLibre(universidad = universidadDeHurlingham, honorarios=5000,provincias=[santaFe,cordoba,buenosAires],nombre="rocio")
const luciana = new ProfesionalLibre(universidad=universidadDeRosario,honorarios=3200,provincias=[santaFe,entreRios],nombre="luciana")

const empresa1 = new EmpresaDeServicios()
