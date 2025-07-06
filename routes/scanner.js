import express from 'express';
import pool from '../db.js';

const router = express.Router();

router.post('/scan', async (req, res) => {
  const { fingerprint_id, nominal } = req.body;

  if (!fingerprint_id || !nominal) {
    return res.status(400).json({ error: 'Fingerprint dan nominal wajib diisi' });
  }

  try {
    // Cari user berdasarkan fingerprint
    const [userRows] = await pool.query('SELECT user_id, saldo, nama_lengkap FROM users WHERE sidik_jari = ?', [fingerprint_id]);

    if (userRows.length === 0) {
      return res.status(404).json({ error: 'Sidik jari tidak ditemukan' });
    }

    const user = userRows[0];

    // Cek saldo cukup atau tidak
    if (user.saldo < nominal) {
      return res.status(400).json({ error: 'Saldo tidak cukup' });
    }

    const newSaldo = user.saldo - nominal;

    await pool.query('UPDATE users SET saldo = ? WHERE user_id = ?', [newSaldo, user.user_id]);

    // Catat transaksi
    await pool.query('INSERT INTO transaction_history (user_id, tipe_transaksi, jumlah, deskripsi) VALUES (?, ?, ?, ?)', [user.user_id, 'Pembayaran', nominal, 'Transaksi via scanner']);

    res.json({
      status: 'success',
      nama_lengkap: user.nama_lengkap,
      message: 'Transaksi berhasil',
      saldo_sekarang: newSaldo,
    });
  } catch (err) {
    console.error('Terjadi error:', err);
    res.status(500).json({ error: 'Server error' });
  }
});

export default router;
