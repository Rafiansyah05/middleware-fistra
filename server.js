import express from 'express';
import dotenv from 'dotenv';
import scannerRoutes from './routes/scanner.js';

dotenv.config();
const app = express();

// Penting agar bisa baca body JSON
app.use(express.json());

// Route utama
app.use('/api', scannerRoutes);

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`✅ Middleware berjalan di http://localhost:${PORT}`);
});
