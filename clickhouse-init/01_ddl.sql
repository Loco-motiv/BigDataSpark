CREATE TABLE
    IF NOT EXISTS top_10_products_report (
        product_name String,
        product_category String,
        total_revenue Float64,
        total_sales_quantity UInt64,
    ) ENGINE = MergeTree ()
ORDER BY total_revenue;

CREATE TABLE
    IF NOT EXISTS revenue_by_category_report (
        product_category String,
        category_total_revenue Float64
    ) ENGINE = MergeTree ()
ORDER BY product_category;

CREATE TABLE
    IF NOT EXISTS product_reviews_ratings_report (
        product_name String,
        product_category String,
        avg_product_rating Float32,
        total_product_reviews UInt64
    ) ENGINE = MergeTree ()
ORDER BY product_name;

CREATE TABLE
    IF NOT EXISTS top_10_customers_report (
        customer_first_name String,
        customer_last_name String,
        customer_email String,
        total_spent Float64
    ) ENGINE = MergeTree ()
ORDER BY total_spent;

CREATE TABLE
    IF NOT EXISTS customers_by_country_report (
        customer_country String,
        customer_count UInt64
    ) ENGINE = MergeTree ()
ORDER BY customer_country;

CREATE TABLE
    IF NOT EXISTS average_check_by_customer_report (
        customer_first_name String,
        customer_last_name String,
        customer_email String,
        average_order_value Float64
    ) ENGINE = MergeTree ()
ORDER BY customer_email;

CREATE TABLE
    IF NOT EXISTS monthly_yearly_sales_trends_report (
        sale_year UInt16,
        sale_month UInt8,
        total_revenue Float64,
        total_orders UInt64
    ) ENGINE = MergeTree ()
ORDER BY (sale_year, sale_month);

CREATE TABLE
    IF NOT EXISTS yearly_sales_summary_report (
        sale_year UInt16,
        yearly_total_revenue Float64,
        yearly_total_orders UInt64
    ) ENGINE = MergeTree ()
ORDER BY sale_year;

CREATE TABLE
    IF NOT EXISTS average_order_value_by_month_report (
        sale_year UInt16,
        sale_month UInt8,
        average_order_value Float64
    ) ENGINE = MergeTree ()
ORDER BY (sale_year, sale_month);

CREATE TABLE
    IF NOT EXISTS top_5_stores_report (
        store_name String,
        total_store_revenue Float64
    ) ENGINE = MergeTree ()
ORDER BY total_store_revenue;

CREATE TABLE
    IF NOT EXISTS sales_by_location_report (
        location_type String,
        location_name String,
        total_sales_revenue Float64,
        total_sales_count UInt64
    ) ENGINE = MergeTree ()
ORDER BY (location_type, location_name);

CREATE TABLE
    IF NOT EXISTS average_check_by_store_report (
        store_name String,
        average_store_order_value Float64
    ) ENGINE = MergeTree ()
ORDER BY store_name;

CREATE TABLE
    IF NOT EXISTS top_5_suppliers_report (
        supplier_name String,
        supplier_country String,
        total_revenue_from_supplier Float64
    ) ENGINE = MergeTree ()
ORDER BY total_revenue_from_supplier;

CREATE TABLE
    IF NOT EXISTS avg_product_price_by_supplier_report (
        supplier_name String,
        supplier_country String,
        average_product_price_from_supplier Float64
    ) ENGINE = MergeTree ()
ORDER BY supplier_name;

CREATE TABLE
    IF NOT EXISTS sales_distribution_by_supplier_country_report (
        supplier_country String,
        total_revenue_from_country Float64
    ) ENGINE = MergeTree ()
ORDER BY supplier_country;

CREATE TABLE
    IF NOT EXISTS product_rating_extremes_report (
        product_name String,
        product_category String,
        avg_product_rating Float32,
        total_reviews_count UInt64
    ) ENGINE = MergeTree ()
ORDER BY avg_product_rating;

CREATE TABLE
    IF NOT EXISTS product_sales_rating_correlation_report (
        product_name String,
        product_category String,
        avg_product_rating Float32,
        total_quantity_sold UInt64,
        total_revenue_from_product Float64
    ) ENGINE = MergeTree ()
ORDER BY product_name;

CREATE TABLE
    IF NOT EXISTS product_most_reviewed_report (
        product_name String,
        product_category String,
        total_reviews_count UInt64,
        avg_product_rating Float32
    ) ENGINE = MergeTree ()
ORDER BY total_reviews_count;