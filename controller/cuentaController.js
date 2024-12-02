import Cuenta from "../model/Cuenta.js"
// funcion para agregar citas
export const addCuenta = async(req, res) =>{
    try {
        await Cuenta.create(req.body);
        res.json({message: "Se ha agregado una nueva cuenta"});
    } catch (error) {
        console.log(error);
        res.status(500).send("Error al agregar el producto");
    }
}
// funcion para obtener una cuenta
export const gotCuenta = async(req, res)=>{
    try {
        const accn = await Cuenta.findAll({
            where:{id:req.params.id}
        });
        if(!accn) return res.status(404).json({ msg: "Cuenta no encontrada"});
        res.json(tar[0]);
    } catch (error) {
        res.status(500).send("Error al consultar la cuenta")
    }
}
// funcion para actualizar una cuenta
export const upCuenta = async(req, res)=>{
    try {
       await Cuenta.update(req.body,{
        where:{id: req.params.id}
       })
       res.json({msg: "La cuenta se ha actualizado"}); 
    } catch (error) { 
        res.status(500).send("Error al actualizar la cuenta");
    }
}

