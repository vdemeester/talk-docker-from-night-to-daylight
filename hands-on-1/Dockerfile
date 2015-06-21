# Image de base
FROM java:7
# Qui est le responsable de cette image
MAINTAINER Vincent Demeester <vincent.demeester@zenika.com>

# Install elasticsearch
# 1. Récupérer elasticsearch
# 2. L'extraire à l'endroit souhaité
# 3. Supprimer l'archive récupérer (pour gagner de la place)
ENV ES_VERSION 1.4.2
# Try 2 methods : multiple lines, one-line
RUN \
    cd / && \
    wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$ES_VERSION.tar.gz && \
    tar xvzf elasticsearch-$ES_VERSION.tar.gz && \
    rm -f elasticsearch-$ES_VERSION.tar.gz && \
    mv /elasticsearch-$ES_VERSION /elasticsearch

# Installer un plugin elasticsearch, par example
# - http://mobz.github.io/elasticsearch-head/
# - https://github.com/uberVU/elasticsearch-river-github
RUN /elasticsearch/bin/plugin --install mobz/elasticsearch-head
RUN /elasticsearch/bin/plugin --install com.ubervu/elasticsearch-river-github/1.7.1

# Ajouter votre configuration elasticsearch
ADD elasticsearch.yml /elasticsearch/config/elasticsearch.yml

# Expose les ports souhaités (9200, 9300)
EXPOSE 9200
EXPOSE 9300

# Le dossier de travail
WORKDIR /data

# La commande par défaut
CMD ["/elasticsearch/bin/elasticsearch"]
