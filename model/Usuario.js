import  {datab} from "../configDB/db.js";
import { DataTypes } from "sequelize";

//modelo del usuario
export const Usuario = datab.define("usuarios",{
    nombre:{
        type: DataTypes.STRING,
        allowNull: false
    },
    email:{
        type: DataTypes.STRING,
        allowNull: false
    },
    password:{
        type: DataTypes.STRING,
        allowNull: false
    }
})