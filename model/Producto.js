import  {datab} from '../configDB/db.js';
import { DataTypes } from "sequelize";

//modelo del producto de la tienda
const Producto = datab.define("producto",{
    imgData:{
        type: DataTypes.STRING,
        allowNull: false
    },
    imgNombre:{
        type: DataTypes.STRING,
        allowNull: false
    },
    imgType:{
        type: DataTypes.STRING,
        allowNull: false
    },
    nombreProducto:{
        type: DataTypes.STRING,
        allowNull: false
    },
    descriProducto:{
        type: DataTypes.STRING,
        allowNull: false
    },
    marca:{
        type: DataTypes.STRING,
        allowNull: false
    },
    categoria:{
        type: DataTypes.STRING,
        allowNull: false
    },
    tipoProducto:{
        type: DataTypes.STRING,
        allowNull: false
    },
    stockProducto:{
        type: DataTypes.INTEGER,
        allowNull: false
    },
    precio:{
        type: DataTypes.INTEGER,
        allowNull: false
    },
    caract1:{
        type: DataTypes.STRING,
        allowNull: false
    },
    caract2:{
        type: DataTypes.STRING,
        allowNull: false
    },
    caract3:{
        type: DataTypes.STRING,
        allowNull: false
    },
    caract4:{
        type: DataTypes.STRING,
        allowNull: false
    },
},{timestamps: false})
export default Producto