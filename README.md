# WIP
Just killing some spare time. This has tons of work to do. 

# mirotalk-helm-chart
Helm chart wrap for awesome MiroTalk applications

This is just a helm chart that I personally use to deploy Mirotalk applications

Please visit author's work at https://github.com/miroslavpejic85

# How to use this chart
To use this Helm chart, follow these steps:

1. **Add the Helm Repository**  
    Add the repository to your Helm configuration:
    ```bash
    helm repo add mirotalk https://your-helm-repo-url
    helm repo update
    ```

2. **Install the Chart**  
    Install the chart with a release name of your choice:
    ```bash
    helm install my-release mirotalk/mirotalk-helm-chart
    ```

3. **Customize the Installation**  
    To customize the installation, create a `values.yaml` file and override the default values:
    ```yaml
    common:
    redirectUrl: "https://mybest.site"
    web:
      enabled: false
    p2p:
      enabled: true
      ingress:
        enabled: true
        host: "myp2p.site"
    sfu:
      enabled: false
    c2c:
      enabled: false
    bro:
      enabled: false
    ```
    Then install the chart using your custom values:
    ```bash
    helm install my-release mirotalk/mirotalk-helm-chart -f values.yaml
    ```

4. **Upgrade the Chart**  
    To apply changes or update the chart, use:
    ```bash
    helm upgrade my-release mirotalk/mirotalk-helm-chart -f values.yaml
    ```

5. **Uninstall the Chart**  
    To remove the release, run:
    ```bash
    helm uninstall my-release
    ```

For more details, refer to the [Helm documentation](https://helm.sh/docs/).


# Diving into MiroTalk Projects:

<details>
<summary>MiroTalk P2P</summary>

<br/>

Try also [MiroTalk P2P](https://github.com/miroslavpejic85/mirotalk) `peer to peer` real-time video conferences, optimized for small groups. `Unlimited time, unlimited concurrent rooms` each having 5-8 participants.

</details>


<details>
<summary>MiroTalk SFU</summary>

<br>

Try also [MiroTalk SFU](https://github.com/miroslavpejic85/mirotalksfu) `selective forwarding unit` real-time video conferences, optimized for large groups. `Unlimited time, unlimited concurrent rooms` each having 8+ participants, up to ~ 100 per single CPU.

</details>

<details>
<summary>MiroTalk C2C</summary>

<br>

Try also [MiroTalk C2C](https://github.com/miroslavpejic85/mirotalkc2c) `peer to peer` real-time video conferences, optimized for cam 2 cam. `Unlimited time, unlimited concurrent rooms` each having 2 participants.

</details>

<details>
<summary>MiroTalk BRO</summary>

<br>

Try also [MiroTalk BRO](https://github.com/miroslavpejic85/mirotalkbro) `Live broadcast` (peer to peer) live video, audio and screen stream to all connected users (viewers). `Unlimited time, unlimited concurrent rooms` each having a broadcast and many viewers.

</details>

<details>
<summary>MiroTalk WEB</summary>

<br>

Try also [MiroTalk WEB](https://github.com/miroslavpejic85/mirotalkwebrtc) a platform that allows for the management of an `unlimited number of users`. Each user must register with their email, username, and password, after which they gain access to their `personal dashboard`. Within the dashboard, users can `manage their rooms and schedule meetings` using the desired version of MiroTalk on a specified date and time. Invitations to these meetings can be sent via email, shared through the web browser, or sent via SMS.

</details>