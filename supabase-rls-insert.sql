-- links 테이블 INSERT 허용 (RLS 에러 해결)
-- Supabase 대시보드 → SQL Editor → 이 파일 내용 붙여넣기 → Run

DROP POLICY IF EXISTS "Allow public insert links" ON public.links;

CREATE POLICY "Allow public insert links"
ON public.links FOR INSERT
WITH CHECK (true);
