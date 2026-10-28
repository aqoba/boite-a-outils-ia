# boite-a-outils-ia

Skills, mods et plugins IA publiés par [aqoba](https://aqoba.fr), pour nos clients et amis. Ce sont des outils qu'on utilise nous-mêmes en mission.

## Contenu

| Plugin | Ce qu'il fait |
| :-- | :-- |
| `prompt-check` | Relit un prompt avant envoi (Claude, ChatGPT, Gemini, Copilot), en français ou en anglais, le corrige et conseille le modèle. Mode automatique en option. |

## Installation

### Claude Code

```
/plugin marketplace add aqoba/boite-a-outils-ia
/plugin install prompt-check@aqoba
```

### claude.ai et application Claude

Téléchargez [prompt-check.zip](https://github.com/aqoba/boite-a-outils-ia/releases/download/skills/prompt-check.zip) et importez-le dans les paramètres de Claude, rubrique Skills. Les zips de toutes les skills sont dans la [release « skills »](https://github.com/aqoba/boite-a-outils-ia/releases/tag/skills), reconstruite automatiquement à chaque modification.

### Autres outils

`prompt-check` suit le format `SKILL.md`, repris par d'autres assistants. Décompressez le même zip à l'endroit où votre outil range ses skills. Si votre outil ne gère pas les skills, collez le contenu de `SKILL.md` dans ses instructions personnalisées (les fichiers `references/` ne seront alors pas lus).

## prompt-check

Lancez-le avec `/prompt-check` suivi de votre prompt, ou demandez simplement « relis mon prompt ». Il vérifie cinq éléments (contexte, objectif, public, format, contraintes), propose une version corrigée prête à copier, puis conseille le modèle et le niveau de réflexion adaptés à votre outil.

Il découle du point 1.5 de notre guide « Économiser ses tokens » : chaque aller-retour de clarification fait relire toute la conversation au modèle, donc un prompt complet du premier coup coûte moins cher et donne de meilleures réponses.

### Mode automatique

Désactivé par défaut. Pour l'activer, remplacez la dernière phrase de la `description` dans `SKILL.md` :

- `Auto mode: off.` devient `Auto mode: on - apply this skill to every user message before answering it.`

Activé, il reste silencieux sur les messages courts, sauf motif problématique (gros modèle pour une question triviale, correction empilée, sujet sans rapport avec la conversation en cours...). Sur une demande longue, il ne bloque que s'il manque l'objectif ou le format attendu, et propose alors un prompt corrigé.

### Mettre à jour la grille des modèles

Les modèles et leurs prix changent vite. La grille est dans `references/models.md`, datée. Les lignes marquées « (to check) » viennent de sources secondaires.
