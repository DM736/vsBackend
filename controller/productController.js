import Producto from "../model/Producto.js";
import bcrypt from "bcryptjs"
import { validationResult } from "express-validator";

//Agregar producto
export const addProduct = async(req, res)=>{
    try {
        const {nombreProducto}=req.body
        let produc = await Producto.findOne({where:{nombreProducto: nombreProducto}});
        if(produc) return res.status(400).json({msg: "El producto ya existe"})
        produc = new Producto(req.body)
        await produc.save()
        res.json({msg:"Producto agregado"})
    } catch (error) {
        console.log(error)
        res.status(500).send({msg:"Hubo un error"})
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
export const getByWord = async(req, res)=>{
        const quer = req.params.query;
        const item = await Producto.findAll()
        if(!req){
            return res.json(item);
        }else{
            const filterByQuer = item.filter(items =>
                items.nombreProducto.toLowerCase().includes(quer.toLowerCase()));
            return res.json(filterByQuer)
        }
    }