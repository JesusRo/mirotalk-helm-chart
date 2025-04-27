{{/* Define config.js file */}}
{{- define "web.config" -}}
'use strict';
module.exports = {
    Language: 'en', // https://en.wikipedia.org/wiki/List_of_ISO_639_language_codes
    App: {
        Name: {{ .Values.web.config.name | quote }},
        Logo: {{ .Values.web.config.logo | quote }},
    },
    OG: {
        type: 'app-webrtc',
        siteName: 'MiroTalk WebRTC',
        title: 'Click the link to schedule the Meeting',
        description: 'MiroTalk WEB Easy Room Scheduler for Meetings & Video Conferencing.',
        image: 'https://webrtc.mirotalk.com/Images/mirotalk-bro.png',
        url: 'https://webrtc.mirotalk.com',
    },
    Author: {
        Email: 'miroslav.pejic.85@gmail.com',
        Profile: 'https://www.linkedin.com/in/miroslav-pejic-976a07101/',
        Support: 'https://github.com/sponsors/miroslavpejic85',
    },
    MiroTalk: {
        P2P: {
            Visible: {{ .Values.p2p.enabled }},
            Label: {{ .Values.p2p.config.label | quote }},
            Home: '{{ include "p2p.url" . }}',
            Room: '{{ include "p2p.url" . }}/newcall',
            Join: '{{ include "p2p.url" . }}/join/',
            GitHub: {
                Visible: '{{- .Values.web.config.github.visible -}}',
                Repo: 'https://github.com/miroslavpejic85/mirotalk',
                Star: 'https://github.com/miroslavpejic85/mirotalk/stargazers',
                Shields: 'https://img.shields.io/github/stars/miroslavpejic85/mirotalk?style=flat',
            },
        },
        SFU: {
            Visible:  {{ .Values.sfu.enabled }},
            Protected: false, // host_protected or user_auth enabled
            Label: {{ .Values.sfu.config.label | quote }},
            Home: '{{ include "sfu.url" . }}',
            Room: '{{ include "sfu.url" . }}/newroom',
            Join: '{{ include "sfu.url" . }}/join/',
            GitHub: {
                Visible: '{{- .Values.web.config.github.visible -}}',
                Repo: 'https://github.com/miroslavpejic85/mirotalksfu',
                Star: 'https://github.com/miroslavpejic85/mirotalksfu/stargazers',
                Shields: 'https://img.shields.io/github/stars/miroslavpejic85/mirotalksfu?style=flat',
            },
        },
        C2C: {
            Visible:  {{ .Values.c2c.enabled }},
            Label: {{ .Values.c2c.config.label | quote }},
            Home: '{{ include "c2c.url" . }}',
            Room: '{{ include "c2c.url" . }}/?room=',
            GitHub: {
                Visible: '{{- .Values.web.config.github.visible -}}',
                Repo: 'https://github.com/miroslavpejic85/mirotalkc2c',
                Star: 'https://github.com/miroslavpejic85/mirotalkc2c/stargazers',
                Shields: 'https://img.shields.io/github/stars/miroslavpejic85/mirotalkc2c?style=flat',
            },
        },
        BRO: {
            Visible:  {{ .Values.bro.enabled }},
            Label: {{ .Values.bro.config.label | quote }},
            Home: '{{ include "bro.url" . }}',
            Broadcast: '{{ include "bro.url" . }}/broadcast?id=',
            Viewer: '{{ include "bro.url" . }}/viewer?id=',
            GitHub: {
                Visible: '{{- .Values.web.config.github.visible -}}',
                Repo: 'https://github.com/miroslavpejic85/mirotalkbro',
                Star: 'https://github.com/miroslavpejic85/mirotalkbro/stargazers',
                Shields: 'https://img.shields.io/github/stars/miroslavpejic85/mirotalkbro?style=flat',
            },
        },
    },
    HTML: {
        support: true,
        profile: true,
        projects: true,
        //...
    },
    BUTTONS: {
        setRandomRoom: true,
        copyRoom: true,
        shareRoom: true,
        sendEmail: true,
        sendSmSInvitation: true,
        joinInternal: true,
        joinExternal: true,
        updateRow: true,
        delRow: true,
    },
};
{{- end -}}