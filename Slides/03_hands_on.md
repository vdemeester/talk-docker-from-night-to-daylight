# Hands-on n.1

![](ressources/pret-pas-pret.jpg)



## Your mission if you accept it

![](ressources/docker-elasticsearch.png)

- Build a docker image for Elasticsearch, by completing the void
- Start several container from the image you've just created
- Look at the result in your browser




## Tips & tricks before starting

- To start elasticsearch ``bin/elasticsearch``
- ``run`` options
    - ``-v`` (``--volume``) : bind a folder from host to container (``hostFolder:containerFolder``)
    - ``-p`` (``--publish``) : publish a port (``hostPort:containerPort``)
- Several images : bind different ports on the host (9200, 9201, 9202, ..)
- To see elsaticserach nodes : http://127.0.0.1:9200/_plugin/head


Notes :
- Build/images/run/ps/modif/stop/start/run/exec/rm/rmi a partir d'un dockefile
- Elasticsearch in docker (by hands)
    - 2 installations différentes pour voir le mécanisme de cache
    - Mettre des TODO pour qu'ils remplissent


