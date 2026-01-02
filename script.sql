create table public.tdidivtemp (
  fy text,
  remarks text default '',
  sno integer default 0,
  mno text,
  edpno text default '',
  name text default '',
  ob double precision default 0,
  cb double precision default 0,
  coll double precision default 0,
  tdi double precision default 0,
  issuedate timestamp,
  depot text default '',
  a_cno text default '',
  mobileno text default '',
  od integer default 0,
  odadj integer default 0,
  rtgsamt integer default 0,
  paydetails text default '',
  transid text default ''
);

create table public.tdidivtablec (
  fy1 text,
  sno1 text default '0',
  mno1 text,
  edpno1 text,
  name1 text,
  fdate1 timestamp,
  tdate1 timestamp,
  scr1 integer default 0,
  cb1 integer,
  days1 integer,
  roi1 double precision,
  ic1 double precision,
  tdi1 integer default 0,
  ins1 integer default 0,
  neft1 integer default 0,
  acno1 text default ''
);

alter table public.tdidivtablec
add column if not exists issue_date timestamp,
add column if not exists token_issuer text,
add column if not exists scan_date timestamp,
add column if not exists sweet_issuer_mobile text;
