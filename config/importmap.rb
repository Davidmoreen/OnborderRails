# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@editorjs/editorjs", to: "https://ga.jspm.io/npm:@editorjs/editorjs@2.27.2/dist/editorjs.mjs"
pin "@editorjs/header", to: "https://ga.jspm.io/npm:@editorjs/header@2.7.0/dist/bundle.js"
pin "@editorjs/list", to: "https://ga.jspm.io/npm:@editorjs/list@1.8.0/dist/bundle.js"
pin "@editorjs/simple-image", to: "https://ga.jspm.io/npm:@editorjs/simple-image@1.5.1/dist/bundle.js"
pin "editorjs-button", to: "https://ga.jspm.io/npm:editorjs-button@1.0.4/dist/bundle.js"
