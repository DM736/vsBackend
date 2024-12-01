import  {datab} from "../configDB/db.js";
import { DataTypes } from "sequelize";

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