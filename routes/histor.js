import express from "express"
import { Router } from "express"
import { showTicketList, delTicketList } from "../controller/historiController.js"

const ruta = Router()
//rutas del controlador para el historial
ruta.get("/lista/:user", showTicketList);
ruta.delete("/:id", delTicketList);

export default ruta