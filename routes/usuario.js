import express from "express"
import { Router } from "express";
import {check} from "express-validator";
import { CreateUser } from "../controller/userController.js";

const usuari = Router()
//rutas del controlador para el registro de usuario
usuari.post("/", 
    [
        check("nombre", "el nombre es obligatorio").not().isEmpty(),
        check("email","agregar un email valido").isEmail(),
        check("password", "El password debe tener minimo 10 caracteres").isLength({
            min: 10,
        })
    ],
        CreateUser
    );
export default usuari