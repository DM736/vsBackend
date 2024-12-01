import { CreatePago, validarInfo} from "../controller/transaController.js";
import { Router } from "express";

const row = Router()
row.post("/", CreatePago)
row.post("/validar/", validarInfo)
export default row
