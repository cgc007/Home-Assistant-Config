This is my Home Assistant Config. There are many like it, but this one is mine.

{%- set data = namespace(domains=[]) %}
{%- for state in states %}
{%- if state.domain not in data.domains %}
{%- set data.domains = data.domains + [state.domain] %}
{%- endif %}
{%- endfor %}
{%- for domain in data.domains %}
Entities in the [`{{domain}}`](https://www.home-assistant.io/components/{{domain}}) domain | {{states[domain] | count }}
{%- endfor %}
Total state objects | {{ states | count }}