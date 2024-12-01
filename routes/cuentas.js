import express from express
import { Router } from "express"
import { addCuenta, gotCuenta, upCuenta } from "../controller/cuentaController.js"

const rut = Router()

rut.post("/", addCuenta);
rut.get("/:id", gotCuenta);
rut.put("/:id", upCuenta);

export default rut