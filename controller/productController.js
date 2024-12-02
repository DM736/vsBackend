import Producto from "../model/Producto.js";
import bcrypt from "bcryptjs"
import { validationResult } from "express-validator";

//Agregar producto
export const addProduct = async(req, res)=>{
    const erro = validationResult(req);
    if(!erro.isEmpty()) return res.status(400).json({errores: erro.array()})
    const {id, imgData, nombreProducto}= req.file;
    try {
        let produc = await Producto.findOne({nombreProducto});
        if(!produc) return res.status(400).json({msg: "El producto ya existe"})
        produc = new Producto(req.body)
        await produc.save()
    } catch (error) {
        console.log("Hubo un error")
        console.log(error)
        res.satus(500).send("Hubo un error")
    }
}
//Obtener un producto por un id
export const gotExactProd = async(req, res)=>{
    try {
        const item = await Producto.findAll({where:{id: req.params.id}});
        if(!item)  return res.status(404).json({ msg: "Producto no encontrado"});
        res.json(item[0]);
    } catch (error) {
        res.status(500).send("Error al consultar el producto")
    }
}
//Obtener todos los registros
export const gotAll = async(req, res)=>{
    try {
        const item = await Producto.findAll()
        res.json(item);
    } catch (error) {
        res.status(500).send("Error al consultar el producto")
    }
}