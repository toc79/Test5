--DROP TABLE dbo._tmp_p_bilanc
CREATE TABLE [dbo].[_tmp_P_BILANC](
	[naz_kr_kup] [varchar](500) NULL,
	[ID_KUPCA] [char](6) NULL,
	[emso] [char](13) NULL,
	[dav_stev] [char](17) NULL,
	[DATUM_BIL] [datetime] NULL,
	[KONSOLID] [bit] NULL,
	[PRIH_PROD] [decimal](18, 2) NULL,
	[SREDSTVA] [decimal](18, 2) NULL,
	[PRIHODKI] [decimal](18, 2) NULL,
	[KAPITAL] [decimal](18, 2) NULL,
	[ZAPOSLENO] [int] NULL,
	[VNESEL] [char](10) NULL,
	[ID] [char](10) NULL,
	[fprihodki] [decimal](18, 2) NULL,
	[op_prih_prod] [varchar](1000) NULL,
	[odhodki] [decimal](18, 2) NULL,
	[fin_odhod] [decimal](18, 2) NULL,
	[izr_odhod] [decimal](18, 2) NULL,
	[izr_odhod1] [decimal](18, 2) NULL,
	[izr_odhod2] [decimal](18, 2) NULL,
	[ap_max] [decimal](18, 2) NULL,
	[ap_ze] [decimal](18, 2) NULL,
	[opis_kapital] [varchar](1000) NULL,
	[id_tec_bil] [char](3) NULL,
	[ssredstva] [decimal](18, 2) NULL,
	[osredstva] [decimal](18, 2) NULL,
	[gsredstva] [decimal](18, 2) NULL,
	[okapital] [decimal](18, 2) NULL,
	[dolg_obv] [decimal](18, 2) NULL,
	[krat_obv] [decimal](18, 2) NULL,
	[k_obv_pos] [decimal](18, 2) NULL, -- Kratkoročne obav. prema dobav.
	[k_obv_fin] [decimal](18, 2) NULL, -- Kratkoročne obv. prema fin. instit.
	[iprihodki] [decimal](18, 2) NULL,
	[iprihodki1] [decimal](18, 2) NULL,
	[iprihodki2] [decimal](18, 2) NULL,
	[posl_odhod] [decimal](18, 2) NULL,
	[stros_mater] [decimal](18, 2) NULL,
	[stros_mater1] [decimal](18, 2) NULL,
	[stros_mater2] [decimal](18, 2) NULL,
	[stros_dela] [decimal](18, 2) NULL,
	[stros_amort] [decimal](18, 2) NULL,
	[ost_podhod] [decimal](18, 2) NULL,
	[dobic_pos] [decimal](18, 2) NULL,
	[dobic_cis] [decimal](18, 2) NULL,
	[ex_bil_obv] [decimal](18, 2) NULL,
	[Fakt_znes] [tinyint] NULL,
	[max_debt] [decimal](18, 2) NULL,
	[terjatev_do_podjetnika] [decimal](18, 2) NULL,
	[EBIT] [decimal](18, 2) NULL,
	[nac_davc_osn] [int] NULL,
	[k_obv_ost] [decimal](18, 2) NULL, -- Ostale kratkoročne obaveze 
	[k_obv_ost1] [decimal](18, 2) NULL,
	[k_obv_ost2] [decimal](18, 2) NULL,
	-- [k_obv_ost3] [decimal](18, 2) NULL,
	-- [k_obv_ost4] [decimal](18, 2) NULL,
	-- [k_obv_ost5] [decimal](18, 2) NULL,
	-- [k_obv_ost6] [decimal](18, 2) NULL,
	-- [k_obv_ost7] [decimal](18, 2) NULL,
	-- [k_obv_ost8] [decimal](18, 2) NULL,
	-- [k_obv_ost9] [decimal](18, 2) NULL,
	-- [k_obv_ost10] [decimal](18, 2) NULL,
	-- [k_obv_ost11] [decimal](18, 2) NULL,
	--[ssredstva1] [decimal](18, 2) NULL,
	--[ssredstva2] [decimal](18, 2) NULL,
	[gsredstva1] [decimal](18, 2) NULL,
	[gsredstva2] [decimal](18, 2) NULL,
	[ost_podhod1] [decimal](18, 2) NULL,
	[ost_podhod2] [decimal](18, 2) NULL,
	[ost_podhod3] [decimal](18, 2) NULL,
	[ost_podhod4] [decimal](18, 2) NULL,
	-- [ost_podhod5] [decimal](18, 2) NULL
	[KONT_Sredstva] [decimal](18, 2) NULL,
	[KONT_txtVsredstva] [decimal](18, 2) NULL,
	[kont_POSL_ODH] [decimal](18, 2) NULL,
	[KONT_prihodki] [decimal](18, 2) NULL,
	[KONT_odhodki] [decimal](18, 2) NULL,
	[KONT_dobic_pos] [decimal](18, 2) NULL,
	[KONT_ebit] [decimal](18, 2) NULL -- u glavnoj skripti ga nema pa je maknut u INSERTu
	)
/*2016
INSERT INTO dbo._tmp_p_bilanc (naz_kr_kup, emso, dav_stev, ssredstva, osredstva, gsredstva1, gsredstva2, KONT_Sredstva, kapital, okapital, dolg_obv, k_obv_ost1, k_obv_fin, k_obv_pos, k_obv_ost2, KONT_txtVsredstva, ex_bil_obv, prih_prod, kont_POSL_ODH, stros_mater1, stros_mater2, stros_dela, stros_amort, ost_podhod1, ost_podhod2, ost_podhod3, ost_podhod4, fprihodki, fin_odhod, iprihodki1, iprihodki2, izr_odhod1, izr_odhod2, KONT_prihodki, KONT_odhodki, KONT_dobic_pos, dobic_cis, KONT_ebit, zaposleno) VALUES (
=CONCATENATE("'";A7;"', '";B7;"', '";C7;"', ";D7;", ";E7;", ";F7;", ";G7;", ";H7;", ";I7;", ";J7;", ";K7;", ";L7;", ";M7;", ";N7;", ";O7;", ";P7;", ";Q7;", ";R7;", ";S7;", ";T7;", ";U7;", ";V7;", ";W7;", ";X7;", ";Y7;", ";Z7;", ";AA7;", ";AB7;", ";AC7;", ";AD7;", ";AE7;", ";AF7;", ";AG7;", ";AH7;", ";AI7;", ";AJ7;", ";AK7;", ";AL7;", ";AM7;")")

gfi za 2017
=CONCATENATE("'";A2;"', '";B2;"', '";C2;"', ";D2;", ";E2;", ";F2;", ";G2;", ";H2;", ";I2;", ";J2;", ";K2;", ";L2;", ";M2;", ";N2;", ";O2;", ";P2;", ";Q2;", ";R2;", ";S2;", ";T2;", ";U2;", ";V2;", ";W2;", ";X2;", ";Y2;", ";Z2;", ";AA2;", ";AB2;", ";AC2;", ";AD2;", ";AE2;", ";AF2;", ";AG2;", ";AH2;", ";AI2;", ";AJ2;", ";AK2;", ";AL2;")")
TEST

INSERT INTO dbo._tmp_p_bilanc (dav_stev, emso, naz_kr_kup, zaposleno, ssredstva, osredstva, gsredstva1, gsredstva2, KONT_Sredstva, kapital, okapital, dolg_obv, k_obv_ost1, k_obv_fin, k_obv_pos, k_obv_ost2, KONT_txtVsredstva, ex_bil_obv, prih_prod, kont_POSL_ODH, stros_mater1, stros_mater2, stros_dela, stros_amort, ost_podhod1, ost_podhod2, ost_podhod3, ost_podhod4, fprihodki, fin_odhod, iprihodki1, iprihodki2, izr_odhod1, izr_odhod2, KONT_prihodki, KONT_odhodki, KONT_dobic_pos, dobic_cis) VALUES (	'50770112205', '02912139', 'SPORTVIZIJA društvo s ograničenom odgovornošću za usluge i trgovinu', 1, 17807, 17807, 675, 0, 18482, -126212, 0, 65500, 79194, 19026, 603, 0, 18482, 0, 282651, 267149, 0, 153524, 103855, 3238, 6512, 0, 0, 20, 32, 1010, 0, 0, 0, 0, 282683, 268159, 14524, 14524)
INSERT INTO dbo._tmp_p_bilanc (dav_stev, emso, naz_kr_kup, zaposleno, ssredstva, osredstva, gsredstva1, gsredstva2, KONT_Sredstva, kapital, okapital, dolg_obv, k_obv_ost1, k_obv_fin, k_obv_pos, k_obv_ost2, KONT_txtVsredstva, ex_bil_obv, prih_prod, kont_POSL_ODH, stros_mater1, stros_mater2, stros_dela, stros_amort, ost_podhod1, ost_podhod2, ost_podhod3, ost_podhod4, fprihodki, fin_odhod, iprihodki1, iprihodki2, izr_odhod1, izr_odhod2, KONT_prihodki, KONT_odhodki, KONT_dobic_pos, dobic_cis) VALUES (	'77537954115', '02430118', 'Hotelijer d.o.o. za usluge', 0, 0, 0, 4015, 0, 4015, -15360, 0, 0, 19375, 0, 795, 0, 4015, 0, 1613, 3729, 0, 2588, 0, 0, 1141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1613, 3729, -2116, -2116)
INSERT INTO dbo._tmp_p_bilanc (dav_stev, emso, naz_kr_kup, zaposleno, ssredstva, osredstva, gsredstva1, gsredstva2, KONT_Sredstva, kapital, okapital, dolg_obv, k_obv_ost1, k_obv_fin, k_obv_pos, k_obv_ost2, KONT_txtVsredstva, ex_bil_obv, prih_prod, kont_POSL_ODH, stros_mater1, stros_mater2, stros_dela, stros_amort, ost_podhod1, ost_podhod2, ost_podhod3, ost_podhod4, fprihodki, fin_odhod, iprihodki1, iprihodki2, izr_odhod1, izr_odhod2, KONT_prihodki, KONT_odhodki, KONT_dobic_pos, dobic_cis) VALUES (	'40909240283', '02556448', 'HVAR IZMJERA za geodetske djelatnosti i katastarsku izmjeru, društvo s ograničenom odgovornošću', 1, 0, 0, 73884, 0, 73884, -9665, 0, 0, 83549, 0, 3394, 0, 73884, 0, 167750, 142037, 0, 24857, 99401, 0, 17779, 0, 0, 0, 0, 92, 0, 0, 0, 0, 167750, 142129, 25621, 25621)


PREBACIVANJE NA PROD
INSERT INTO nova_prod.dbo._tmp_P_BILANC (dav_stev, emso, naz_kr_kup, zaposleno, ssredstva, osredstva, gsredstva1, gsredstva2, KONT_Sredstva, kapital, okapital, dolg_obv, k_obv_ost1, k_obv_fin, k_obv_pos, k_obv_ost2, KONT_txtVsredstva, ex_bil_obv, prih_prod, kont_POSL_ODH, stros_mater1, stros_mater2, stros_dela, stros_amort, ost_podhod1, ost_podhod2, ost_podhod3, ost_podhod4, fprihodki, fin_odhod, iprihodki1, iprihodki2, izr_odhod1, izr_odhod2, KONT_prihodki, KONT_odhodki, KONT_dobic_pos, dobic_cis)
SELECT dav_stev, emso, naz_kr_kup, zaposleno, ssredstva, osredstva, gsredstva1, gsredstva2, KONT_Sredstva, kapital, okapital, dolg_obv, k_obv_ost1, k_obv_fin, k_obv_pos, k_obv_ost2, KONT_txtVsredstva, ex_bil_obv, prih_prod, kont_POSL_ODH, stros_mater1, stros_mater2, stros_dela, stros_amort, ost_podhod1, ost_podhod2, ost_podhod3, ost_podhod4, fprihodki, fin_odhod, iprihodki1, iprihodki2, izr_odhod1, izr_odhod2, KONT_prihodki, KONT_odhodki, KONT_dobic_pos, dobic_cis from dbo._tmp_P_BILANC

*/

Update dbo._tmp_P_BILANC SET id_kupca = b.id_kupca
FROM dbo._tmp_P_BILANC a
JOIN dbo.partner b ON a.dav_stev = b.dav_stev
WHERE (ltrim(rtrim(b.dav_stev)) != '' OR ltrim(rtrim(a.dav_stev)) != '')
AND b.vr_osebe != 'FO' -- dodatak select * from VRST_OSE -+-12735

Update dbo._tmp_P_BILANC SET id_kupca = b.id_kupca
FROM dbo._tmp_P_BILANC a
JOIN dbo.partner b ON a.emso = b.emso
WHERE a.id_kupca IS NULL
AND ltrim(rtrim(b.emso)) != ''
AND b.vr_osebe != 'FO' -- dodatak select * from VRST_OSE --0
AND a.emso != '00000000' --2018 dodano isključivanje

Update dbo._tmp_P_BILANC SET
	gsredstva = gsredstva1 + gsredstva2
	--došlo je do promjene k_obv_ost Ostale kratkoročne obveze AOP122	treba izračunati (AOP 107 + AOP 122 - AOP 113 - AOP 115 )
	--, k_obv_ost = k_obv_ost1 + k_obv_ost2 -- + k_obv_ost3 + k_obv_ost4 + k_obv_ost5 + k_obv_ost6 + k_obv_ost7 + k_obv_ost8 + k_obv_ost9 + k_obv_ost10 + k_obv_ost11
	, k_obv_ost = k_obv_ost1 + k_obv_ost2 - k_obv_fin - k_obv_pos 
	, ost_podhod = ost_podhod1 + ost_podhod2 + ost_podhod3 + ost_podhod4 -- + ost_podhod5
	, stros_mater = stros_mater1 + stros_mater2
	, iprihodki = iprihodki1 + iprihodki2
	, izr_odhod = izr_odhod1 + izr_odhod2

Update dbo._tmp_P_BILANC SET
	sredstva = ssredstva + gsredstva -- nejde osredstva. U 2016 su dodali taj podatak AOP065. Ukupno aktiva = Dugotrajna imovna + 'Kratkotrajna imovina +AVR' 
	, krat_obv = k_obv_fin + k_obv_pos + k_obv_ost --Kratkoročne obaveze i PVR (formula se nije mijenjala s obzirom na promjenu k_obv_ost)
	, PRIHODKI = prih_prod + fprihodki + iprihodki -- Ukupni prihodi = Poslovni prihodi + Financijski prihodi + Udio u dobiti
	, posl_odhod = stros_mater + stros_dela + stros_amort + ost_podhod -- U 2016 su dodali taj podatak AOP131. Poslovni rashodi = Materijalni troškovi + Troškovi osoblja + Amortizacija + Ostali poslovni rashodi 
	, odhodki = fin_odhod + izr_odhod + stros_mater + stros_dela + stros_amort + ost_podhod -- fin_odhod + izr_odhod + posl_odhod 	-- Ukupni rashodi = Financijski rashodi + Udio u gubitku + Materijalni troškovi + Troškovi osoblja + Amortizacija + Ostali poslovni rashodi
	, KONSOLID = 0
	, vnesel = 'g_system'
	, id = '' -- popravil
	, op_prih_prod = ''
	, ap_max = 0
	, ap_ze = 0
	, opis_kapital = ''
	, id_tec_bil = '000'
	, Fakt_znes = 0
	, max_debt = 0
	, terjatev_do_podjetnika = 0
	, DATUM_BIL = '20181231'
	, nac_davc_osn = 1 --SP sa maskom FO je 2 -- SP sa maskom PO je 1, kao i sami PO,  dakle  treba za sve podesiti 1

Update dbo._tmp_P_BILANC SET
	 dobic_pos =  prihodki - odhodki --FORMULA NA MASCI  Dobit ili gubitak prije oporezivanja = Ukupni prihodi - Ukupni rashodi
	, ebit	= prih_prod - posl_odhod -- EBIT = Poslovni prihodi - Poslovni rashodi

-- PROVJERE da li ima id_kupca = NULL
SELECT * from dbo._tmp_P_BILANC
SELECT * from dbo._tmp_P_BILANC where id_kupca is not null --14995

SELECT REPLACE(a.naz_kr_kup,'"','') Naziv_iz_bilance, a.emso MB_bilance, a.dav_stev OIB_bilance, a.id_kupca Prepoznata_šif_kupca
	, b.naz_kr_kup Naziv_šif_partnera, b.emso MB_partner, b.dav_stev OIB_partner
FROM dbo._tmp_P_BILANC a
JOIN dbo.partner b ON a.id_kupca = b.id_kupca
where
a.id_kupca not in  ( --NEMAJU postojeću bilancu na 
	SELECT id_kupca from dbo.p_bilanc WHERE DATUM_BIL = '20181231'
	)
AND
a.id_kupca is not NULL
ORDER BY a.id_kupca --12697


SELECT REPLACE(a.naz_kr_kup,'"','') Naziv_iz_bilance, a.emso MB_bilance, a.dav_stev OIB_bilance, a.id_kupca Prepoznata_šif_kupca
	, b.naz_kr_kup Naziv_šif_partnera, b.emso MB_partner, b.dav_stev OIB_partner
--	,* 
FROM dbo._tmp_P_BILANC a
JOIN dbo.partner b ON a.id_kupca = b.id_kupca
where a.id_kupca in  ( --već IMAJU postojeću bilancu na 
	SELECT id_kupca from dbo.p_bilanc WHERE DATUM_BIL = '20181231'
	)
AND a.id_kupca is not NULL
order by a.id_kupca

--DUPLI ZAPISI koje onda isključiti u INSERTU
SELECT REPLACE(a.naz_kr_kup,'"','') Naziv_iz_bilance, a.emso MB_bilance, a.dav_stev OIB_bilance, a.id_kupca Prepoznata_šif_kupca
	, b.naz_kr_kup Naziv_šif_partnera, b.emso MB_partner, b.dav_stev OIB_partner
--	,* 
FROM dbo._tmp_P_BILANC a
JOIN dbo.partner b ON a.id_kupca = b.id_kupca
where EXISTS (
	SELECT ad.id_kupca , count(*)
	FROM dbo._tmp_P_BILANC ad
	JOIN dbo.partner bd ON ad.id_kupca = bd.id_kupca
	Where ad.id_kupca is not NULL
	AND ad.id_kupca = a.id_kupca
	group by ad.id_kupca having count(*) >1
	)
order by a.id_kupca
-- Popravak duplih bilanci na prod
UPDATE dbo._tmp_p_bilanc SET id_kupca = NULL WHERE emso = '02008629' AND dav_stev = '04884699310'
UPDATE dbo._tmp_p_bilanc SET id_kupca = NULL WHERE emso = '01052594' AND dav_stev = '03706535368'
UPDATE dbo._tmp_p_bilanc SET id_kupca = NULL WHERE emso = '02022117' AND dav_stev = '82389877756'
UPDATE dbo._tmp_p_bilanc SET id_kupca = NULL WHERE emso = '02725754' AND dav_stev = '05915994915'
UPDATE dbo._tmp_p_bilanc SET id_kupca = NULL WHERE emso = '04862155' AND dav_stev = '84174782283'
UPDATE dbo._tmp_p_bilanc SET id_kupca = NULL WHERE emso = '00488127' AND dav_stev = '60202144596'


begin tran
INSERT INTO dbo.p_bilanc (ID_KUPCA,DATUM_BIL,KONSOLID,PRIH_PROD,SREDSTVA,PRIHODKI,KAPITAL,ZAPOSLENO,VNESEL,ID,fprihodki,op_prih_prod,odhodki,fin_odhod,izr_odhod,ap_max,ap_ze,opis_kapital,id_tec_bil,ssredstva,osredstva,gsredstva,okapital,dolg_obv,krat_obv,k_obv_pos,k_obv_fin,iprihodki,posl_odhod,stros_mater,stros_dela,stros_amort,ost_podhod,dobic_pos,dobic_cis,ex_bil_obv,Fakt_znes,max_debt,terjatev_do_podjetnika,EBIT,nac_davc_osn,k_obv_ost) 
SELECT ID_KUPCA,DATUM_BIL,KONSOLID,PRIH_PROD,SREDSTVA,PRIHODKI,KAPITAL,ZAPOSLENO,VNESEL,ID,fprihodki,op_prih_prod,odhodki,fin_odhod,izr_odhod,ap_max,ap_ze,opis_kapital,id_tec_bil,ssredstva,osredstva,gsredstva,okapital,dolg_obv,krat_obv,k_obv_pos,k_obv_fin,iprihodki,posl_odhod,stros_mater,stros_dela,stros_amort,ost_podhod,dobic_pos,dobic_cis,ex_bil_obv,Fakt_znes,max_debt,terjatev_do_podjetnika,EBIT,nac_davc_osn,k_obv_ost
FROM dbo._tmp_P_BILANC a
where a.id_kupca is not NULL
AND a.id_kupca not in  ( --već imaju postojeću bilancu na 
	SELECT id_kupca from dbo.p_bilanc WHERE DATUM_BIL = '20181231'
	)
--commit
--rollback
--NA testu 14053 

--DOdatno iz zahjteva MR 43236
--Provjera na partnere koji imaju isti OIB (za njih je prepoznata i dodijeljena samo jedna šifra kupca te za istu bilanca)
na duple OIBove
select REPLACE(b.naz_kr_kup,'"','') Naziv_iz_bilance, b.emso MB_bilance, b.dav_stev OIB_bilance, b.id_kupca Prepoznata_šif_kupca
	, a.naz_kr_kup Naziv_šif_partnera, a.emso MB_partner, a.dav_stev OIB_partner, a.id_kupca AS Šif_kupca_partner 
from dbo.partner a
join dbo._tmp_P_BILANC b on a.dav_stev = b.dav_stev
WHERE not EXISTS (select * from dbo._tmp_P_BILANC WHERE id_kupca = a.id_kupca)
AND a.id_kupca not in  ( --već imaju postojeću bilancu na 
	SELECT id_kupca from dbo.p_bilanc WHERE DATUM_BIL = '20181231'
	)
--AND (ltrim(rtrim(a.dav_stev)) != '' OR ltrim(rtrim(a.dav_stev)) != '')
AND a.vr_osebe != 'FO'

order by  a.id_kupca 











Uvoz GFI_POD 2018 na TEST.xlsx


Na produkciji su pušteni svi update-ti za _tmp_P_BILANC.

Poštovani, 
na testu smo napravili uvoz bilanci.
a) U excelu 'Uvoz GFI_POD 2018 na TEST.xlsx', koju smo podesili na lokaciju \\TSTSWA01\Nova_test_IO, u 
- prvom listu se nalazi rezultat mapiranja prema OIBu i MB preko kojih je dobivena prepoznata šifra kupca. U skripti je prepoznavanje napravljeno na način da prvo radi prepoznavanje po OIBu, i ako nema OIBa ili nije prepoznao, onda nadalje radi prepoznavanje prema JMBGu. I to samo za osobe koje nisu fizičke osobe (FO). U vašem excelu postoje zapisi čiji je MB 00000000 tako da smo te zapise isključili iz prepoznavanja.
- drugom listu je navedena lista bilanci partnera kojima su prepoznate iste šifre partnera, a imaju različite zapise bilanca. Za partnere označene crvenom pozadinom bilanca nije napravljen uvoz.
- u trećem listu "Duple bilance" se nalaze bilance prepoznatih partnera koje su dobile istiu šifru, z akoje sam napravio provjeru i po nemi se radi o prepoznavanju po MB, tako da sam isključio te koju su tako prepoznati, a uvezao sam bilance za partnere prepoznate po OIBu.

b) U excelu "Uvoz GFI_POD 2018 provjera podataka na PROD.xlsx" koju smo podesili na lokaciju \\TSTSWA01\Nova_test_IO, mo odmah napravili istu analizu kao što je napravljena na testu prije samog importa te se u
- prvom listu nalazi rezultat mapiranja prema OIBu i MB preko kojih je dobivena prepoznata šifra kupca. U skripti je prepoznavanje napravljeno na način da prvo radi prepoznavanje po OIBu, i ako nema OIBa ili nije prepoznao, onda nadalje radi prepoznavanje prema JMBGu. I to samo za osobe koje nisu fizičke osobe (FO). U vašem excelu postoje zapisi čiji je MB 00000000 tako da smo te zapise isključili iz prepoznavanja..
- u drugom listu se nalazi lista partnera koji već imaju bilancu na dan 31.12.2018 tako da za njih nećemo raditi import.
- u trećem listu je navedena lista bilanci partnera kojima su prepoznate iste šifre partnera, a imaju različite zapise bilanca. Za partnere označene crvenom pozadinom bilanca nije napravljen uvoz.
 
Nakon što sve navedeno provjerite, uvoz bilanci možemo napraviti na produkciji. Oko detalja molim da me kontaktirate na telefon. 



--Stari odgovor
Poštovani, 
na testu smo napravili uvoz bilanci.
a) U excelu 'Analiza kvalitete podataka TEST.xlsx', koju smo podesili na istu lokaciju na koju ste vi postavili datoteku za import, u 
- prvom listu se nalazi rezultat mapiranja prema OIBu i MB preko kojih je dobivena prepoznata šifra kupca. U skripti je prepoznavanje napravljeno na način da prvo radi prepoznavanje po OIBu, i ako nema OIBa ili nije prepoznao, onda nadalje radi prepoznavanje prema JMBGu. I to samo za osobe koje nisu fizičke osobe (FO). U vašem excelu postoje zapisi čiji je MB 00000000 tako da smo te zapise isključili iz prepoznavanja.
- drugom listu je navedena lista bilanci partnera kojima su prepoznate iste šifre partnera, a imaju različite zapise bilanca. Za tog partnera bilanca nije uvezena zato jer neznamo koja je bilanca odgovarajuća.
Za jednog partnera šifre 000097 smo radili provjeru podataka te je vidljivo da postoji razlika između aktive i pasive, a koja je zbog formule dobivanja podatka 'Ukupno aktiva', naime u skripti za uvoz podataka je podešeno da se uvozi zbroj polja iznad (Dugotrajna imovina + Kratkotrajna imovina+AVR) kao što je na masci.  ISti slučaj je bio za bilancu istog partnera na 31.12.2015.


b) U excelu 'Analiza kvalitete podataka PROD.xlsx' , koju smo podesili na istu lokaciju na koju ste vi postavili datoteku za import, smo odmah napravili istu analizu kao što je napravljena na testu prije samog importa te se u
- prvom listu nalazi rezultat mapiranja prema OIBu i MB preko kojih je dobivena prepoznata šifra kupca.
 - u drugom listu se nalazi lista partenra koji već imaju bilancu na dan 31.12.2017 tako da za njih nećemo raditi import.
 - u trećem listu je navedena lista bilanci partnera kojima su prepoznate iste šifre partnera, a imaju različite zapise bilanca. Za tog partnera bilanca nije uvezena zato jer neznamo koja je bilanca odgovarajuća. Iste možete sami unijeti ili možemo mi s time da nam onda morate definirati koja bilanca ide na koju šifru kupca.
 
Nakon što sve navedeno provjerite, uvoz bilanci možemo napraviti na produkciji. Oko detalja molim da me kontaktirate na telefon. 

$SIGN








Odgovor za prošlogodišnji import

Poštovani, 
provjerili smo strukturu polja u drugom listu (GFI-POD_veza AOP i naziva polja) te ista nije kao ona od prošle godine pa smo radili dodatnu analizu. Podaci su u redu, ali imamo dodatnih pitanja oko sljedećih polja u excelu (koja su navedena "kao kontrolni podatak"):
1. AOP065 Ukupno aktiva - da li želite da se podatak importa kao takav ili da se izračuna na temelju iznosa unesenih u polja 'Dugotrajna imovna' i 'Kratkotrajna imovina +AVR' tj. prema poljima u excelu? 
Isto vrijedi za: 
2. AOP131 Poslovni rashodi = Materijalni troškovi + Troškovi osoblja + Amortizacija + Ostali poslovni rashodi 
3. AOP177 Ukupni prihodi = Poslovni prihodi + Financijski prihodi + Udio u dobiti
4. AOP178 Ukupni rashodi = Financijski rashodi + Udio u gubitku + Materijalni troškovi + Troškovi osoblja + Amortizacija + Ostali poslovni rashodi
5. AOP179 Dobit ili gubitak prije oporezivanja = Ukupni prihodi - Ukupni rashodi
6. EBIT EBIT = Poslovni prihodi - Poslovni rashodi
Naime navedeni podaci se spremaju u bazu te ako npr. podatak u excelu nije ispravan u odnosu na formulu na masci, a mi ga kao takvog importamo u bazu, tada prilikom popravka bilance od strane korisnika, u masci će se automatski reizračunati iznosi i kao takvi zapisati prilikom spremanja, što će dovesti do promjene podataka u odnosu na importane.
Polje 'Ukupno pasiva' na masci bilančnih podataka je jedini podatak od navedenih iz excela koji se ne sprema u bazi nego se izračunava i prikazuje na masci/pregledu tako da taj podatak ćete moći provjeirti samo na masci/pregledu (moram provjeriti).
Navedena provjera kvalitete podataka na tim navedenim podacima u excelu nije rađena zato jer to zahtjeva dodatnu analizu.

Nakon što nam definirate način zapisivanja/importa navedenih podataka u bazi (od 1 do 6) ćemo vam pripremiti ponudu za import.

--Odgovori
provjerili smo strukturu polja u drugom listu (GFI-POD_veza AOP i naziva polja) te ista nije kao ona od prošle godine pa smo radili dodatnu analizu. Podaci su u redu, ali imamo dodatnih pitanja oko sljedećih polja u excelu (koja su navedena "kao kontrolni podatak"): - JE DRUGAČIJA JE OBZIROM DA SE MIJENJAO GFI-POD OBRAZAC

1. AOP065 Ukupno aktiva - da li želite da se podatak importa kao takav ili da se izračuna na temelju iznosa unesenih u polja 'Dugotrajna imovna' i 'Kratkotrajna imovina +AVR' tj. prema poljima u excelu?  - PODATAK NE TREBA IMPORTIRATI JER KAKO SAM NAPISALA MOŽE SLUŽITI KAO KONTROLNI PODATAK I ZBROJ JE POLJA IZ BILANČNIH KAKO STE NAPISALI 

Isto vrijedi za: 
2. AOP131 Poslovni rashodi = Materijalni troškovi + Troškovi osoblja + Amortizacija + Ostali poslovni rashodi 3. AOP177 Ukupni prihodi = Poslovni prihodi + Financijski prihodi + Udio u dobiti 4. AOP178 Ukupni rashodi = Financijski rashodi + Udio u gubitku + Materijalni troškovi + Troškovi osoblja + Amortizacija + Ostali poslovni rashodi 5. AOP179 Dobit ili gubitak prije oporezivanja = Ukupni prihodi - Ukupni rashodi 6. EBIT EBIT = Poslovni prihodi - Poslovni rashodi - NAVEDENE  PODATKE NE TREBA IMPORTIRATI JER KAKO SAM NAPISALA MOŽE SLUŽITI KAO KONTROLNI PODATAK I ZBROJ JE POLJA IZ BILANČNIH KAKO STE NAPISALI (ISTO KAO I U TOČKI 1.)


Naime navedeni podaci se spremaju u bazu te ako npr. podatak u excelu nije ispravan u odnosu na formulu na masci, a mi ga kao takvog importamo u bazu, tada prilikom popravka bilance od strane korisnika, u masci će se automatski reizračunati iznosi i kao takvi zapisati prilikom spremanja, što će dovesti do promjene podataka u odnosu na importane. - NE TREBA IMPORTIRATI PODATKE ZA KOJE SAM NAVELA DA SLUŽE KAO KONTROLNI PODACI U LISTU "UPUTA ZA UNOS BILANČNIH PODATAKA" - TO SU: UKUPNO AKTIVA, UKUPNO PASIVA, UKUPNI PRIHODI, POSLOVNIH RASHODI GMC POSLOVNI RASHODI, UKUPNI RASHODI, DOBIT ILI GUBITAK PRIJE OPOREZIVANJA, EBIT
Polje 'Ukupno pasiva' na masci bilančnih podataka je jedini podatak od navedenih iz excela koji se ne sprema u bazi nego se izračunava i prikazuje na masci/pregledu (tako da taj podatak ćete moći provjeriti samo na masci/pregledu).- NE TREBA IMPORT KAO NI OSTALIH GORE NAVEDENIH

Navedena provjera kvalitete podataka na tim navedenim podacima u excelu nije rađena zato jer to zahtjeva dodatnu analizu. - JA SAM ZA OVA DVA PARTNERA NAPRAVILA ANALIZU NA TEMELJU GFI-POD-a KOJE NAM JE KLIJENT DOSTAVO I PODATAKA GFI-POD_BAZA_2016

Nakon što nam definiramo sve detalja oko importa, tada ćemo vam pripremiti ponudu za import.
Oko detalja me možete kontaktirati na telefon.


27.9.2017.
Poštovani, 
na testu smo importali 2 bilance prema zahtjevu.
U excelu 'GMC komentari import bilanca GFI-POD_2016_baza.xlxs', koju smo podesili na istu lokaciju na koju ste vi postavili datoteku za import, smo napisali komentare tako da u 
a) prvom listu 'Prepoznavanje sa TESTa' je prikazano prepoznavanje partnera između excela 'BILANČNI PODACI_pravne osobe_veza GFI-POD_2016.xlsx' drugi list i I. S. Nova TEST instance prema OIBu i JMBGu za dva primjera bilance prema zahtjevu.
U skripti je prepoznavanje napravljeno na način da prvo radi prepoznavanje po OIBu, i ako nema OIBa ili nije prepoznao, onda nadalje radi prepoznavanje prema JMBGu. I to samo za osobe koje nisu fizičke osobe (FO).
Tako je za OIB 00000000000 napravljeno povezivanje s parnerom šifre 004360 i za njega se importala bilanca.
 
b) u drugom listu 'Provjera kvalitete podataka' sam radio provjeru importane bilance sa podacima u excelu te uvidio da postoje razlike u kontrolnim iznosima. Radi testiranja sam još jednom unio ručno bilancu prema excelu te sam dobio iznose kao kod importa (zaključak je da onda vaši kontrolni iznosi nisu dobri).
Usporedio sam i iznose iz excela 'GFI-POD_2016_baza za bilančne_Gemicro.xlsx' te iznosi nisu jednak (!?) tako da molim provjeru.

c) U trećem listu 'Prepoznavanje s PROD' sam zbog slučaja pod a) odmah provjerio podatke na produkciji s onima u excelu, te u njemu se nalaze s produkcije prepoznati partneri s onima u excelu 'GFI-POD_2016_baza za bilančne_Gemicro.xlsx' prema OIBu i JMBGu, pa molim provjeru tih podataka. Za te zapise će se dakle importati bilance na prepoznate šifre kupca.

d) U četvrom listu 'Imaju bilancu na 31.12.2016' su navedeni prepoznati paprtneri prema tč. c) za koje postoji unesena bilanca na 31.12.2016 tako da za njim nećemo raditi import.

e) u petom listu 'Dupli zapisi' su partneri koji su dobili iste šifre partnera, a imaju različite zapise bilanca. Od njih samo jedan partner pod šifrom 021043 nema bilancu na 31.12.2016 tako da ćemo za njega importati samo onu (jednu) bilancu za koju nam potvrdite da se odnosi na tog partnera.

Oko detalja molim da me kontaktirate na telefon.
Nakon što definiramo navedeno bi napravili testni import na TEST instanci.

$SIGN






/*
--OSTALO BCK
8 polja koja se izračunavaju. Na masci 6 + 2 u ext func
Treba se odlučiti da li gledati ove formule u excelu ili na masci	
Možda je bolje gledati formule u excelu, zato jer se formule na masci mogu podešavati

--EKSTERNE FUNKCIJE
-- FO
IF !GF_NULLOREMPTY(p_bilanc_vnos.Nac_davc_osn) AND p_bilanc_vnos.Nac_davc_osn == 2 THEN
	loForm.Container_FO.txtprihodkifo.Value = loForm.Container_FO.txtfprihodki.Value - loForm.Container_FO.txtprih_prod.Value
ENDIF
Thisform.container_FO.txtDobicek.Value = p_bilanc_vnos.prihodki - p_bilanc_vnos.odhodki
--PO
lnEBIT = loForm.Container_PO.txtebit.Value
lnDob = loForm.Container_PO.txtprih_prod.Value
lnGub = loForm.Container_PO.txtposl_odhod.Value

lnDobGubPredDDV = loForm.Container_PO.txtdobic_pos.Value
lnPrihodki = loForm.Container_PO.txtPrihodki.Value
lnOdhodki = loForm.Container_PO.txtOdhodki.Value

&&IF lnDobGubPredDDV = 0 THEN
	lnDobGubPredDDV = lnPrihodki - lnOdhodki
	loForm.Container_PO.txtdobic_pos.Value = lnDobGubPredDDV
&&ENDIF

&&IF lnEBIT = 0 THEN
	lnEBIT = lnDob - lnGub
	loForm.Container_PO.txtebit.Value = lnEBIT
&&ENDIF
*/

