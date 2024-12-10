import express from "express"
import Cuenta from "../model/Cuenta.js"
import {Cesta} from "../model/Cesta.js"
import {Historial} from "../model/Historial.js"
import {Transacc} from "../model/Transacc.js"

//validacion de cuenta y destino, creacion del historial de compras y transaccion
export const CreatePago = async(req, res)=>{
    const {nombre, apellido,cedula, balance, clave, fechaExp,direcc, cesta, valorTotal} = req.body
    try {
        const obtain = await Cuenta.findOne({
            where:{nombre: nombre}
        })
        const destino = await Cuenta.findAll({
            where:{id: 3}
        })
        await Cuenta.update({balance: obtain.balance - valorTotal},{
            where:{nombre: nombre}
        })
        await Cuenta.update({balance: destino[0].balance + valorTotal},{
            where:{id: 3, nombre: "Destin"}
        })
        const listaObj = await Cesta.findAll({where: {user: cesta}})
        for(let i=0; i<listaObj.length; i++){
            const dataHisto = {
                user: listaObj[i].user,
                nombre: nombre,
                nombreProduc: listaObj[i].nombreProd,
                productooid: listaObj[i].productoid,
                precio: listaObj[i].precio,
                cantidad: listaObj[i].cantidad
            }
            console.log(dataHisto)
            await Historial.create(dataHisto);
            await Cesta.destroy({where:{id: listaObj[i].id}})
        }
        const dataTransacc={
            nombre: nombre,
            apellido: apellido,
            cedula: cedula,
            cesta: listaObj[0].user,
            metodoDpago:"Tarjeta de Credito",
            direcc: direcc,
            valorTotal: valorTotal,
            cantidad: listaObj.length
        }
        await Transacc.create(dataTransacc);
        res.json({message: "Se proceso la transaccion"})
    } catch (error) {
        const obtain = await Cuenta.findOne({
            where:{nombre: nombre}
        })
        const destino = await Cuenta.findAll({
            where:{id: 3}
        })
        await Cuenta.update({balance: obtain.balance + valorTotal},{
            where:{nombre: nombre}
        })
        await Cuenta.update({balance: destino[0].balance - valorTotal},{
            where:{id: 3, nombre: "Destin"}
        })
        res.json({message: `Hubo un error al procesar la transaccion ${error}`})
    }
}
//validacion de los datos del usuario y cuenta bancaria
export const validarInfo = async(req, res)=>{
    const {nombre, cedula, balance, clave, email, fechaExp, valorTotal} = req.body
    const cuentauser = await Cuenta.findOne({where:{nombre: nombre}})
    if(!cuentauser) return res.status(200).json({message: "Error al validar los datos"})
    if(cuentauser.nombre != nombre) return res.status(200).json({message: "Hubo un error al validar el nombre de la persona"})
    if(cuentauser.cedula != cedula) return res.status(200).json({message: "Hubo un error al validar la identificacion de la persona"})
    if(cuentauser.clave != clave) return res.status(200).json({message: "la clave no coincide con la cuenta"})
    if(cuentauser.fechaExp != fechaExp) return res.status(200).json({message: "la clave no coincide con la cuenta"})
    if(cuentauser.balance < valorTotal) return res.status(200).json({message: "El saldo es insuficiente para proceder con el pago"})
    return res.status(200).json({message: "Los datos son validos"})
}
export const showListComp = async(req, res)=>{
    try {
        const listComp = await Transacc.findAll({
            where:{cesta: req.params.cesta}});
        if(listComp.length==0) return res.json({msg:"no hay registro de compras aun"})
        res.json(listComp);
    } catch (error) {
        res.status(502).send("Error al mostrar las compras");
        console.log(error)
    }
}