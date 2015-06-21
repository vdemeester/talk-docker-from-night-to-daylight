# "Simple" Use cases

![](ressources/image-utile.png)




## Isolate build

- Language stack & build images
    - Build tools inside images
- "Separation of concern"
    - Jenkins & slaves just have to have Docker install
    - Dev & Continuous integration are based on the same image for the *build*
- Developers have a better "hand" on the *build*


Notes :
- build container
- Language stack
- Jenkins/CI



## Development environment setup

- External service dependencies externalized and isolated on dev' machines
    - No need to install and configure them on the machine, just ``pull`` it
- Centralize specific configurations and distribute them across developers
    - Same for all
    - Provided by ops, real close to production (if no docker in production)
- Easy to switch stack (from a project to another)
    - ``docker stop``, ``docker run``
- Again, continuous integration is a blast

Notes :
- External services (ActiveMQ, ..), pas besoin de les installer sur le
  poste de dev.




## Tests in a different environment

- What if I wanna.. :
    - .. try if my app. runs on the latest Ruby version
        - ``docker […] run ruby:2.1.5 […]``
    - .. validate that my app. is building under Java 6
    - .. validate that my app. is still compatible with a specific MySQL version (5.6)
    - .. validate that my app. is *scalable*, by running a bunch of them
    - .. try out things like gitlab, kanboard, a node.js application ``xD``

- And all of this without ``ruby``, ``java``, ``node``, ``mysql``, ``insert your stack here`` installed on your laptop



## Continuous delivery

![](ressources/continuous-deployment-pipeline.png)

- Build the image first (CI), use the **same** image for the rest of the pipeline<br/>*Build once, run everywhere*
- Easy, fast and simple to create instances
- Encourages collaboration between Dev and Ops

Notes :
- Explain the :
  - checkout, build, dev, build, dev, …
  - commit, ci build, cd pipelines tests …
  - deploy (blue/green deployment)



## For the fun : no more package manager

- [Willy Wonka of Containers](https://www.youtube.com/watch?v=GsLZz8cZCzc&list=PLcHZXHMeDzxUhStxW31CtiMcCbrgfrzuH&index=1) by [Jessie Frazelle](https://jessfraz.com/)
- You want chrome ? there an image for that : ``docker run jess/chrome``
- You want spotify ? there an image for that : ``docker run --device /dev/snd […] jess/spotify``.
- You want to run IntelliJ ? you can create an image for that.
<br /><br /><br />

![](ressources/giphy_minions2.gif)
