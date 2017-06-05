class Comment extends React.Component {
  render () {
    return (
		<li className='cmmnt'>
			<div className='cmmnt-content'>
				<header><a href='#' className='userlink'> {this.props.comment.name} </a> -
					<span style={{flexDirection: 'row'}}className='pubdate'> posted {<TimeAgo style={{flexDirection: 'row'}} cts={this.props.comment.created_at}/>}</span></header>
				<p className='comment-body'>{this.props.comment.body}</p>
			</div>
		</li>
	);
  }
}


