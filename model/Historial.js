import  {datab} from '../configDB/db.js';
import { DataTypes } from "sequelize";

export const Historial = datab.define("historials",{
    user:{
        type: DataTypes.NUMBER,
        allowNull: false
    },
    nombre:{
        type: DataTypes.STRING,
        allowNull: false
    },
    nombreProduc:{
        type: DataTypes.STRING,
        allowNull: false
    },
    productooid:{
        type: DataTypes.NUMBER,
        allowNull: false
    },
    cantidad:{
        type: DataTypes.NUMBER,
        allowNull: false
    }
},{
    timestamps: false,
})
