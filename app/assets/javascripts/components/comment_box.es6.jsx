class CommentBox extends React.Component {
  render () {
    return (
		<div id='container'>
			<ul id='comments'>
				{this.props.comments.map((cmmnt) =>
					<Comment comment={cmmnt} key={cmmnt.id}/> )}

			</ul>
		</div>
	);
  }
}


