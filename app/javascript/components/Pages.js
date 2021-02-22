import React from 'react'
 
const Pages = (props) => {
    const renderPages = () =>{
        return props.pages.map( page => {
            return (
                <div className="page-container">
                    <h1>{page.title}</h1>
                    <p>{page.author}</p>
                    <p>id: {page.id}</p>
                    <a href={`/pages/${page.id}`}>view</a>
                    <hr/>
                    <p>{page.body}</p>
                 </div>   
            )
        })
    }


    return(
        <div>
            <h1>Pages</h1>
            <a href='/pages/new'> new page form</a>
            {renderPages()}
        </div>   
    )
}

export default Pages