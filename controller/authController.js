import {Usuario} from "../model/Usuario.js";
import bcryptjs from "bcryptjs";
import {validationResult} from "express-validator";
import jwt from "jsonwebtoken";

//Autenticacion del usuario 
export const  authenUsuario = async (req, res) =>{

    const errores = validationResult(req);
    if(!errores.isEmpty()){
        return res.status(400).json({errores: errores.array()});
    }
    const {email, password} = req.body;
    //Validacion de la existencia del usuario
    try{
        let usuario = await Usuario.findOne({where:{email: email}});
        if(!usuario){
            return res.status(400).json({msg: "El usuario no existe"});
        } 
        //validacion de la contraseña
        const passVali = await bcryptjs.compare(password, usuario.password);
        if(!passVali){
            return res.status(400).json({msg: "Contraseña incorrecta"});
        }
        const payload ={
            usuario: {id: usuario.id},        
        }
        //creacion del token
        jwt.sign(
            payload, process.env.SA,
            {
                expiresIn: 3600,
            },
            (error, token)=>{
                if(error) throw error;

                res.json({token});
            }
        );
    } catch (error){
        console.log("Hubo un error");
        res.status(400).send("hubo un error");
    }
};
