CREATE TABLE
    IF NOT EXISTS sales_by_product_mart (
        product_name String,
        product_category String,
        total_revenue Float64,
        total_sales_quantity UInt64,
        avg_product_rating Float32,
        total_product_reviews UInt64
    ) ENGINE = MergeTree ()
ORDER BY (product_name, product_category);

CREATE TABLE
    IF NOT EXISTS sales_by_customer_mart (
        customer_first_name String,
        customer_last_name String,
        customer_email String,
        customer_country String,
        total_spent Float64,
        total_orders UInt64,
        average_order_value Float64
    ) ENGINE = MergeTree ()
ORDER BY customer_email;

CREATE TABLE
    IF NOT EXISTS sales_by_time_mart (
        sale_year UInt16,
        sale_month UInt8,
        monthly_total_revenue Float64,
        monthly_total_orders UInt64,
        monthly_average_order_value Float64
    ) ENGINE = MergeTree ()
ORDER BY (sale_year, sale_month);

CREATE TABLE
    IF NOT EXISTS sales_by_store_mart (
        store_name String,
        store_city String,
        store_country String,
        total_store_revenue Float64,
        total_store_orders UInt64,
        average_store_order_value Float64
    ) ENGINE = MergeTree ()
ORDER BY (store_name, store_country, store_city);

CREATE TABLE
    IF NOT EXISTS sales_by_supplier_mart (
        supplier_name String,
        supplier_country String,
        total_revenue_from_supplier Float64,
        average_product_price_from_supplier Float64,
        total_sales_count UInt64
    ) ENGINE = MergeTree ()
ORDER BY (supplier_name, supplier_country);

CREATE TABLE
    IF NOT EXISTS product_quality_mart (
        product_name String,
        product_rating Float32,
        total_reviews_count UInt64,
        total_quantity_sold UInt64,
        total_revenue_from_product Float64
    ) ENGINE = MergeTree ()
ORDER BY product_name;