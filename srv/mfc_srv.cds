using app.mfc from '../db/mfc';
service CatalogService@(path:'/CatalogService') {   
entity Anagrafica_Utenti as projection on mfc.Anagrafica_Utenti;   
entity Anagrafica_Ruoli  as projection on mfc.Anagrafica_Ruoli;   
entity Anagrafica_Flussi as projection on mfc.Anagrafica_Flussi;   
entity Anagrafica_Moduli as projection on mfc.Anagrafica_Moduli;   
entity Anagrafica_Errori as projection on mfc.Anagrafica_Errori;   
entity Anagrafica_Stato_Errori  as projection on mfc.Anagrafica_Stato_Errori;
}