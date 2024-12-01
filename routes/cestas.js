import { addCesta, showCestaUser, showCesta2, showCesta3, delCesta, upCesta} from "../controller/cestaController.js";
import { Router } from "express";

const rutac = Router();

rutac.post("/", addCesta);
rutac.get("/2/:user/:productoid", showCestaUser);
rutac.get("/1/:user", showCesta2);
rutac.get("/0/", showCesta3);
rutac.delete("/:id", delCesta);
rutac.put("/:id", upCesta);

export default rutac

