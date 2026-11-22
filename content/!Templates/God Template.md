<%*
const tier = await tp.system.suggester(
  ["Overgod", "Greater (Hellus-Abyssus)", "Planar (World/Continent)", "Lesser (Regional)", "Shrine (Town/Local)", "Demigod / Aasimar"],
  ["overgod", "greater", "planar", "lesser", "shrine", "demigod"]
);
const isAscendant = await tp.system.suggester(["No", "Yes (Ascendant)"], [false, true]);
const epithet = await tp.system.prompt("Epithet or Title (e.g. Keeper of the Rusty Kettle)");
const portfolio = await tp.system.prompt("Portfolio (e.g. Frogs, Lost Keys, Peace)");
-%>
---
tags:
  - deity
  - pantheon/<% tier %>
<%* if (isAscendant) { %>  - ascendant<%* } %>
tier: <% tier %>
ascendant: <% isAscendant %>
portfolio: "<% portfolio %>"
domains: 
anchor: 
location: 
status: Active
---

# ⛩️ <% tp.file.title %>
> [!quote] *<% epithet || "Title Unknown" %>*
> **Tier:** `<% tier.toUpperCase() %>` <%* if (isAscendant) { %>• **Origin:** `ASCENDANT`<%* } %> • **Portfolio:** `<% portfolio %>`

---

> [!info]- 📜 Core Divine Profile (Click to Collapse)
> - **5e Cleric Domains:** 
> - **Physical Anchor / Vessel:** 
> - **Seat of Power / Shrine:** 
> - **Temperament:** 
> - **Source of Belief:** *(Who worships or fears them, and how does that belief sustain them?)*

## 👁️ Description & Manifestation
*(Describe their appearance, avatar, sacred animals, or the subtle omens mortals notice when this god is near.)*

## 📖 Lore & Belief Engine Quirk
*(Write their mythology, how they came to be, and any weird side effects caused by mortal belief shaping their powers.)*

---

## 🕯️ Worship & Customs

> [!tip] Favoured Offerings & Boons
> - **Offering:** 
> - **Boon:** *(Minor blessing granted to faithful visitors or clerics.)*

> [!danger] Taboos & Curses
> - **Taboo:** *(What action deeply offends this god?)*
> - **Curse:** *(How the god punishes trespassers or oathbreakers.)*

---

## 🕸️ Divine Web
- **Allies / Patronage:** 
- **Rivals / Enemies:** 
- **Demigods / Champions:** 

> [!example]- ⚔️ Avatar Statblock (Optional)
> ```statblock
> name: <% tp.file.title %> (Avatar)
> size: Medium
> type: Celestial
> alignment: Unaligned
> ac: 15
> hp: 100
> hit_dice: 10d8 + 50
> speed: 30 ft.
> stats: [14, 14, 14, 14, 14, 14]
> traits:
>   - name: Belief-Bound
>     desc: This avatar's strength scales directly with the number of active worshippers nearby.
> actions:
>   - name: Divine Strike
>     desc: Melee Weapon Attack +6 to hit, reach 5 ft., one target. Hit 12 (2d8 + 3) radiant or necrotic damage.
> ```
