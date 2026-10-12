// class Profesional {
//     const universidad 
//     const honorarios
//     const provincias
// }
class ProfesionalVinculadoA {
    const universidad = new Universidad(provincia = provincias, honorarios = sueldo)
    const sueldo = 1
    const provincias = []
    method sueldo() = universidad.honorarios()
    method provincias() = [universidad.provincia()]
    method universidad() = provincias.map({p=>p.universidad()})
  
}
class ProfesionalAsocidadoDelLitoral{
    const universidad 
    const honorarios = 3000
    const provincias = [entreRios,santaFe,corrientes] 
    method sueldo() = honorarios
    method provincias() = provincias
}
class ProfesionalLibre{
    const universidad 
    const honorarios 
    const provincias = []
    method sueldo() = honorarios
    method provincias() = provincias

}
class Universidad{
    const provincia
    const honorarios
    method honorarios() = honorarios
    method provincia() = provincia
}





////////////// PRUEBILLAS /////////////////
object entreRios{}
object santaFe{}
object corrientes{}
object buenosAires{}
object cordoba{}

const universidadDeSanMartin = new Universidad(provincia=buenosAires,honorarios=3500)
const universidadDeRosario = new Universidad(provincia=santaFe,honorarios=2800)
const universidadDeCorrientes = new Universidad(provincia=corrientes,honorarios=4200)
const universidadDeHurlingham = new Universidad(provincia=buenosAires,honorarios=8800)

const juana = new ProfesionalVinculadoA(universidad = universidadDeRosario)
const melina = new ProfesionalAsocidadoDelLitoral(universidad = universidadDeCorrientes)
const rocio = new ProfesionalLibre(universidad = universidadDeHurlingham, honorarios=5000,provincias=[santaFe,cordoba,buenosAires])
const luciana = new ProfesionalLibre(universidad=universidadDeRosario,honorarios=3200,provincias=[santaFe,entreRios])
