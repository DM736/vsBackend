import  {datab} from '../configDB/db.js';
import { DataTypes } from "sequelize";

export const Cesta = datab.define("cesta",{
    user:{
        type: DataTypes.NUMBER,
        allowNull: false
    },
    productoid:{
        type: DataTypes.STRING,
        allowNull: false
    },
    imgProducto:{
        type: DataTypes.STRING,
        allowNull: false
    },
    nombreProd:{
        type: DataTypes.STRING,
        allowNull: false
    },
    precio:{
        type: DataTypes.NUMBER,
        allowNull: false
    },
    cantidad:{
        type: DataTypes.NUMBER,
        allowNull: false
    },
},{
    timestamps: false,
})