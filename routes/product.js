import {addProduct, gotAll, gotExactProd} from "../controller/productController.js"
import { Router } from "express"

const ruta = Router()
//rutas del controlador de los productos
ruta.post("/", addProduct);
ruta.get("/", gotAll);
ruta.get("/:id", gotExactProd);

export default ruta
