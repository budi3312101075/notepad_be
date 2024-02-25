import express from "express";
import {
  addNotes,
  deleteNotes,
  getNotes,
  updateNotes,
} from "../controller/notes.js";

const router = express.Router();

router.post("/notes", addNotes);
router.get("/notes", getNotes);
router.patch("/notes", updateNotes);
router.delete("/notes", deleteNotes);

export default router;
