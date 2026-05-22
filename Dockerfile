# 1. Ambil base image Node.js versi 20 langsung dari internet
FROM node:20-alpine

# 2. Tentukan folder kerja di dalam kontainer nanti
WORKDIR /app

# 3. Copy file package.json dulu untuk instalasi library
COPY package.json ./

# 4. Jalankan perintah instalasi library secara bersih
RUN npm install

# 5. Copy seluruh sisa kodingan dari laptop/git ke dalam kontainer
COPY . .

# 6. Tentukan port berapa aplikasi ini akan berjalan (misal 3000)
EXPOSE 3000

# 7. Perintah akhir untuk menyalakan aplikasinya
CMD ["npm", "run", "lint"]
