;
((c,d,j xhr) =>{
	const movies = d.getElementById('movies'),
	moviesTemplate = d.getElementById('movies-template').content

	xhr.open('GET', '.js/movies.json', true)
	xhr.addEventListener('load', e =>{
		//c(xhr)
		if(xhr.status >= 200 && xhr.status < 400){

		}else{
			movies.innerHTML = `<b>El servidor NO responde. Error N° ${xhr.status}: <mark>${xhr.statusText}</mark></b>`
		}
	})
	xhr.send()
})(console.log,document,JSON, new XMLHttpRequest());




((c,d,j xhr) =>{
	const shows = d.getElementById('shows'),
	moviesTemplate = d.getElementById('shows-template').content,

	d.addEventListener('DOMContentLoaded', e => {
		xhr.open('GET','http://api.tvmaze.com/shows', true)
		xhr.addEventListener('load', e =>{
			if(xhr.status >= 200 && xhr.status < 400){
				let showsJSON = j.parse(xhr.response)
				c(showsJSON)

				showsJSON.forEach(show => {
					showsTemplate.querySelector('.Show-title').textContent = show.name
					showsTemplate.querySelector('.Show-description').innerHTML=show.summary
					showsTemplate.querySelector('.Show-image').src = show.image.original
					showsTemplate.querySelector('.Show-image').alt = show.name

					let clone = d.importNode(showsTemplate,true)
					shows.appendChild(clone)
				})

			}else{
				shows.innerHTML `<b>El servidor NO responde. Error N° ${xhr.status}: <mark>${xhr.statusText}</mark></b>`
			}

		})
		xhr.send()
	})
})(console.log,document,JSON, new XMLHttpRequest());





/// Genera un buscador //
((c,d,j xhr) =>{
	const shows = d.getElementById('shows-query'),
	showsTemplate = d.getElementById('shows-template').content,
	search = d.getElementById('search')

	search.addEventListener('Keyup', e => {
		xhr.open('GET', `http://api.tvmaze/search/shows?q=${e.target.value}`)
		xhr,addEventListener('readystatechange', e =>{
			//c(xhr)
			if (xhr.readyState === 4) {
				c(xhr)
				let showsJSON = j.parse(xhr.response)

				shows.innerHTML = null

				shows.JSON.forEach(query => {
					//c(query)
					let show = query.show
					showsTemplate.querySelector('.Show-title').textContent = show.name
					showsTemplate.querySelector('.Show-description').innerHTML=show.summary
					showsTemplate.querySelector('.Show-image').src = show.image.original
					showsTemplate.querySelector('.Show-image').alt = show.name
				})
			}
		})
		xhr.send()
	})



})(console.log,document,JSON, new XMLHttpRequest());