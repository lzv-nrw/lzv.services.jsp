/**
* Loads the available tools from the API and displays their informations.
*/
document.addEventListener("DOMContentLoaded", function() {
	const container = document.getElementById("tools-container");

	fetch("/lzv-api/tools", {
		headers: {
			"Accept": "application/json"
		}
	})
		.then(response => {
			if (!response.ok) {
				throw new Error("HTTP-Fehler: " + response.status);
			}
			return response.json();
		})
		.then(tools => {
			container.replaceChildren();

			tools.forEach(tool => {

				// Tool heading
				const heading = document.createElement("div");
				heading.className = "contentHeading";
				heading.textContent = tool.name;
				container.appendChild(heading);

				// List with Informations
				const list = document.createElement("ul");

				const version = document.createElement("li");
				version.textContent = "Version: " + tool.version;
				list.appendChild(version);


				if (Object.hasOwn(tool, "website")) {
					const website = document.createElement("li");
					website.append("Website: ");

					const websiteLink = document.createElement("a");
					websiteLink.href = tool.website;
					websiteLink.textContent = tool.website;
					websiteLink.target = "_blank";
					websiteLink.rel = "noopener noreferrer";
					websiteLink.setAttribute("data-linktype", "external");

					website.appendChild(websiteLink);
					list.appendChild(website);
				}

				if (Object.hasOwn(tool, "github")) {
					const github = document.createElement("li");
					github.append("GitHub: ");

					const githubLink = document.createElement("a");
					githubLink.href = tool.github;
					githubLink.textContent = tool.github;
					githubLink.target = "_blank";
					githubLink.rel = "noopener noreferrer";
					githubLink.setAttribute("data-linktype", "external");

					github.appendChild(githubLink);
					list.appendChild(github);
				}

				container.appendChild(list);
			});
		})
		.catch(error => {
			console.error("Fehler beim Laden der Werkzeuge:", error);
			container.textContent =
				"Die Werkzeugliste konnte nicht geladen werden.";
		});
});
