wordpress_pod
=========
Playbook to add a wordpress pod. Which sets up a  new wordpress site. One pod includes a database container, a wordpress container, and a pod container to allow networking between the containers.

## Variables:
**external_port**  
Port that will be used to connect to this wordpress site 
ie: 8080  

**wordpress_image** 
Wordpress container image  
ie: docker.io/wordpress:6-php8.4-apache  
  
**mysql_image** 
ie: docker.io/mysql:8.0  
  
**site_name**  
ie: testsite  
  
**database_user**  
ie: doug  
  
**database_password**  
ie: passwd  
  
**podman_user**  
ie: podboy
  
**podman_user_uid**  
ie: 1111    

## Default variables that can be overwritten:
**wordpress_image:** docker.io/wordpress:6-php8.4-apache  
**mysql_image:** docker.io/mysql:8.0  
**podman_user:** podboy  
**podman_user_uid:** 1111  

 
## Example useage:
Add site "rolesite" on port 8083 
```yaml
  - name: Test wordpress role
    include_role:
      name: wordpress_pod
    vars:
      external_port: 8083
      site_name: rolesite
      database_user: rolesite
      database_password: potato
```
## Improvements that can be made
- Make pod user have a login shell of /sbin/nologin for tighter security.
- Add .Image quadlets to pull containers images and set the .Image unit as a dependency for the container services. 
- Move daemon reload to a handler
- Set up variables to be able to handle and array. This way you can place the array with multiple sites in host_vars and have a single task loop over each site. 
- Move from volumes to bind mounts and have dev edit files locally and then push to prod. Instead of having to log into the server to edit volume files. 


