CREATE TABLE dim_customer (
  customer_id TEXT PRIMARY KEY,
  full_name TEXT,
  email_hash TEXT,
  phone_norm TEXT,
  country TEXT
);

CREATE TABLE dim_product (
  product_id TEXT PRIMARY KEY,
  product_name TEXT,
  category TEXT,
  category_norm TEXT,
  price_eur NUMERIC,
  price_usd NUMERIC
);

CREATE TABLE fct_order (
  order_id TEXT PRIMARY KEY,
  order_ts TEXT,
  customer_id TEXT,
  product_id TEXT,
  qty INTEGER,
  unit_price_eur NUMERIC,
  unit_price_usd NUMERIC,
  total_eur NUMERIC,
  total_usd NUMERIC,
  src_currency TEXT
);

CREATE TABLE etl_log (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  ts TEXT,
  job TEXT,
  step TEXT,
  level TEXT,
  message TEXT
);
