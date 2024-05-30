INSERT INTO country (country_name)
VALUES
('Indonesia'),
('United States'),
('Canada'),
('United Kingdom'),
('Australia'),
('Germany'),
('France'),
('Japan'),
('China'),
('India'),
('Brazil'),
('Russia'),
('South Africa'),
('Mexico'),
('Italy'),
('Spain'),
('South Korea'),
('Netherlands'),
('Sweden'),
('Switzerland');

INSERT INTO state (state_name, country_id)
VALUES
-- Indonesian states
('DI Yogyakarta', 1),
('DKI Jakarta', 1),
('Jawa Barat', 1),
('Jawa Tengah', 1),
('Jawa Timur', 1),
-- US states
('California', 2),
('New York', 2),
('Texas', 2),
('Florida', 2),
('Illinois', 2),
-- Canadian provinces
('Ontario', 3),
('Quebec', 3),
('British Columbia', 3),
('Alberta', 3),
('Manitoba', 3),
-- UK countries
('England', 4),
('Scotland', 4),
('Wales', 4),
('Northern Ireland', 4),
-- Australian states
('New South Wales', 5),
('Victoria', 5),
('Queensland', 5),
('Western Australia', 5),
('South Australia', 5);

INSERT INTO city (city_name, state_id)
VALUES
-- Cities in DI Yogyakarta
('Yogyakarta', 1),
('Sleman', 1),
('Bantul', 1),
('Gunung Kidul', 1),
('Kulon Progo', 1),
-- Cities in DKI Jakarta
('Central Jakarta', 2),
('West Jakarta', 2),
('South Jakarta', 2),
('East Jakarta', 2),
('North Jakarta', 2),
-- Cities in Jawa Barat
('Bandung', 3),
('Bekasi', 3),
('Bogor', 3),
('Depok', 3),
('Cimahi', 3),
-- Cities in Jawa Tengah
('Semarang', 4),
('Surakarta', 4),
('Magelang', 4),
('Pekalongan', 4),
('Salatiga', 4),
-- Cities in Jawa Timur
('Surabaya', 5),
('Malang', 5),
('Kediri', 5),
('Blitar', 5),
('Madiun', 5),
-- Cities in California, USA
('Los Angeles', 6),
('San Francisco', 6),
('San Diego', 6),
('San Jose', 6),
('Sacramento', 6),
-- Cities in New York, USA
('New York City', 7),
('Buffalo', 7),
('Rochester', 7),
('Yonkers', 7),
('Syracuse', 7);

INSERT INTO address (street, postal_code, phone, city_id)
VALUES
-- Addresses in Yogyakarta
('Jalan Malioboro 123', '55213', '0274-555-1234', 1),
('Jalan Solo 45', '55214', '0274-555-2345', 1),
('Jalan Parangtritis 67', '55143', '0274-555-3456', 1),
('Jalan Magelang 89', '55231', '0274-555-4567', 1),
('Jalan Kaliurang KM 10', '55582', '0274-555-5678', 1),
-- Addresses in Sleman
('Jalan Monjali 23', '55284', '0274-555-6789', 2),
('Jalan Seturan 56', '55283', '0274-555-7890', 2),
('Jalan Palagan Tentara Pelajar 78', '55281', '0274-555-8901', 2),
('Jalan Maguwo 101', '55285', '0274-555-9012', 2),
('Jalan Godean 90', '55282', '0274-555-1122', 2);