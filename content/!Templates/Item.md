<%*
const rarity = await tp.system.suggester(
  ["Common", "Uncommon", "Rare", "Very Rare", "Legendary", "Artefact / Divine Relic"],
  ["common", "uncommon", "rare", "very-rare", "legendary", "artefact"]
);
const attunement = await tp.system.suggester(["No", "Yes", "Yes (Specific Class/Alignment)"], [false, true, "special"]);
const itemType = await tp.system.prompt("Item Type (e.g. Weapon (Longsword), Wondrous Item, Ring)");
const origin = await tp.system.prompt("Creator or Associated Deity (e.g. Forged by Dwarves, Relic of [God])");
const image = await tp.system.prompt("Item image filename in vault (e.g. sunblade.png) — leave blank to skip");
-%>
---
tags:
  - item
  - item/<% rarity %>
rarity: <% rarity %>
type: "<% itemType %>"
attunement: <% attunement %>
holder: 
origin: "<% origin %>"
image: "<% image %>"
---

# ✨ <% tp.file.title %>
> [!quote] *<% itemType %>, <% rarity %><%* if (attunement === true) { %> (requires attunement)<%* } else if (attunement === "special") { %> (requires special attunement)<%* } %>*
> **Origin:** `<% origin || "Unknown" %>`

<%* if (image) { -%>
![[<% image %>|250]]
<%* } else { -%>
> [!abstract]- 🖼️ Item Art (Drop image here)
> ![[placeholder-item.png|250]]
<%* } -%>

---

> [!info]- ⚙️ Mechanics & Properties (Click to Collapse)
> - **Current Holder:** 
> - **Charges / Uses:** 
> - **Activation:** *(Action, Bonus Action, Command Word, Passive)*
> - **Value:** 

## 👁️ Appearance & Aura
*(What does it look, feel, or smell like? Does it hum, glow, or react to certain creatures/gods?)*

## 🪄 Magical Effects
*(Write the exact rules, damage dice, spells castable, and passive bonuses here.)*

---

## 📖 History & Lore
*(Who made it, who wielded it before, and what legends surround it?)*

> [!danger]- 💀 Curse or Sentience (Click to Reveal)
> - **Curse / Drawback:** *(Hidden negative effects or belief-engine quirks.)*
> - **Sentience / Purpose:** *(If sentient: INT/WIS/CHA scores, alignment, and personality.)*
