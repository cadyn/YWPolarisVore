//Original Source: Southern Cross

/obj/item/encryptionkey/pilot
	name = "pilot's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Supply" = 1, "Away Team" = 1)

/obj/item/encryptionkey/explorer
	name = "explorer radio encryption key"
	icon_state = "com_cypherkey"
	channels = list("Away Team" = 1)

/obj/item/encryptionkey/sar
	name = "sar's encryption key"
	icon_state = "med_cypherkey"
	channels = list("Medical" = 1, "Away Team" = 1)

/obj/item/encryptionkey/heads/hop
	name = "head of personnel's encryption key"
	icon_state = "hop_cypherkey"
	channels = list("Supply" = 1, "Service" = 1, "Command" = 1, "Security" = 0, "Away Team" = 1)

/obj/item/encryptionkey/heads/ai_integrated
	name = "ai integrated encryption key"
	desc = "Integrated encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "AI Private" = 1,"Away Team" = 1)

/obj/item/encryptionkey/heads/captain
	name = "colony director's encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 0, "Science" = 0, "Medical" = 0, "Supply" = 0, "Service" = 0, "Away Team" = 0)
