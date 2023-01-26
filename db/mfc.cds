namespace app.mfc;

// using { Country } from '@sap/cds/common';
type Varchar           : String(30);
type SDate             : DateTime;
type LText             : String(20);
type Bolla             : Boolean;
type Messaggio         : String(1000);
type email             : String(40);
type Descrizioneflusso : String(50);


entity Anagrafica_Utenti {
  key ID_UTENTE       : Integer not null;
      COGNOME_UTENTE  : Varchar not null;
      NOME_UTENTE     : Varchar not null;
      EMAIL_UTENTE    : email not null;
      // ID_RUOLO        : Association to Anagrafica_Ruoli on ID_RUOLO;
      TELEFONO_UTENTE : LText not null;
};

entity Anagrafica_Ruoli {
  key ID_RUOLO : Integer not null;
      RUOLO    : LText not null;

};

entity Anagrafica_Flussi {
  key ID_FLUSSO          : Integer;
      NOME_FLUSSO        : Varchar not null;
      DESCRIZIONE_FLUSSO : Descrizioneflusso;
      // ID_MODULO          : Association to Anagrafica_Moduli on ID_MODULO;
};

entity Anagrafica_Moduli {

  key ID_MODULO : Integer not null;
      MODULO    : LText not null;

};


entity Anagrafica_Stato_Errori {

  key ID_STATO_ERRORE : Integer not null;
      Stato_Errore    : Varchar not null;


};
entity Anagrafica_Errori {
      ID_ERRORE           : Integer not null;
      ID_FLUSSO           : Association to Anagrafica_Flussi on ID_FLUSSO;
      MESSAGGIO_ERRORE    : Messaggio not null;
      DATA_ERRORE         : SDate not null;
      ID_STATO_ERRORE     : Association to Anagrafica_Stato_Errori on ID_STATO_ERRORE;
      ID_UTENTE           : Association to Anagrafica_Utenti on ID_UTENTE;
    //   Id_UTENTE_TECHNICAL : Association to Anagrafica_Utenti on ID_UTENTE;
      STATO_BOTTONE       : Bolla not null;


};