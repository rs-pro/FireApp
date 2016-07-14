module EventMachine
  module WebSocket
    module Close05
      def close_websocket(code, body)
        # TODO: Ideally send body data and check that it matches in ack
        send_frame(:close, "\x53")
        @state = :closing
      end
    end
  end
end
