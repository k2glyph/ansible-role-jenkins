# Ansible role: eriklotin.jenkins
This role installs Docker and run jenkins container.

# Install
```
ansible-galaxy install eriklotin.jenkins
```
or install locally:
```yaml
ansible-galaxy install eriklotin.jenkins -p ./roles/
```

# Variables

List of system users which will be added to docker system group.
```yaml
docker_users: []
```

Working directory. `jenkins` in home directory by default. Will created by role.
```yaml
jenkins_workdir: "{{ ansible_env.HOME }}/jenkins"
```

Port for access to Jenkins.
```yaml
jenkins_port: 8080
```

# Example playbook

```yaml
- hosts: all

  vars:
    - docker_users: ["ubuntu"]
    - jenkins_port: 80

  roles:
    - role: eriklotin.jenkins
```

# Dependencies

This role uses [eriklotin.docker](https://github.com/eriklotin/ansible-role-docker) role to install Docker 
and do post-install tasks.


# License
MIT. See `LICENSE` file.

# Author
Created in 2019-02 by [Erik Lotin](https://github.com/eriklotin).