# menggunaakan nodejs:14-alpine sebagai base image
FROM node:14-alpine

# menetapkan /app sebagai working directory
WORKDIR /app

# meng-copy semua file yang ada di host ke dalam working directory
COPY . .

# membuat environtment variable yaitu NODE_ENV dan DB_HOST 
# agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db
ENV NODE_ENV=production DB_HOST=item-db

# menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# mengekpose aplikasi ke port 8080
EXPOSE 8080

# menjalankan server saat container diluncurkan
CMD [ "npm", "start" ]