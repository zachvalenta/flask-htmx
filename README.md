# overview

Demo using [htmx](https://htmx.org/) w/ Flask.

# setup

* __install dependencies__: `poetry install`
* __set env var__: `ln -sf .env.dev .env`
* __run server__: `make srv`
* __hit healthcheck__: `make hc`
* __list all Makefile rules__: `make help`

```Makefile
======================================================================

srv:        start Flask dev server
hc:         hit healthcheck
fmt:        autoformat and lint
venv:       show environment info
deps:       list prod dependencies

======================================================================
```
