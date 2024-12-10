import  {datab} from '../configDB/db.js';
import { DataTypes } from "sequelize";

//modelo de la transaccion
export const Transacc = datab.define("transaccions",{
    nombre:{
        type: DataTypes.STRING,
        allowNull: false
    },
    apellido:{
        type: DataTypes.STRING,
        allowNull: false
    },
    cedula:{
        type: DataTypes.STRING,
        allowNull: false
    },
    cesta:{
        type: DataTypes.NUMBER,
        allowNull: false
    },
    metodoDpago:{
        type: DataTypes.STRING,
        allowNull: false
    },
    direcc:{
        type: DataTypes.STRING,
        allowNull: false
    },
    valorTotal:{
        type: DataTypes.NUMBER,
        allowNull: false
    },
    cantidad:{
        type: DataTypes.NUMBER,
        allowNull: false
    }
})