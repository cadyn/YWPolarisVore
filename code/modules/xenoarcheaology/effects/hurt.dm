/datum/artifact_effect/hurt
	name = "hurt"
	effect_type = EFFECT_ORGANIC

	effect_color = "#6d1212"

/datum/artifact_effect/hurt/DoEffectTouch(var/mob/toucher)
	if(toucher)
		var/weakness = GetAnomalySusceptibility(toucher)
		if(iscarbon(toucher) && prob(weakness * 100))
			var/mob/living/carbon/C = toucher
			to_chat(C, span_danger("A painful discharge of energy strikes you!"))
			C.adjustOxyLoss(rand(5,25) * weakness)
			C.adjustToxLoss(rand(5,25) * weakness)
			C.adjustBruteLoss(rand(5,25) * weakness)
			C.adjustFireLoss(rand(5,25) * weakness)
			C.adjustBrainLoss(rand(1,5) * weakness)
			C.apply_effect(25 * weakness, IRRADIATE)
			C.adjust_nutrition(-50 * weakness)
			C.nutrition -= min(50 * weakness, C.nutrition)
			C.make_dizzy(6 * weakness)
			C.weakened += 6 * weakness

/datum/artifact_effect/hurt/DoEffectAura()
	var/atom/holder = get_master_holder()
	if(holder)
		var/turf/T = get_turf(holder)
		for (var/mob/living/carbon/C in range(src.effectrange,T))
			var/weakness = GetAnomalySusceptibility(C)
			if(prob(weakness * 100))
				if(prob(10))
					to_chat(C, span_danger("You feel a painful force radiating from something nearby."))
				C.adjustBruteLoss(1 * weakness)
				C.adjustFireLoss(1 * weakness)
				C.adjustToxLoss(1 * weakness)
				C.adjustOxyLoss(1 * weakness)
				C.adjustBrainLoss(0.1 * weakness)
				C.updatehealth()

/datum/artifact_effect/hurt/DoEffectPulse()
	var/atom/holder = get_master_holder()
	if(holder)
		var/turf/T = get_turf(holder)
		for (var/mob/living/carbon/C in range(effectrange, T))
			var/weakness = GetAnomalySusceptibility(C)
			if(prob(weakness * 100))
				to_chat(C, span_danger("A wave of painful energy strikes you!"))
				C.adjustBruteLoss(3 * weakness)
				C.adjustFireLoss(3 * weakness)
				C.adjustToxLoss(3 * weakness)
				C.adjustOxyLoss(3 * weakness)
				C.adjustBrainLoss(0.1 * weakness)
				C.updatehealth()
