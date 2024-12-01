import { Cesta } from "../model/Cesta.js";

export const addCesta = async(req, res) =>{
    try {
        await Cesta.create(req.body);
        res.json({message: "Se ha agregado una nueva tarea"});
    } catch (error) {
        console.log(error);
        res.status(500).send("Error al agregar el producto");
    }
}
export const showCestaUser = async(req, res)=>{
    try{
        const item = await Cesta.findOne({
            where:{
                user: req.params.user,
                productoid: req.params.productoid,
            }
        });
        if(item=="" || item==null) return res.json({msg:"registro no encontrado"})
        res.json(item);
    }catch(error){
        console.log(error)
        res.status(502).send("Error al mostar el producto")
    }
}
export const showCesta2 = async(req, res)=>{
    try{
        const item = await Cesta.findAll({
            where:{
                user: req.params.user
            }
        });
        if(item.length=="") return res.json({msg:"no hay registros todavia"})
        res.json(item);
    }catch(error){
        console.log(error)
        res.status(502).send("Error al mostar los productos")
    }
}
export const showCesta3 = async(req, res)=>{
    try{
        const item = await Cesta.findAll();
        res.json(item);
    }catch(error){
        console.log(error)
        res.status(502).send("Error al mostar los productos")
    }
}

export const delCesta = async(req,res)=>{
    try {
        await Cesta.destroy({
            where:{id: req.params.id}
        });
        res.json({msg: "El producto se ha eliminado exitosamente"}); 
    } catch (error) {
        res.status(500).send("Error al eliminar el producto")
    }
}

export const upCesta = async(req, res)=>{
    try {
       await Cesta.update(req.body,{
        where:{id: req.params.id}
       })
       res.json({msg: "El producto se ha actualizado"}); 
    } catch (error) { 
        res.status(500).send("Error al actualizar el producto");
    }
}