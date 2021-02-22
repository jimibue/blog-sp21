import React from 'react'

const Page = (props) => {
    console.log(props)
    return(
        <div>
            <h1>sdf</h1>
            <a href='/pages'>pages</a>
           <h1>{props.page.title}</h1>
           <h1>id: {props.page.id}</h1>
        </div>
    )
}

export default Page