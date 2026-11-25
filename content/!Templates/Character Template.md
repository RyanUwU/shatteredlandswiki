<%*
const role = await tp.system.suggester(
  ["Player Character (PC)", "Major Ally / Patron", "Villain / Antagonist", "Shopkeeper / Artisan", "Quest Giver", "Minor / Background NPC"],
  ["pc", "ally", "villain", "merchant", "quest-giver", "minor"]
);
const status = await tp.system.suggester(["Alive", "Deceased", "Missing", "Unknown"], ["Alive", "Deceased", "Missing", "Unknown"]);
const title = await tp.system.prompt("Title or Epithet (e.g. Captain of the Guard, The Whisper)");
const ancestry = await tp.system.prompt("Ancestry / Species (e.g. Half-Elf, Tiefling, Dwarf)");
const primaryClass = await tp.system.prompt("Primary Class & Level (e.g. Paladin 6) — leave blank if none");
const isMulticlass = await tp.system.suggester(["No", "Yes (Multiclass)"], [false, true]);
let secondaryClasses = "";
if (isMulticlass) {
  secondaryClasses = await tp.system.prompt("Secondary Class(es) & Level(s) (e.g. Warlock 2 / Sorcerer 1)");
}
const totalLevel = await tp.system.prompt("Total Level or CR (e.g. 8, CR 5) — leave blank if none");
const image = await tp.system.prompt("Portrait filename in vault (e.g. garrett.png) — leave blank to skip");
-%>
---
tags:
  - character
  - character/<% role %>
<%* if (isMulticlass) { %>  - multiclass<%* } %>
role: <% role %>
ancestry: "<% ancestry %>"
class: "<% primaryClass %><%* if (isMulticlass && secondaryClasses) { %> / <% secondaryClasses %><%* } %>"
multiclass: <% isMulticlass %>
level: "<% totalLevel %>"
location: 
faction: 
deity: 
status: <% status %>
image: "<% image %>"
---

# 🎭 <% tp.file.title %>
> [!quote] *<% title || "No Known Title" %>*
> **Role:** `<% role.toUpperCase() %>` • **Ancestry:** `<% ancestry || "Unknown" %>`<%* if (primaryClass) { %> • **Class:** `<% primaryClass %><%* if (isMulticlass && secondaryClasses) { %> / <% secondaryClasses %><%* } %>`<%* } %><%* if (totalLevel) { %> • **Level/CR:** `<% totalLevel %>`<%* } %> • **Status:** `<% status %>`

<%* if (image) { -%>
![[<% image %>|250]]
<%* } else { -%>
> [!abstract]- 🖼️ Portrait (Drop image here)
> ![[placeholder-character.png|250]]
<%* } -%>

---

> [!info]- 📋 Quick Reference & Stats (Click to Collapse)
> - **Class Breakdown:** <% primaryClass || "None (Commoner / Non-classed)" %><%* if (isMulticlass && secondaryClasses) { %> / <% secondaryClasses %><%* } %>
> - **Total Level / CR:** <% totalLevel || "N/A" %>
> - **Current Location:** 
> - **Faction / Allegiance:** 
> - **Patron Deity:** 
> - **Voice / Mannerism:** *(Accent, nervous tic, catchphrase, or posture.)*
> - **Stat Block / Sheet:** *(e.g. `Veteran`, `Archmage`, or link to character sheet)*

## 👁️ Appearance & First Impression
*(What do the players notice first? Clothing, scars, aura, or distinctive gear.)*

## 🧠 Personality & Motivations
- **Ideal / Goal:** *(What do they want most right now?)*
- **Bond:** *(Who or what do they care about protecting?)*
- **Flaw / Secret:** *(What could be used as leverage against them?)*

---

## 🎒 Notable Items
- **Attuned / Signature Gear:** *(Link to your `[[Magic Item]]` notes here)*
- **Carried Relics & Key Inventory:** *(Important quest items, heirlooms, or suspicious trinkets)*

---

## 📖 Backstory & Campaign Notes
*(How they got to where they are, and a running log of interactions with the party.)*

---

## 🕸️ Connections
- **Allies / Family:** 
- **Rivals / Enemies:** 
