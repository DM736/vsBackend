import { CreatePago, validarInfo, showListComp} from "../controller/transaController.js";
import { Router } from "express";

const row = Router()
//rutas del controlador de la transaccion
row.post("/", CreatePago)
row.post("/validar/", validarInfo)
row.get("/registro/:cesta",showListComp )
export default row
