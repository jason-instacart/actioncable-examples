class CommentsChannel < ApplicationCable::Channel
  def follow(data)
    stop_all_streams
    stream_from "messages:#{data['message_id'].to_i}:comments"
  end

  def unfollow
    stop_all_streams
  end

  def comment(data)
    message = Message.find(data["message_id"].to_i)
    user = User.find(data["user_id"].to_i)
    Comment.create!(content: data["content"], message: message, user: user)
  end
end
