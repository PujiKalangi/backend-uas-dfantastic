import { Sequelize } from "sequelize";
import db from "../config/Database.js";
import Place from "./PlaceModel.js";

const { DataTypes } = Sequelize;

const Tomohonloka = db.define(
  "tomohonloka",
  {
    uuid: {
      type: DataTypes.STRING,
      defaultValue: DataTypes.UUIDV4,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    name: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
        len: [3, 100],
      },
    },
    lokasi: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    desk: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true,
      },
    },
    image: DataTypes.STRING,
    url: DataTypes.STRING,
  },
  {
    freezeTableName: true,
  }
);

Place.hasMany(Tomohonloka);

Tomohonloka.belongsTo(Place, {
  foreignKey: "placeId",
});

export default Tomohonloka;
