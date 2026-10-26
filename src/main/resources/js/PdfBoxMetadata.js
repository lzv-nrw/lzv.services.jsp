/**
* Automatically extracts metadata from a selected PDF file
* and populates the corresponding form fields.
*/
document.addEventListener('DOMContentLoaded', function() {
	const fileInput = document.getElementById('pdffile');
	const filename = document.getElementById('selected-filename');

	const currentFields = {
		title: document.querySelector('[name="title_current"]'),
		author: document.querySelector('[name="author_current"]'),
		subject: document.querySelector('[name="subject_current"]'),
		keywords: document.querySelector('[name="keywords_current"]'),
		creator: document.querySelector('[name="creator_current"]'),
		producer: document.querySelector('[name="producer_current"]')
	};

	fileInput.addEventListener('change', async function() {
		const file = this.files[0];

		filename.textContent = file ? file.name : 'keine Datei ausgewählt';

		const formData = new FormData();
		formData.append('file', file);

		try {
			const response = await fetch('/lzv-api/validate/pdfbox', {
				method: 'POST',
				headers: {
					'Accept': 'application/json'
				},
				body: formData
			});

			if (!response.ok) {
				throw new Error(`HTTP-Fehler: ${response.status}`);
			}

			const result = await response.json();
			const info = result.pdfInfo || {};

			currentFields.title.value = info.title || '';
			currentFields.author.value = info.author || '';
			currentFields.subject.value = info.subject || '';
			currentFields.keywords.value = info.keywords || '';
			currentFields.creator.value = info.creator || '';
			currentFields.producer.value = info.producer || '';

		} catch (error) {
			console.error('Fehler beim Auslesen der PDF-Metadaten:', error);
			alert('Fehler beim Auslesen: ' + error.message);
		}
	});
});