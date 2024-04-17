package main

import "net/http"

func (app *application) homeHandler(w http.ResponseWriter, r *http.Request) {
	if r.URL.Path != "/" {
		http.NotFound(w, r)
		return
	}

	data := app.newTemplateData(r)

	app.render(w, r, http.StatusOK, "home.tpl", data)
}
