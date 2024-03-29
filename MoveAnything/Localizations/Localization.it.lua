if GetLocale() ~= "itIT" then
	return
end

local MOVANY = {
	ADD = "Aggiungi",
	ADDNEW = "Aggiugni nuovo",
	CLOSEGUIONESC = "Il tasto esc chiude il menu principale",
	CMD_SYNTAX_DELETE = "Sintassi: /movedelete NomeProfilo",
	CMD_SYNTAX_EXPORT = "Sintassi: /moveexport NomeProfilo",
	CMD_SYNTAX_HIDE = "Sintassi: /hide NomeProfilo",
	CMD_SYNTAX_IMPORT = "Sintassi: /moveimport NomeProfilo",
	CMD_SYNTAX_MAFE = "Sintassi: /mafe nomeFinestra",
	CMD_SYNTAX_UNMOVE = "Sintassi: /unmove nomeFinestra",
	DELETE = "Cancella",
	DISABLED_DURING_COMBAT = "Disabilitato durante il combattimento",
	DISERRORMES = "Abilita o disabilita messaggi d'errore",
	DISERRORMESNO = "Disabilita messaggi d'errore",
	DONSEARCHFRAMENAME = "Disabilita la ricerca nei nomi delle finestre attuali",
	DONTSEARCH = "Non cercare nei nomi delle finestre",
	DONTSYNCINCOMBAT = "Abilita e disabilita se MoveAnything deve sincronizzare le finestre in coda lasciando il combattimento.\n\nDisabilitare questa opzione può causare una sincronizzazione manuale delle finestre protette quando lasci il combattimento.",
	DONTSYNCINCOMBATNO = "Disabilita sincronizzazione quando lasci il combattimento",
	ELEMENT_NOT_FOUND = "Elemento UI non trovato",
	ELEMENT_NOT_FOUND_NAMED = "Elemento UI non trovato: %s",
	ERROR_FRAME_FAILED = "Errore durante la sincronizzazione di %s. Reimposta la finestra e ricarica l'UI prima di modificarla nuovamente potrebbe risolvere il problema. Puoi disabilitare questo messaggio nelle opzioni. Se il problema persiste, per favore contatta l'autore con il seguente: %s %s %s",
	ERROR_MODULE_FAILED = "Errore durante l'aggiustamento di %s per %s. Puoi disabilitare questo messaggio nelle opzioni. Se il problema persiste, per favore contatta l'autore con il seguente: %s %s %s",
	ERROR_NOT_A_TABLE = "\"%s\" non è un tipo supportato",
	FE_FORCED_LOCK_POSITION_CONFIRM = "Forzare blocco posizione? Premi entro 5 secondi per confermare",
	FE_FORCED_LOCK_POSITION_TOOLTIP = "Sovrascrive l'ancoraggio dell'elemento,\nrimpiazzandolo con un punto bloccato\n\nPuò causare un errore se protetto,\ne può causare errori in combattimento\n\nRichiede un riavvio o un relog dopo aver\ndeselezionato per ripristinare l'ancoraggio originale",
	FE_GROUP_RESET_CONFIRM = "Reimpostare il gruppo %i? Premi entro 5 secondi per confermare",
	FE_GROUPS_TOOLTIP = "Gruppo %i",
	FE_UNREGISTER_ALL_EVENTS_CONFIRM = "Rimuovere tutti gli eventi? Premi entro 5 secondi per confermare",
	FE_UNREGISTER_ALL_EVENTS_TOOLTIP = "Rimuovere degli eventi della finestra,\nrende la finestra inerme\n\nRiabilitando la rimozione degli eventi richiede una ricarica dell'UI\noppure un relog dopo aver spuntato questa casella",
	FRAME_NO_FRAME_EDITOR = "L'editor delle finestre è disabilitato per %s",
	FRAME_ONLY_ONCE_OPENED = "Si può interagire con %s solo dopo che è stata mostrata",
	FRAME_ONLY_WHEN_BANK_IS_OPEN = "Si può interagire con %s quando la banca è aperta",
	FRAME_ONLY_WHEN_VOIDSTORAGE_IS_OPEN = "Si può interagire con %s quando è aperta",
	FRAME_PROTECTED_DURING_COMBAT = "Non si può interagire con %s durante il combattimento",
	FRAME_UNPOSITIONED = "%s non è posizionata e non si può muovere senza posizionamento",
	FRAME_VISIBILITY_ONLY = "%s può solo essere nascosta",
	HOOKALLOWED = "Abilita o disabilita se MoveAnything deve gestire CreateFrame.\n\nRichiede un riavvio per funzionare.",
	HOOKALLOWEDNO = "Disabilita gestione su nuove finestre",
	LIST_HEADING_CATEGORY_AND_FRAMES = "Categorie e Finestre",
	LIST_HEADING_HIDE = "Nascondi",
	LIST_HEADING_MOVER = "Mover",
	LIST_HEADING_SEARCH_RESULTS = "Risultati ricerca: %i",
	NOMMWP = "Abilita o disabilita lo zoom del mouse sulla Minimappa.\n\nRichiede un riavvio per funzionare.",
	NOMMWPNO = "Disabilita lo zoom del mouse sulla Minimappa",
	NO_NAMED_FRAMES_FOUND = "Nessun elemento nominato trovato",
	NUDGER1 = "Mostra Nudger con il menu principale",
	ONLY_ONCE_CREATED = "%s può solo essere modificato dopo che è stato creato",
	OPTBAGS1 = "Abilita o disabilita se MoveAnything deve gestire i contenitori.\n\nQuesto deve essere spuntato se usi un altro addon che muove le tue borse.",
	OPTBAGSTOOLTIP = "Disabilita gestione della borsa",
	OPTIONTOOLTIP1 = "Abilita per mostrare Nudger con il menu principale.\n\nDi default Nudger è mostrato solo quando interagisci con le finestre.",
	OPTIONTOOLTIP2 = "Abilita o disabilita display dei tooltip.\n\nTenendo premuto Shift sugli elementi inverte il comportamento del display dei tooltip.",
	PLAYSOUND = "Prova suono",
	PLAYSOUNDS = "Abilita o disabilita se MoveAnything deve suonare quando apri e chiudi il menu principale.",
	PROFILE_ADD_TEXT = "Inserisci un nuovo nome profilo",
	PROFILE_ALREADY_EXISTS = "Il profilo \"%s\" esiste già",
	PROFILE_CANT_DELETE_CURRENT_IN_COMBAT = "Non si può cancellare il profilo corrente durante il combattimento",
	PROFILE_CANT_DELETE_DEFAULT = "Il profilo di default non può essere cancellato",
	PROFILE_CURRENT = "Corrente",
	PROFILE_DELETED = "Profilo cancellato: %s",
	PROFILE_DELETE_TEXT = "Cancellare il profilo \"%s\"?",
	PROFILE_EXPORTED = "\"%s\" esportato a \"%s\"",
	PROFILE_IMPORTED = "\"%s\" è stato importato in \"%s\"",
	PROFILE_RENAME_TEXT = "Inserisci un nuovo nome per \"%s\"",
	PROFILE_RESET_CONFIRM = "MoveAnything: Reimpostare tutte le finestre del profilo corrente?",
	PROFILES = "Profili",
	PROFILE_SAVE_AS_TEXT = "Inserisci un nuovo nome profilo",
	PROFILES_CANT_SWITCH_DURING_COMBAT = "I profili non posso essere modificati durante il combattimento",
	PROFILE_UNKNOWN = "Profilo sconosciuto: %s",
	RENAME = "Rinomina",
	RESETALL1 = "Reimposta tutto.\n\nReimposta MoveAnything alle impostazioni di default. Cancella tutte le impostazioni delle finestre e la lista delle finestre personalizzate.",
	RESET_ALL_CONFIRM = "MoveAnything: Reimposto MoveAnything alle impostazioni di default?",
	RESET_FRAME_CONFIRM = "Reimposto %s? Premi entro 5 secondi per confermare",
	RESETPROFILE1 = "Reimposta profilo\n\nReimposta il profilo cancellando tutte le impostazioni delle finestre salvate per questo profilo.",
	RESETTING_FRAME = "Reimposto %s",
	SAVE = "Salva",
	SAVEAS = "Salva come",
	SEARCH_TEXT = "Cerca",
	SHOWTOOLTIPS = "Mostra tooltips",
	SQUARMAP = "Abilita o disabilita quadrato Minimappa\n\nNascondi i \"Bordi Arrotondati\" nella categoria \"Minimappa\" per rimuovere la sovrapposizione del bordo.",
	SQUARMAPNO = "Abilita Minimappa quadrata",
	UNSERIALIZE_FRAME_INVALID_FORMAT = "Formato invalido",
	UNSERIALIZE_FRAME_NAME_DIFFERS = "Il nome della finestra importata è diverso da quella di destinazione",
	UNSERIALIZE_PROFILE_COMPLETED = "Importati %i elemento/i nel profilo \"%s\"",
	UNSERIALIZE_PROFILE_NO_NAME = "Impossibile localizzare il nome profilo",
	UNSUPPORTED_FRAME = "Finestre non supportate: %s",
	UNSUPPORTED_TYPE = "Tipi non supportati: %s"
}

_G.MOVANY = MOVANY