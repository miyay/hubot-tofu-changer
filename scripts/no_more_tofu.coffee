# Description:
#   Mac版のエージェントで発生する豆腐を人間語に翻訳しなおします
#
# Author:
#   miyay

exec = require('child_process').exec

module.exports = (robot) ->
  robot.hear /.*/, (msg) ->
    exec "ruby -e 'puts [%q(#{msg.message.text}).unpack(%(H*)).first.each_char.each_slice(2).map(&:join).map{|a| a == %(08) ? nil : a}.tap{|t| exit if t.all?}.join].pack(%(H*))'", (error, stdout, stderr) ->
      if stdout
        data =
          content:
            text: stdout
            mrkdwn_in: ["text"]
          channel: msg.envelope.room
          username: "tofu_changer"
          icon_emoji: ":black_medium_square:"
        robot.emit "slack.attachment", data
