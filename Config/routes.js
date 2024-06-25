import { Router } from "express";
import infoController from "../controller/infoController.js";

const router=new Router()
//____________________Obtener la informacion_____________________
router.get('/info',infoController.index)
//______________________ENVIAR LA INOFORMACION______________________
router.post('/info',infoController.store)
// _____________CONSULTAR INFORMACION DE FORMA ESPECIFICA___________
router.post('/info:id',infoController.detail)


export default router