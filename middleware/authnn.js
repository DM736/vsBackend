import jwt from "jsonwebtoken";
import {Usuario} from "../model/Usuario.js";
export const authenti = async(req, res)=>{
    const {token}= req.body
    try {
        if(!token){
            return res.status(401).json({msg: "No hay token permiso invalido", valor: `${token}`})
        }
        const cypher = jwt.verify(token, process.env.SA);
        req.usuario = cypher.usuario;  
        const usuario = await Usuario.findByPk(req.usuario.id);
        return res.json({usuario}); 
    } catch (error) {
        res.status(500).json({msg: "Hubo un error al autenticar"})
    }
}
