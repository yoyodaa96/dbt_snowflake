**🚀 Pipeline Data Moderne avec Snowflake, dbt et Apache Airflow
🎯 Objectif du projet*

Ce projet illustre la mise en place d’un pipeline de données moderne de bout en bout.
L’objectif était de transformer des données brutes issues de fichiers CSV (commandes, clients et livraisons) en informations exploitables au sein de Snowflake, à l’aide de dbt pour la transformation et Apache Airflow pour l’orchestration automatisée.

🧩 Architecture globale

Le flux de données suit une architecture ELT (Extract, Load, Transform) :

Les fichiers CSV sont chargés dans Snowflake, dans un schéma “RAW”.

Les modèles dbt effectuent les transformations et alimentent un schéma “ANALYTICS”.

Apache Airflow orchestre et automatise l’exécution quotidienne du pipeline.

En résumé :
CSV → Snowflake (RAW) → dbt (Transformations) → Snowflake (ANALYTICS) → Airflow (Automation)

❄️ Snowflake

Snowflake héberge les données tout au long du cycle :

Le schéma RAW stocke les données brutes importées depuis les CSV.

Le schéma ANALYTICS contient les vues finales prêtes pour l’analyse, issues des modèles dbt.

Les tables concernent les entités principales : clients, commandes et livraisons.

🧱 dbt (Data Build Tool)

dbt assure la transformation des données avec une logique SQL modulaire et réutilisable.
Les modèles de transformation relient les commandes aux clients et aux livraisons pour détecter notamment les commandes en retard.
Le résultat est une vue analytique claire dans Snowflake, actualisable à chaque exécution du pipeline.

🕓 Apache Airflow

Airflow automatise et planifie les exécutions de dbt.
Chaque jour, un DAG déclenche les modèles dbt, contrôle leur exécution et consigne l’état du pipeline.
Cette étape permet d’obtenir un pipeline entièrement automatisé et supervisé.

📊 Résultat

À la fin de chaque exécution :

Les données brutes sont transformées en indicateurs prêts à l’emploi.

Les retards de livraison sont détectés automatiquement.

Les transformations s’exécutent de manière planifiée sans intervention manuelle.

Ce projet montre concrètement comment combiner Snowflake, dbt et Airflow pour créer un pipeline scalable, maintenable et automatisé, parfaitement représentatif d’un environnement data moderne.
