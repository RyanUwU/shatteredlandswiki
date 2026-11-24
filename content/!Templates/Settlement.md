<%*
const size = await tp.system.suggester(
  ["Metropolis / Capital", "Large City", "Town", "Village", "Hamlet / Outpost", "Ruins / Abandoned"],
  ["metropolis", "city", "town", "village", "outpost", "ruins"]
);
const government = await tp.system.prompt("Government Type (e.g. Merchant Council, Hereditary Baron, Theocracy)");
const tagline = await tp.system.prompt("One-Line Vibe (e.g. A foggy port town built on whale bones)");
-%>
---
tags:
  - location
  - settlement/<% size %>
size: <% size %>
region: 
government: "<% government %>"
patron_deity: 
status: Active
---

# 🏘️ <% tp.file.title %>
> [!quote] *<% tagline || "A settlement on the map" %>*
> **Scale:** `<% size.toUpperCase() %>` • **Rule:** `<% government %>`

---

> [!info]- 🗺️ Settlement Overview (Click to Collapse)
> - **Region / Plane:** 
> - **Population & Demographics:** 
> - **Primary Exports / Economy:** 
> - **Defences / Guard:** 
> - **Local Shrine / Patron Deity:** *(Link to local god note)*

## 👁️ Atmosphere & Sensory Details
*(Sights, smells, weather, architecture, and the general mood of the locals.)*

## 🏛️ Key Landmarks & Districts
- **Taverns & Inns:** 
- **Shops & Services:** 
- **Temples & Shrines:** 
- **Points of Interest:** 

---

## 📜 Local Lore & Current Events

> [!tip] Rumours & Plot Hooks
> - **Hook 1:** 
> - **Hook 2:** 

> [!danger] Threats & Factions
> - **Local Tension:** *(Crime syndicates, corrupt officials, monster raids, or divine curses.)*

---

## 🕸️ Notable Residents & Connections
- **Leadership:** 
- **Key NPCs:** 
- **Nearby Locations:** 
