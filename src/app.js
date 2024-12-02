import {datab} from '../configDB/db.js';
import cors from "cors";
import { config } from 'dotenv';config()
import express from 'express';
import authent from "../routes/authe.js";
import usuari from '../routes/usuario.js';
import product from '../routes/product.js';
import cestas from '../routes/cestas.js';
import transac from '../routes/transac.js'

const app = express();

app.use(cors());
app.use(express.json());
//rutas para la transferencia de datos
app.use('/uploads', express.static('uploads'));
app.use('/api/auth', authent);
app.use('/api/usuario', usuari);

app.use('/api/productos', product);
app.use('/api/transacc', transac);
app.use('/api/cesta', cestas)

try{
    datab.authenticate();
    console.log("Se ha conectado la base de datos")
}catch(error){
    console.error(`ERROR: no se conecto la base de datos ${error}`)
}
app.get(`/`, (req, res)=>{
    res.send("Server iniciado");
});
app.listen(3000,()=>{
    console.log(`Conectado desde el puerto: ${3000}`)
})