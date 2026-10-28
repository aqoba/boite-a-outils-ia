# boite-a-outils-ia

Skills, mods et plugins IA publiés par [aqoba](https://aqoba.fr), pour nos clients et amis. Ce sont des outils qu'on utilise nous-mêmes en mission.

## Contenu

| Plugin | Ce qu'il fait |
| :-- | :-- |
| `prompt-check` | Relit un prompt avant envoi (Claude, ChatGPT, Gemini, Copilot), en français ou en anglais, le corrige et conseille le modèle. Mode automatique en option. |

## Installation et utilisation

Pour Claude, ChatGPT et Gemini, tout commence par le même fichier : **[téléchargez prompt-check.zip](https://github.com/aqoba/boite-a-outils-ia/releases/download/skills/prompt-check.zip)**. Ne le décompressez pas, chaque outil l'importe tel quel. Ce lien donne toujours la dernière version. Les zips de toutes les skills sont dans la [release « skills »](https://github.com/aqoba/boite-a-outils-ia/releases/tag/skills).


### claude.ai et application Claude

1. Ouvrez **Paramètres**, puis **Capacités**, rubrique **Skills**.
2. Importez `prompt-check.zip`.
3. Dans une discussion, tapez `/prompt-check` suivi de votre prompt, ou demandez « relis mon prompt ».

### ChatGPT

1. Dans la barre latérale, ouvrez **Plugins**, puis l'onglet **Skills**.
2. Cliquez sur **Create**, puis **Upload from your computer**, et choisissez `prompt-check.zip`.
3. Attendez la fin de l'analyse du fichier par ChatGPT.
4. Dans une nouvelle discussion, citez `prompt-check` dans votre message pour être sûr qu'il est utilisé.

Les skills sont proposées sur les espaces Business, Enterprise et Edu, si l'administrateur a activé l'import. Si vous ne voyez pas **Plugins** ou **Skills**, voir « Sans gestion des skills » plus bas.

### Codex (application ChatGPT pour le code et le travail sur fichiers)

Pas besoin du zip : envoyez simplement ce message à Codex.

```
Utilise skill-installer pour installer le skill depuis :
https://github.com/aqoba/boite-a-outils-ia/tree/main/plugins/prompt-check/skills/prompt-check
```

Codex copie le dossier complet, références comprises. La skill est disponible au message suivant. Appelez-la avec `$prompt-check` suivi de votre prompt.

### Claude Code

```
/plugin marketplace add aqoba/boite-a-outils-ia
/plugin install prompt-check@aqoba
```

### Gemini

1. Dans la barre latérale, ouvrez **Personnaliser**, puis l'onglet **Compétences**.
2. Cliquez sur **Créer**, puis **Importer**, et choisissez `prompt-check.zip`.
3. Vérifiez la compétence, puis validez. Elle apparaît dans **Actives**.
4. Dans une discussion, tapez `@prompt-check` suivi de votre prompt.

Les compétences demandent un abonnement Google AI Pro ou Ultra et un compte Google personnel.

### Sans gestion des skills

Si votre outil ou votre abonnement ne permet pas d'importer une skill, ouvrez [SKILL.md](plugins/prompt-check/skills/prompt-check/SKILL.md) et collez son contenu dans les instructions personnalisées de l'outil ou d'un projet. Pour la critique complète, ajoutez aussi [review.md](plugins/prompt-check/skills/prompt-check/references/review.md) et [models.md](plugins/prompt-check/skills/prompt-check/references/models.md) comme fichiers du projet.

## prompt-check

Lancez-le avec `/prompt-check` suivi de votre prompt, ou demandez simplement « relis mon prompt ». Il vérifie cinq éléments (contexte, objectif, public, format, contraintes), propose une version corrigée prête à copier, puis conseille le modèle et le niveau de réflexion adaptés à votre outil.

Quand des informations manquent, il les demande directement si l'outil sait afficher des questions à choix dans la discussion (c'est le cas de Claude, souvent de ChatGPT), puis rend le prompt complet. Sinon, il laisse des `[à préciser]` à compléter, ou vous propose de répondre en un seul message.

Il découle du point 1.5 de notre guide « Économiser ses tokens » : chaque aller-retour de clarification fait relire toute la conversation au modèle, donc un prompt complet du premier coup coûte moins cher et donne de meilleures réponses.

### Mode automatique

Désactivé par défaut. Pour l'activer, remplacez la dernière phrase de la `description` dans `SKILL.md` :

- `Auto mode: off.` devient `Auto mode: on - apply this skill to every user message before answering it.`

Activé, il reste silencieux sur les messages courts, sauf motif problématique (gros modèle pour une question triviale, correction empilée, sujet sans rapport avec la conversation en cours...). Sur une demande longue, il ne bloque que s'il manque l'objectif ou le format attendu, et propose alors un prompt corrigé.

### Mettre à jour la grille des modèles

Les modèles et leurs prix changent vite. La grille est dans `references/models.md`, datée. Les lignes marquées « (to check) » viennent de sources secondaires.
