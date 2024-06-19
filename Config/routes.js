import { Router } from "express";

const router=new Router()
//Obtener la informacion
router.get('/info',infoController.index)
//ENVIAR LA INOFORMACION
router.post('/info',infoController.store)
//CONSULTAR INFORMACION DE FORMA ESPECIFICA
router.post('/info:id',infoController.detail)

export default router