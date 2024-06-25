import mysql from "mysql2/promise";
import db from "../Config/database.js";

export default class infoController {
  // ___________________________Llamado del Index________________________
  static async index(req, res) {
    let conexion;
    try {
      conexion = await mysql.createConnection(db);
      const [result] = await conexion.execute("SELECT * FROM formu");
      console.log(result);
      res.json(result);
    } catch (error) {
      res.status(500).json({ error: error.message });
    } finally {
      if (conexion) {
        await conexion.end();
      }
    }
  }
  //___________________________Llamado del Store________________________
  static async store(req, res) {
    let conexion;
    try {
      const { nombre, descripcion, img, color } = req.body;
      conexion = await mysql.createConnection(db);
      const [enviar] = await conexion.execute(
        "SELECT * FROM formu (nombre,descripcion,img,color) VALUES (?,?,?,?)",
        [nombre, descripcion, img, color]
      );
      console.log(enviar);
    } catch (error) {
      res.status(500).json({ error: error.message });
    } finally {
      if (conexion) {
        await conexion.end();
      }
    }
  }
  //___________________________Llamado del Detail________________________
  static async detail(req, res) {
    let conexion;
    try {
      const idB = req.params.id;
      conexion = await mysql.createConnection(db);
      const [consulta] = await conexion.execute(
        "SELECT * FROM formu  WHERE id=?",
        [idB]
      );
      console.log(consulta);
      res.status(200).json(consulta);
    } catch (error) {
      res.status(500).json({ error: error.message });
    } finally {
      if (conexion) {
        await conexion.end();
      }
    }
  }
}
