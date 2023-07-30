import EditorJS from '@editorjs/editorjs';
import {Controller} from "@hotwired/stimulus";
import Header from '@editorjs/header'
import List from '@editorjs/list'
import SimpleImage from '@editorjs/simple-image'
import Button from 'editorjs-button'

export default class extends Controller {
    connect() {
        this.contentInput = document.querySelector('[name="screen[content]"]')
        this.buildEditor()
        this.registerEvents()
    }

    buildEditor() {
        this.editor = new EditorJS({
            placeholder: 'Make something epic!',
            tools: {
                header: Header,
                list: List,
                image: SimpleImage,
                button: Button
            },
            data: this.contentInput.value !== '' ? JSON.parse(this.contentInput.value) : null
        })
    }

    registerEvents() {
        const screenForm = document.querySelector('#screen-form')
        screenForm.addEventListener('submit', (e) => {
            e.preventDefault()

            this.editor
                .save()
                .then((outputData) => {
                    this.contentInput.value = JSON.stringify(outputData)
                    screenForm.submit()
                })
                .catch((error) => {
                    alert('Something went wrong. Please try again.')
                })
        })
    }
}