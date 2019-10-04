(* http://seduc.csdecou.qc.ca/wp-content/uploads/2014/06/1-1.3-Questionnaire-Profil-de-gestion-de-classe.pdf *)

let questions = [
  "Un des principaux rôles de l’enseignant ou de l’enseignante est de maintenir l’ordre et la discipline dans sa classe, et ce, en contrôlant personnellement le comportement de ses élèves.";
  "Récompenser les élèves méritants ou leur donner du renforcement est une excellente façon de gérer sa classe.";
  "En gestion de classe, la tâche principale de l’enseignant(e) consiste à aider les élèves à comprendre et à respecter les règles choisies par le groupe.";
  "L’utilisation d’activités d’apprentissage appropriées encourage habituellement les élèves à bien se comporter parce que cela diminue l’ennui et la frustration.";
  "La menace de la punition et la punition peuvent être très efficaces lorsqu’elles sont bien utilisées.";
  "En ce qui concerne le comportement des élèves, il est préférable de leur imposer le moins de limites possible afin de leur permettre de développer tout leur potentiel et leur autonomie.";
  "En ce qui concerne la gestion de classe, l’action la plus importante de l’enseignant ou de l’enseignante consiste à faire en sorte d’avoir de bonnes relations avec ses élèves.";
  "Une gestion de classe efficace passe avant tout par l’instauration dans la classe d’un système de règles déterminées par l’enseignant ou l’enseignante.";
  "Une bonne gestion de classe consiste principalement à renforcer les comportements appropriés et à décourager les comportements déviants.";
  "L’utilisation du conseil de coopération et de sessions collectives de résolution de problèmes sont parmi les moyens les plus efficaces pour régler les problèmes de gestion de classe.";
  "L’utilisation de stratégies pédagogiques efficaces contribue grandement à prévenir et à régler les problèmes de comportement.";
  "On peut utiliser le sarcasme en classe mais avec précaution et seulement après que de solides relations auront été établies avec les élèves.";
  "Trop de contrôle peut entraver le développement naturel de l’autonomie des élèves.";
  "En ce qui concerne la gestion de classe, le rôle le plus important de l’enseignant ou de l’enseignante consiste à établir et à maintenir de bonnes relations avec ses élèves.";
  "C’est le rôle de l’enseignant ou de l’enseignante de choisir personnellement des règles de vie pour sa classe.";
  "Un bon système d’émulation appliqué à tout le groupe peut vraiment faciliter la gestion de classe.";
  "Une bonne gestion de classe passe avant tout par la cohésion du groupe et la coopération entre les élèves.";
  "Faire en sorte que chaque élève fasse des apprentissages significatifs est une excellente façon d’instaurer et de maintenir la discipline en classe.";
  "Une gestion de classe efficace passe parfois par le recours à la coercition.";
  "En gestion de classe, il est préférable d’être un peu trop permissif qu’un peu trop « contrôlant ».";
  "La qualité de la gestion de classe se mesure avant tout par la nature des relations entre les élèves et l’enseignant ou l’enseignante.";
  "Une gestion de classe efficace passe par l’établissement et le maintien du contrôle de la classe à l’aide d’un code de vie élaboré par l’enseignant ou l’enseignante.";
  "En gestion de classe, il est primordial de savoir récompenser et appliquer
  des conséquences.";
  "Une gestion de classe efficace a pour but principal d’aider le groupe à devenir capable de régler lui-même plusieurs de ses problèmes.";
  "Les activités d’apprentissage que choisit l’enseignant ou l’enseignante ont une répercussion importante sur le comportement des élèves.";
  "L’utilisation du sarcasme peut, à certaines conditions bien précises, constituer un moyen acceptable de contrôler le comportement de certains élèves.";
  "Une gestion de classe efficace passe parfois par la punition sévère des comportements inadéquats.";
]

let answers =
  [
    "Fortement en désaccord";
    "En désaccord";
    "Neutre";
    "D'accord";
    "Fortement en accord";
  ] |>
  List.mapi (fun i t -> Printf.sprintf "%d - %s" (i + 1) t)

let classes = [
  "Autorité", "Les enseignantes et les enseignants qui gèrent leur classe principalement à partir d’un système de règles et de procédures qu’ils ont eux-mêmes définies s’inscrivent dans un patron d’autorité. Les tenants de cette façon de faire considèrent généralement que leur rôle consiste principalement à contrôler le comportement des élèves en organisant et en régulant les relations sociales qui sont établies en classe. Dès lors, l’élaboration et l’instauration d’un code vie efficace sont une priorité pour ces derniers.";
  "Modification du comportement", "La modification du comportement s’inscrit pleinement dans une conception béhaviorale cognitive de l’éducation. Ses défenseurs soutiennent que les comportements, adéquats ou non, sont appris, et que le rôle des enseignantes et des enseignants consiste principalement à encourager les élèves à adopter des comportements appropriés. Leurs pratiques s’appuient généralement sur les quatre principes de base de l’apprentissage définis par les béhavioristes, soit le renforcement positif, la punition, l’extinction et le renforcement négatif.  Ils ont donc tendance à prévenir et à régler les problèmes de comportement des élèves en utilisant des techniques sophistiquées destinées à amener une modification des comportements inadaptés. Ils ont par exemple recours à la récompense ainsi qu’au système d’émulation et utilisent fréquemment la feuille de route et le contrat de comportement.";
  "Système social", "Les enseignantes et enseignants portés plutôt à gérer leur classe à partir de préoccupations relatives au système social accordent eux aussi beaucoup d’importance à l’établissement de règles et de procédures; cependant, ils privilégient davantage la cohésion du groupe et la coopération entre les élèves que ne le font leurs collègues plus « autoritaires ». Ils conçoivent qu’une bonne gestion de classe devrait d’abord tenir compte du fait que l’enseignement et l’apprentissage se produisent dans un contexte de groupe et que le rôle de l’enseignant consiste principalement à établir et à maintenir dans la classe des conditions favorables à la vie en commun. En conséquence, ces enseignantes et ces enseignants ont tendance à être attentifs au groupe plutôt qu’aux individus et sont portés à partager leur autorité avec les élèves en les faisant participer aux choix des règles de vie et aux décisions concernant les affaires internes de la classe. Ils sont enclins par exemple à recourir dans leur classe à l’instauration d’instances démocratiques comme le conseil de coopération.";
  "Accent sur la pédagogie", "Pour leur part, les tenants d’une gestion de classe centrée sur la pédagogie appuient principalement leur pratique sur la conception voulant qu’une bonne planification de l’enseignement soit à la base d’une gestion efficace de la classe et que cela encourage les élèves à se comporter de façon convenable. Pour eux, la responsabilité première des enseignantes et des enseignants est de proposer aux élèves des activités d’apprentissage correspondant à leurs acquis, à leurs besoins et à leurs champs d’intérêt, de leur enseigner des stratégies d’apprentissage appropriées et de s’assurer que chacun puisse recevoir de l’aide et réussir.  Ces enseignantes et enseignants accordent généralement beaucoup d’importance au choix et au déroulement des activités d’apprentissage ainsi qu’à la motivation scolaire des élèves.";
  "Intimidation", "Comme pour la composante autorité, l’intimidation repose sur la conception qu’une bonne gestion de classe passe par le contrôle du comportement des élèves. Cependant, au lieu de chercher à atteindre cet objectif en amenant progressivement les élèves à se conformer à leurs attentes, les adeptes de l’intimidation cherchent plutôt à forcer les élèves à leur obéir. Pour ce faire, ils utilisent le sarcasme, la moquerie, la force ou la punition sévère.  Les enseignantes et les enseignants qui privilégient cette composante tentent aussi de « mettre les fauteurs de troubles à leur place dès le départ » en leur faisant perdre la face devant leurs pairs. Ils n’hésitent pas à faire preuve d’une grande sévérité envers les élèves fautifs et leur gestion de classe est habituellement fondée sur la lutte de pouvoir avec les élèves.";
  "Permissivité", "Les adeptes de la permissivité sont d’avis que l’on doit intervenir le moins possible dans le processus de gestion de classe parce que le contrôle inhibe le développement naturel de l’autonomie des élèves. Ces derniers croient en général que leur rôle consiste avant tout à favoriser le développement de l’autonomie et de la libre expression. En conséquence, ces enseignantes et enseignants exercent moins leur autorité et ont tendance à s’en remettre au bon vouloir des élèves.";
  "Socio-émotivité", "Les partisans de la socio-émotivité sont fortement influencés par les idées issues de la psychologie humaniste. Ces enseignantes et enseignants croient qu’une bonne gestion de classe est grandement tributaire de la qualité des relations maître-élèves et qu’en conséquence, leur rôle consiste avant tout à établir et à conserver des relations harmonieuses avec les élèves. Ils ont donc recours par exemple à l’écoute active, à l’empathie, à la thérapie de la réalité et à l’acceptation inconditionnelle. Par ailleurs, ils privilégient la conséquence logique plutôt que la punition comme façon de réagir aux comportements déviants des élèves. Tout comme leurs collègues portés sur les aspects socio-systémiques de la classe, les tenants de la socio-émotivité adoptent un style démocratique de gestion et tendent à associer les élèves aux prises de décisions. Toutefois, ils sont moins enclins à considérer le groupe et privilégient les transactions individuelles. En conséquence, ils préfèrent régler un problème de comportement en privé plutôt que dans le contexte du conseil de classe.";
]

let title = "Questionnaire"
let instructions = "Indiquez votre degré d’accord à chacun des énoncés :"
let results = "Résultats"
let conclusion = "Votre profil indique quelles sont les composantes prédominantes de votre style de gestion de classe. Vous pouvez aussi comparer vos résultats avec ceux de collègues et, ainsi, mieux connaître vos caractéristiques personnelles."
let warning = "Cela dit, les opérations de validation de ce questionnaire n’étant pas encore tout à fait terminées, il est conseillé d’être prudent dans l’interprétation de vos résultats."
