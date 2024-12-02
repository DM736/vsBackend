import  {datab} from '../configDB/db.js';
import { DataTypes } from "sequelize";

//modelo de la una cuenta bancaria simulada
export const Cuenta = datab.define("cuenta",{
    nombre:{
        type: DataTypes.STRING,
        allowNull: false
    },
    cedula:{
        type: DataTypes.STRING,
        allowNull: false
    },
    balance:{
        type: DataTypes.NUMBER,
        allowNull: false
    },
    clave:{
        type: DataTypes.NUMBER,
        allowNull: false
    },
    fechaExp:{
        type: DataTypes.STRING,
        allowNull: false
    }
},{
    timestamps: false,
})
export default Cuenta
