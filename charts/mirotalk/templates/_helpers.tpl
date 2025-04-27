{{/* Define p2p url */}}
{{- define "p2p.url" -}}
{{- if .Values.p2p.ingress.tls -}}
https
{{- else -}}
http
{{- end -}}
://
{{- .Values.p2p.ingress.host -}}
{{- end -}}

{{/* Define sfu url */}}
{{- define "sfu.url" -}}
{{- if .Values.sfu.ingress.tls -}}
https
{{- else -}}
http
{{- end -}}
://
{{- .Values.sfu.ingress.host -}}
{{- end -}}

{{/* Define c2c url */}}
{{- define "c2c.url" -}}
{{- if .Values.c2c.ingress.tls -}}
https
{{- else -}}
http
{{- end -}}
://
{{- .Values.c2c.ingress.host -}}
{{- end -}}

{{/* Define bro url */}}
{{- define "bro.url" -}}
{{- if .Values.bro.ingress.tls -}}
https
{{- else -}}
http
{{- end -}}
://
{{- .Values.bro.ingress.host -}}
{{- end -}}