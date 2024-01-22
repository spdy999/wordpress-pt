---
id: fbc8aae3-c7d9-4aa0-a95f-9ad0548d8a1a
---

# Hacking WordPress - WordPress User Roles
#Omnivore

[Read on Omnivore](https://omnivore.app/me/hacking-word-press-18c9c8ccb89)
[Read Original](https://academy.hackthebox.com/module/17/section/57)


---
#### Hacking WordPress 

## WordPress User Roles

---

There are five types of users in a standard WordPress installation.

| Role          | Description                                                                                                                                            |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Administrator | This user has access to administrative features within the website. This includes adding and deleting users and posts, as well as editing source code. |
| Editor        | An editor can publish and manage posts, including the posts of other users.                                                                            |
| Author        | Authors can publish and manage their own posts.                                                                                                        |
| Contributor   | These users can write and manage their own posts but cannot publish them.                                                                              |
| Subscriber    | These are normal users who can browse posts and edit their profiles.                                                                                   |

Gaining access as an administrator is usually needed to obtain code execution on the server. However, editors and authors might have access to certain vulnerable plugins that normal users do not.

##### My Workstation
