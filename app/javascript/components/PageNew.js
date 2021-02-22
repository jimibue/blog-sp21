import React from 'react'

const PageNew = (props) => {
    return(
        <div>
            <h1>Form</h1>
            <a href='/pages'> cancel</a>
            <form action="/pages" method='post'>
                <p>title</p>
                <input name='page[title]' />

                <p>Author</p>
                <input name='page[author]' />

                <p>body</p>
                <textarea name='page[body]' />
                <button type='submit'>add</button>
            </form>
        </div>
    )
}

export default PageNew
