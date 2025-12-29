-- soal a

CREATE TABLE customer(
 id SERIAL PRIMARY KEY,
 username VARCHAR(50),
 display_name VARCHAR(50),
 email VARCHAR(50),
 password VARCHAR(25),
 address VARCHAR(100),
 created_at timestamptz DEFAULT NOW()
);

CREATE TABLE product(
 id SERIAL PRIMARY KEY,
 product_name varchar(50),
 product_desc text,
 price int,
 created_at timestamptz DEFAULT NOW()
);

CREATE TABLE orders(
 id SERIAL PRIMARY KEY,
 cust_id INT NOT NULL,
 prod_id INT NOT NULL,
 amount INT,
 created_at timestamptz DEFAULT NOW(),
 FOREIGN KEY (cust_id) REFERENCES customer(id),
 FOREIGN KEY (prod_id) REFERENCES product(id)
);

--DATA DUMMY
INSERT INTO customer (username, display_name, email, password, address, created_at) VALUES
('ahmadp', 'Ahmad Pratama', 'ahmad@gmail.com', 'pass123', 'Jakarta Selatan', NOW() - INTERVAL '11 months'),
('budi_s', 'Budi Santoso', 'budi@gmail.com', 'pass123', 'Bandung', NOW() - INTERVAL '10 months'),
('citraa', 'Citra Anggraini', 'citra@gmail.com', 'pass123', 'Surabaya', NOW() - INTERVAL '9 months'),
('dewii', 'Dewi Lestari', 'dewi@gmail.com', 'pass123', 'Yogyakarta', NOW() - INTERVAL '8 months'),
('eko_p', 'Eko Prasetyo', 'eko@gmail.com', 'pass123', 'Semarang', NOW() - INTERVAL '7 months'),
('farhanr', 'Farhan Ramadhan', 'farhan@gmail.com', 'pass123', 'Depok', NOW() - INTERVAL '6 months'),
('gilangk', 'Gilang Kurniawan', 'gilang@gmail.com', 'pass123', 'Bekasi', NOW() - INTERVAL '5 months'),
('hani_s', 'Hani Salsabila', 'hani@gmail.com', 'pass123', 'Bogor', NOW() - INTERVAL '4 months'),
('irfanm', 'Irfan Maulana', 'irfan@gmail.com', 'pass123', 'Tangerang', NOW() - INTERVAL '3 months'),
('jokow', 'Joko Arduino', 'joko@gmail.com', 'pass123', 'Solo', NOW() - INTERVAL '2 months'),
('kartikap', 'Kartika Putri', 'kartika@gmail.com', 'pass123', 'Malang', NOW() - INTERVAL '1 month'),
('lukmanh', 'Lukman Hakim', 'lukman@gmail.com', 'pass123', 'Padang', NOW()),
('melaniw', 'Melani Wulandari', 'melani@gmail.com', 'pass123', 'Medan', NOW()),
('nurh', 'Nur Hidayat', 'nur@gmail.com', 'pass123', 'Aceh', NOW()),
('oktavian', 'Oktavianus', 'okta@gmail.com', 'pass123', 'Kupang', NOW()),
('putria', 'Putri Aulia', 'putri@gmail.com', 'pass123', 'Banjarmasin', NOW()),
('qori_n', 'Qori Nabila', 'qori@gmail.com', 'pass123', 'Pontianak', NOW()),
('rizkys', 'Rizky Saputra', 'rizky@gmail.com', 'pass123', 'Samarinda', NOW()),
('sarahm', 'Sarah Maheswari', 'sarah@gmail.com', 'pass123', 'Denpasar', NOW()),
('taufik', 'Taufik Hidayat', 'taufik@gmail.com', 'pass123', 'Mataram', NOW()),
('umar_f', 'Umar Fauzan', 'umar@gmail.com', 'pass123', 'Palembang', NOW()),
('vina_r', 'Vina Ramadhani', 'vina@gmail.com', 'pass123', 'Pekanbaru', NOW()),
('wahyus', 'Wahyu Setiawan', 'wahyu@gmail.com', 'pass123', 'Cirebon', NOW()),
('xavierp', 'Xavier Putra', 'xavier@gmail.com', 'pass123', 'Batam', NOW()),
('yudist', 'Yudi Setiawan', 'yudi@gmail.com', 'pass123', 'Tasikmalaya', NOW()),
('zainal', 'Zainal Abidin', 'zainal@gmail.com', 'pass123', 'Garut', NOW()),
('aditp', 'Aditya Pratama', 'adit@gmail.com', 'pass123', 'Cimahi', NOW()),
('bella', 'Bella Safira', 'bella@gmail.com', 'pass123', 'Serang', NOW()),
('cahyo', 'Cahyo Nugroho', 'cahyo@gmail.com', 'pass123', 'Purwokerto', NOW()),
('dianr', 'Dian Rahmawati', 'dian@gmail.com', 'pass123', 'Magelang', NOW()),
('endy', 'Endy Saputra', 'endy@gmail.com', 'pass123', 'Kediri', NOW()),
('fajar', 'Fajar Nugraha', 'fajar@gmail.com', 'pass123', 'Blitar', NOW()),
('galuh', 'Galuh Permata', 'galuh@gmail.com', 'pass123', 'Probolinggo', NOW()),
('helmi', 'Helmi Kurnia', 'helmi@gmail.com', 'pass123', 'Sukabumi', NOW()),
('indra', 'Indra Wijaya', 'indra@gmail.com', 'pass123', 'Karawang', NOW()),
('jihan', 'Jihan Khairunnisa', 'jihan@gmail.com', 'pass123', 'Subang', NOW()),
('kevin', 'Kevin Hartono', 'kevin@gmail.com', 'pass123', 'Pontianak', NOW()),
('lia', 'Lia Amalia', 'lia@gmail.com', 'pass123', 'Banjar', NOW()),
('mario', 'Mario Fernando', 'mario@gmail.com', 'pass123', 'Manado', NOW());

INSERT INTO product (product_name, product_desc, price, created_at) VALUES
('Laptop Asus VivoBook', 'Laptop harian untuk kerja dan kuliah', 8500000, NOW()),
('Laptop Lenovo ThinkPad', 'Laptop bisnis dengan performa stabil', 12000000, NOW()),
('Mouse Logitech M220', 'Mouse wireless silent click', 150000, NOW()),
('Keyboard Mechanical Red Switch', 'Keyboard mekanikal untuk gaming', 450000, NOW()),
('Monitor LG 24 Inch', 'Monitor IPS Full HD', 1800000, NOW()),
('Headset Gaming Rexus', 'Headset gaming surround sound', 350000, NOW()),
('Flashdisk Sandisk 64GB', 'Flashdisk USB 3.0', 120000, NOW()),
('SSD Samsung 1TB', 'SSD NVMe performa tinggi', 1500000, NOW()),
('Harddisk WD 2TB', 'Harddisk eksternal USB', 1100000, NOW()),
('Webcam Logitech C270', 'Webcam HD 720p', 550000, NOW()),
('Printer Epson L3210', 'Printer ink tank', 2400000, NOW()),
('Scanner Canon LiDE', 'Scanner dokumen', 900000, NOW()),
('Router TP-Link AX10', 'Router WiFi 6', 750000, NOW()),
('Power Bank Anker 20k', 'Powerbank fast charging', 650000, NOW()),
('Kabel HDMI 2m', 'Kabel HDMI High Speed', 75000, NOW()),
('Speaker Bluetooth JBL', 'Speaker portable bass kuat', 1200000, NOW()),
('Smartwatch Xiaomi', 'Smartwatch fitness tracker', 950000, NOW()),
('Kamera Canon EOS 200D', 'Kamera DSLR entry level', 7800000, NOW()),
('Tripod Kamera Takara', 'Tripod aluminium ringan', 180000, NOW()),
('Microphone Condenser BM800', 'Mic recording studio', 350000, NOW()),
('Kipas Angin Miyako', 'Kipas angin rumah tangga', 420000, NOW()),
('Rice Cooker Philips', 'Rice cooker digital', 890000, NOW()),
('Setrika Philips', 'Setrika uap hemat listrik', 370000, NOW()),
('Blender Cosmos', 'Blender multifungsi', 550000, NOW()),
('Dispenser Aqua', 'Dispenser galon bawah', 1850000, NOW()),
('AC Sharp 1 PK', 'AC hemat energi', 4300000, NOW()),
('TV Samsung 43 Inch', 'Smart TV UHD', 5200000, NOW()),
('Set Top Box Android', 'TV Box Android', 450000, NOW()),
('Lampu LED Philips', 'Lampu LED 12 Watt', 45000, NOW()),
('Stop Kontak Broco', 'Stop kontak 4 lubang', 85000, NOW()),
('Kursi Kantor', 'Kursi kerja ergonomis', 950000, NOW()),
('Meja Kerja Minimalis', 'Meja kayu minimalis', 1250000, NOW()),
('Rak Buku', 'Rak buku kayu 4 tingkat', 650000, NOW()),
('Tas Laptop Eiger', 'Tas laptop waterproof', 480000, NOW()),
('Mousepad Gaming', 'Mousepad ukuran besar', 90000, NOW()),
('Cooling Pad Laptop', 'Pendingin laptop', 250000, NOW()),
('Charger Laptop Universal', 'Adaptor multi port', 320000, NOW()),
('UPS APC 650VA', 'UPS backup listrik', 1250000, NOW()),
('Kabel LAN Cat6', 'Kabel jaringan 10 meter', 95000, NOW());

INSERT INTO orders (cust_id, prod_id, amount, created_at) VALUES
(1, 5, 1, NOW() - INTERVAL '11 months'),
(2, 10, 15, NOW() - INTERVAL '11 months'),
(3, 20, 3, NOW() - INTERVAL '10 months'),
(4, 8, 25, NOW() - INTERVAL '10 months'),
(5, 1, 2, NOW() - INTERVAL '9 months'),
(6, 30, 40, NOW() - INTERVAL '9 months'),
(7, 12, 5, NOW() - INTERVAL '8 months'),
(8, 18, 60, NOW() - INTERVAL '8 months'),
(9, 7, 8, NOW() - INTERVAL '7 months'),
(10, 25, 100, NOW() - INTERVAL '7 months'),
(11, 3, 4, NOW() - INTERVAL '6 months'),
(12, 14, 30, NOW() - INTERVAL '6 months'),
(13, 22, 12, NOW() - INTERVAL '5 months'),
(14, 6, 75, NOW() - INTERVAL '5 months'),
(15, 9, 6, NOW() - INTERVAL '4 months'),
(16, 35, 150, NOW() - INTERVAL '4 months'),
(17, 16, 10, NOW() - INTERVAL '3 months'),
(18, 2, 55, NOW() - INTERVAL '3 months'),
(19, 28, 7, NOW() - INTERVAL '2 months'),
(20, 33, 200, NOW() - INTERVAL '2 months'),
(21, 11, 9, NOW() - INTERVAL '1 month'),
(22, 19, 90, NOW() - INTERVAL '1 month'),
(23, 24, 14, NOW() - INTERVAL '20 days'),
(24, 4, 300, NOW() - INTERVAL '20 days'),
(25, 27, 11, NOW() - INTERVAL '15 days'),
(26, 31, 500, NOW() - INTERVAL '15 days'),
(27, 13, 18, NOW() - INTERVAL '7 days'),
(28, 21, 1000, NOW() - INTERVAL '7 days'),
(29, 17, 22, NOW() - INTERVAL '2 days'),
(30, 25, 250, NOW());

-- SOAL B
-- Daftar seluruh pembelian/order beserta produk yang dibelinya, customer yang membelinya, nilai total & jumlah product yang dibelinya, waktu pembeliannya
SELECT product_name, display_name, (amount * price) 
AS total, amount, orders.created_at 
FROM orders 
JOIN customer ON customer.id = orders.cust_id 
JOIN product ON product.id = orders.prod_id;

--Total nilai pembelian per customer per bulan

SELECT
    customer.display_name,
    TO_CHAR(orders.created_at, 'Month') AS bulan,
    SUM(product.price * orders.amount) AS total
FROM orders 
JOIN customer ON orders.cust_id = customer.id
JOIN product ON orders.prod_id = product.id
GROUP BY
    customer.id,
    customer.display_name,
    TO_CHAR(orders.created_at, 'Month'),
    DATE_TRUNC('month', orders.created_at)
ORDER BY
    DATE_TRUNC('month', orders.created_at),
    total DESC;

-- Data produk dengan 3 penjualan terbesar per bulan
SELECT
    bulan,
    product_name,
    total_terjual
FROM (
    SELECT
        TO_CHAR(orders.created_at, 'Month YYYY') AS bulan,
        DATE_TRUNC('month', orders.created_at) AS bulan_sort,
        product.id AS product_id,
        product.product_name,
        SUM(o.amount) AS total_terjual,
        RANK() OVER (
            PARTITION BY DATE_TRUNC('month', orders.created_at)
            ORDER BY SUM(orders.amount) DESC
        ) AS ranking
    FROM orders 
    JOIN product  ON orders.prod_id = product.id
    GROUP BY
        TO_CHAR(orders.created_at, 'Month YYYY'),
        DATE_TRUNC('month', orders.created_at),
        product.id,
        product.product_name
) ranked_product
WHERE ranking <= 3
ORDER BY
    bulan_sort,
    ranking;