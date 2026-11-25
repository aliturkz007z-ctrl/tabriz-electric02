-- Public no-login access for Tabriz Electric app (HIGH RISK: anyone with the site URL can read/write/delete data)
GRANT USAGE ON SCHEMA public TO anon, authenticated;
GRANT SELECT, INSERT, UPDATE, DELETE ON public.products, public.customers, public.invoices, public.checks TO anon, authenticated;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO anon, authenticated;

ALTER TABLE public.products ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.customers ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.invoices ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.checks ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "auth users manage products" ON public.products;
DROP POLICY IF EXISTS "auth users manage customers" ON public.customers;
DROP POLICY IF EXISTS "auth users manage invoices" ON public.invoices;
DROP POLICY IF EXISTS "auth users manage checks" ON public.checks;
DROP POLICY IF EXISTS "public manage products" ON public.products;
DROP POLICY IF EXISTS "public manage customers" ON public.customers;
DROP POLICY IF EXISTS "public manage invoices" ON public.invoices;
DROP POLICY IF EXISTS "public manage checks" ON public.checks;

CREATE POLICY "public manage products" ON public.products FOR ALL TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "public manage customers" ON public.customers FOR ALL TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "public manage invoices" ON public.invoices FOR ALL TO anon, authenticated USING (true) WITH CHECK (true);
CREATE POLICY "public manage checks" ON public.checks FOR ALL TO anon, authenticated USING (true) WITH CHECK (true);
