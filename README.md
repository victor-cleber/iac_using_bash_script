
<p align="center">
  <a href="#IaC">IaC</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#Project">Project</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#memo-license">License</a>
</p>

## 💻 IaC

<p align="justify">Infrastructure as code (IaC) is the definition of managing and provisioning computer resources through configuration files rather than physical hardware configuration. With IaC, you can configure files that include the specifications of your infrastructure, facilitating the edition and distribution of your environment configurations. It also ensures that you provide the same environment every time.</p>
<p align="justify">All configuration files must belong to the source like any other software source code. By deploying the infrastructure as code, you can organize your code into modules and combine them in different ways through automation.</p>
<p align="justify">This way, by automating IaC provisioning, developers don't have to manually provision and manage servers, operating systems, storage, and other infrastructure components every time they build or deploy an application.</p>

## 🚀 Project

<p align="left">[X] Create a VM</p>
<p align="left">[X] All provisioning must be done in a bash script-type file</p>
<p align="left">[X] The user root will be the owner of all created directories</p>

DIRECTORIES  | GROUPS     | USERS
-------------|------------|--------
/public      | all groups | all users
/adm         | GRP_ADM    | carlos, debora, josefina
/ven         | GRP_VEN    | maria, sebastiana, amanda
/sec         | GRP_SEC    | joao, roberto, rogerio

<p align="left">[X] All users have full permissions on the public directory</p>


| user                                    |    /public | /adm | /ven |  /sec
|-----------------|-----------------|-----------------|-----------------|-----------------|
root | owner | owner | owner | ownner   
GRP_ADM (carlos, debora, josefina)| w, r, x |w, r, x | 
GRP_VEN  (josefina, sebastiana, amanda) | w, r, x| | w, r, x|
GRP_SEC (joao, roberto, rogerio) | w, r, x|||                             w, r, x

<p align="left">[X] Users of each group have full permissions within the respective directory referring to the department they are part of</p>
<p align="left">[X] An user cannot read, write or execute permissions on directories of departments that they do not belong to</p>
<p align="left">[X] Tag <a href="www.linkedin.com/in/denilsonbonatti">Denilson</a> on Linkedin</p>

## :memo: License

This project is under an GNU General Public License v3.0. See more details in [LICENSE](LICENSE) for more information.

---
