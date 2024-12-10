import { Historial } from "../model/Historial.js";

//funcion para obtener la lista de compras
export const showTicketList = async(req, res)=>{
    try {
        const listComp = await Historial.findAll({
            where:{
                user: req.params.user,
            }});
        if(listComp.length==0) return res.json({msg:"no hay registro de compras aun"})
        res.json(listComp);
    } catch (error) {
        res.status(502).send("Error al mostrar los tickets");
        console.log(error);
    }
}
//funcion para eliminar un producto de la cesta por id
export const delTicketList = async(req,res)=>{
    try {
        await Historial.destroy({
            where:{id: req.params.id}
        });
        res.json({msg: "El registro se ha eliminado"}); 
    } catch (error) {
        res.status(500).send("Error al eliminar el producto")
    }
}
