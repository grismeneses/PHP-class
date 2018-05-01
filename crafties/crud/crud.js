;
((d, w, c, j, xhr) => {
  const preload = d.querySelector('.u-preload'),
    message = d.querySelector('.u-message'),
    table = d.querySelector('.CRUD-table'),
    tr = d.getElementById('table-row').content

  function ajaxPOST(req) {
    preload.classList.add('is-active')

    xhr.open(req.method, req.url, true)

    xhr.addEventListener('readystatechange', e => {
      if (xhr.readyState === 4) {

        w.location.hash = '#'
        preload.classList.remove('is-active')
        message.classList.add('is-active')

        if (xhr.status >= 200 && xhr.status < 400) {
          let res = j.parse(xhr.response)
          message.innerHTML = res.data
        } else {
          message.innerHTML = `<b>El servidor NO responde. Error N° ${xhr.status}: <mark>${xhr.statusText}</mark></b>`
        }
        setTimeout(() => w.location.reload(), 1500)
      }
    })

    xhr.send(req.data)
  }

  d.addEventListener('DOMContentLoaded', e => {
    preload.classList.add('is-active')

    xhr.open('GET', './crud.php', true)

    xhr.addEventListener('readystatechange', e => {
      if (xhr.readyState === 4) {
        preload.classList.remove('is-active')
        message.classList.add('is-active')
        //c(xhr)

        if (xhr.status >= 200 && xhr.status < 400) {
          let res = j.parse(xhr.response)
          //c(res)
          if (res.numRows === 0) {
            message.innerHTML = 'No existen datos para la consulta ejecutada'
          } else {
            message.classList.remove('is-active')
            table.classList.add('is-active')

            res.data.forEach(row => {
              //c(row)
              tr.querySelector('.category_id').textContent = row.category_id
                tr.querySelector('.category_name').textContent = row.category_name
                tr.querySelector('.u-edit').dataset.id = row.category_id
                tr.querySelector('.u-edit').dataset.name = row.category_name
                tr.querySelector('.u-delete').dataset.id = row.category_id

                let clone = d.importNode(tr, true)
                table.appendChild(clone)
              });
            }
          } else {
            message.innerHTML = `<b>El servidor NO responde. Error N° ${xhr.status}: <mark>${xhr.statusText}</mark></b>`
          }
        }
      })

      xhr.send()
    })

    d.addEventListener('submit', e => {
      if (e.target.matches('form')) {
        let action
        e.preventDefault()

        if (e.target.matches('.Form-add')) {
          action = 'create'
        } else if (e.target.matches('.Form-edit')) {
          action = 'update'
      } else if (e.target.matches('.Form-delete')) {
        action = 'delete'
      } else {
        action = 'not-action'
      }

      ajaxPOST({
        method: 'POST',
        url: `./crud.php?action=${action}`,
        data: new FormData(e.target)
      })
    }
  })

  d.addEventListener('click', e => {
    if (e.target.matches('.u-edit')) {
      let form = d.querySelector('.Form-edit')
      //c(e.target.dataset)
      form.querySelector('[name="category_name"]').value = e.target.dataset.name
      form.querySelector('[name="category_id"]').value = e.target.dataset.id
    } else if (e.target.matches('.u-delete')) {
      let form = d.querySelector('.Form-delete')
      form.querySelector('[name="category_id"]').value = e.target.dataset.id
      form.querySelector('mark').textContent = e.target.dataset.id
    } else if (e.target.matches('[type="reset"')) {
      let form = d.querySelector('.Form-delete')
      form.reset()
      w.location.hash = '#'
    }
  })
})(document, window, console.log, JSON, new XMLHttpRequest());