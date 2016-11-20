Flatpak Kubernetes client
=========================

!["Prompt"](https://raw.githubusercontent.com/gbraad/assets/gh-pages/icons/prompt-icon-64.png)


Build wrapper for the [Kubernetes](https://kubernetes.io/) binary as Flatpak application.


Usage
-----

### Prerequisites

```
$ wget https://sdk.gnome.org/keys/gnome-sdk.gpg
$ flatpak --user remote-add --gpg-import=gnome-sdk.gpg gnome http://sdk.gnome.org/repo/
$ flatpak --user install gnome org.freedesktop.Platform 1.4
```


### Install from repo

```
$ flatpak --user remote-add --no-gpg-verify kubernetes-client https://gbraad.gitlab.io/flatpak-kubernetes-client/repo
$ flatpak --user install kubernetes-client nl.gbraad.KubernetesClient
```


### Import bundle   

```
$ wget https://gbraad.gitlab.io/flatpak-kubernetes-client/kubernetes-client.flatpak
$ flatpak install --user --bundle kubernetes-client.flatpak
```


### Run

```
$ alias kubectl='flatpak run nl.gbraad.KubernetesClient'
$ kubectl --server 42.62.93.179:8080 get pods
```


Authors
-------

| [!["Gerard Braad"](http://gravatar.com/avatar/e466994eea3c2a1672564e45aca844d0.png?s=60)](http://gbraad.nl "Gerard Braad <me@gbraad.nl>") |
|---|
| [@gbraad](https://twitter.com/gbraad)  |
