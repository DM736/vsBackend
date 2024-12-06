import {addProduct, gotAll, gotExactProd, getByWord} from "../controller/productController.js"
import { Router } from "express"

const ruta = Router()
//rutas del controlador de los productos
ruta.post("/", addProduct);
ruta.get("/", gotAll);
ruta.get("/:id", gotExactProd);
ruta.get('/search/:query', getByWord);
export default ruta
