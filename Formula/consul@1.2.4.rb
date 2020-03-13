class ConsulAT124 < Formula
  desc "Tool for service discovery, monitoring and configuration"
  homepage "https://www.consul.io"
  url "https://releases.hashicorp.com/consul/1.2.4/consul_1.2.4_darwin_amd64.zip"
  sha256 "ae6386001cddcc88172acb5ace8002a9fc4474b851509dfec7d03e62ad313a55"

  def install
    bin.install "consul"
  end

  plist_options :manual => "consul agent -dev -advertise 127.0.0.1"

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>KeepAlive</key>
        <dict>
          <key>SuccessfulExit</key>
          <false/>
        </dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
          <string>#{opt_bin}/consul</string>
          <string>agent</string>
          <string>-dev</string>
          <string>-advertise</string>
          <string>127.0.0.1</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>WorkingDirectory</key>
        <string>#{var}</string>
        <key>StandardErrorPath</key>
        <string>#{var}/log/consul.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/consul.log</string>
      </dict>
    </plist>
  EOS
  end

  test do
    assert_match "consul version 1.2.4", shell_output("#{bin}/consul -version", 2)

    fork do
      exec "#{bin}/consul", "agent", "-data-dir", "."
    end
    sleep 3
    system "#{bin}/consul", "leave"
  end
end
