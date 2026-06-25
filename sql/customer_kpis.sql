-- Customer Retention & Growth: Core KPI Query

WITH revenue AS (
    SELECT
        customer_id,
        SUM(monthly_revenue) AS lifetime_revenue,
        AVG(monthly_revenue) AS avg_monthly_revenue,
        COUNT(*) AS months_billed
    FROM subscriptions
    GROUP BY customer_id
),

usage AS (
    SELECT
        customer_id,
        AVG(logins) AS avg_monthly_logins,
        AVG(active_days) AS avg_active_days,
        AVG(features_used) AS avg_features_used
    FROM usage_metrics
    GROUP BY customer_id
)

SELECT
    c.customer_id,
    c.plan_type,
    c.company_size,
    c.acquisition_channel,
    r.lifetime_revenue,
    r.avg_monthly_revenue,
    r.months_billed,
    u.avg_monthly_logins,
    u.avg_active_days,
    u.avg_features_used,
    ch.active
FROM customers c
LEFT JOIN revenue r ON c.customer_id = r.customer_id
LEFT JOIN usage u ON c.customer_id = u.customer_id
LEFT JOIN churn ch ON c.customer_id = ch.customer_id;