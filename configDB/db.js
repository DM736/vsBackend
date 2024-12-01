import { Sequelize } from "sequelize";
import { config } from 'dotenv';
config()

export const datab = new Sequelize(process.env.BN,process.env.US,process.env.PR,{
    host: process.env.HT,
    dialect: 'mysql'
});