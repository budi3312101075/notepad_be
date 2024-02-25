import db from "../database/db.js";

export const addNotes = async (req, res) => {
  const { judul, deskripsi } = req.body;
  try {
    const tanggal = new Date();

    if (!judul || !deskripsi) {
      return res
        .status(400)
        .json({ success: false, msg: "Judul dan deskripsi harus diisi" });
    }

    await db.execute(
      `INSERT INTO notepad (judul, deskripsi, tanggal, is_Deleted) VALUES (?, ?, ?, 0);`,
      [judul, deskripsi, tanggal]
    );

    return res
      .status(200)
      .json({ success: true, msg: "Notes berhasil ditambahkan" });
  } catch (error) {
    return res.status(500).json({ success: false, msg: error.message });
  }
};

export const getNotes = async (req, res) => {
  try {
    const [data] = await db.execute(
      `SELECT * FROM notepad WHERE is_Deleted = 0;`
    );
    return res.status(200).json({ success: true, data: data });
  } catch (error) {
    return res.status(500).json({ success: false, msg: error.message });
  }
};

export const deleteNotes = async (req, res) => {
  const { id } = req.query;
  try {
    await db.execute(`UPDATE notepad SET is_Deleted = 1 WHERE id = ?;`, [id]);
    return res
      .status(200)
      .json({ success: true, msg: "Notes berhasil di hapus" });
  } catch (error) {
    return res.status(500).json({ success: false, msg: error.message });
  }
};

export const updateNotes = async (req, res) => {
  const { id } = req.query;
  const { judul, deskripsi } = req.body;
  try {
    await db.execute(
      `UPDATE notepad SET judul = ?, deskripsi = ? WHERE id = ?;`,
      [judul, deskripsi, id]
    );
    return res
      .status(200)
      .json({ success: true, msg: "Notes berhasil di update" });
  } catch (error) {
    return res.status(500).json({ success: false, msg: error.message });
  }
};
