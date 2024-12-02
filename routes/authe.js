import express from "express"
import { Router } from "express";
import {check} from "express-validator";
import {authenUsuario} from "../controller/authController.js"
import {authenti} from "../middleware/authnn.js"

//"autenticar usuario  ruta: api/auth"
const authent = Router()
authent.post("/",
    [
        check("email", "agregar un email valido").isEmail(),
        check("password", "La contraseña debe tener minimo 10 caracteres").isLength({
            min: 10,
        }),
    ],
    authenUsuario
);
//"validacion del token ruta: api/auth/val/"
authent.post('/val/', authenti);
export default authent
