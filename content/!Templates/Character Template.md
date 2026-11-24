<%*
const role = await tp.system.suggester(
  ["Player Character (PC)", "Major Ally / Patron", "Villain / Antagonist", "Shopkeeper / Artisan", "Quest Giver", "Minor / Background NPC"],
  ["pc", "ally", "villain", "merchant", "quest-giver", "minor"]
);
const status = await tp.system.suggester(["Alive", "Deceased", "Missing", "Unknown"], ["Alive", "Deceased", "Missing", "Unknown"]);
const title = await tp.system.prompt("Title or Epithet (e.g. Captain of the Guard, The Whisper)");
const ancestry = await tp.system.prompt("Ancestry / Species & Class/Occupation (e.g. Dwarf Blacksmith)");
const image = await tp.system.prompt("Portrait filename in vault (e.g. garrett.png) — leave blank to skip");
-%>
---
tags:
  - character
  - character/<% role %>
role: <% role %>
ancestry: "<% ancestry %>"
location: 
faction: 
deity: 
status: <% status %>
image: "<% image %>"
---

# 🎭 <% tp.file.title %>
> [!quote] *<% title || "No Known Title" %>*
> **Role:** `<% role.toUpperCase() %>` • **Profile:** `<% ancestry %>` • **Status:** `<% status %>`

<%* if (image) { -%>
![[<% image %>|250]]
<%* } else { -%>
> [!abstract]- 🖼️ Portrait (Drop image here)
> ![[placeholder-character.png|250]]
<%* } -%>

---

> [!info]- 📋 Quick Reference & Stats (Click to Collapse)
> - **Current Location:** 
> - **Faction / Allegiance:** 
> - **Patron Deity:** 
> - **Voice / Mannerism:** *(Accent, nervous tic, catchphrase, or posture.)*
> - **Stat Block:** *(e.g. `Veteran`, `Archmage`, or link to custom sheet)*

## 👁️ Appearance & First Impression
*(What do the players notice first? Clothing, scars, aura, or distinctive gear.)*

## 🧠 Personality & Motivations
- **Ideal / Goal:** *(What do they want most right now?)*
- **Bond:** *(Who or what do they care about protecting?)*
- **Flaw / Secret:** *(What could be used as leverage against them?)*

---

## 📖 Backstory & Campaign Notes
*(How they got to where they are, and a running log of interactions with the party.)*

---

## 🕸️ Connections
- **Allies / Family:** 
- **Rivals / Enemies:** 
