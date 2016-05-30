require 'colorize'

# Configurable
target_ip = '8.8.8.8'     # Use Google DNS Servers
dropped_conn_warning = 1  # Dropped packets before user is alerted
audio_alerts = true        # Alerts to user for dropped connection

# Metrics
packet_status = {dropped: 0, received: 0}
packet_count  = 0
min, max, avg = nil, nil, nil
total_time    = 0.0
packet_loss   = 0.0
losing_streak = 0
worst_streak  = 0

puts "\nStarted #{started = Time.now}\n".bold

def printer(packet_status, min, max, avg, packet_loss, worst_streak, started)
  printf "Duration: %-10s", (Time.now - started).round(2).to_s + 's'
  printf "Received: %-5s Dropped: %-6s", packet_status[:received], packet_status[:dropped]
  printf "tAVG".bold + "=%-10s", avg.to_s + 'ms'
  printf "tMIN".bold + "=%-10s", min.to_s + 'ms'
  printf "tMAX".bold + "=%-10s", max.to_s + 'ms'
  printf "Loss %-10s", packet_loss.to_s + '%'
  printf "Worst Streak: %-20s", worst_streak.to_s + ' dropped packets'
  print ?\n
end

begin
  loop do
    ping_result = `ping -c 2 #{target_ip} | head -n2 | tail -n1`

    if ping_result.start_with? "Request timeout"
      packet_status[:dropped] += 1

      losing_streak += 1
      worst_streak = losing_streak if losing_streak > worst_streak

      if audio_alerts && losing_streak == dropped_conn_warning
        `say "Packet loss of more than #{dropped_conn_warning} packets detected"`
      end

    # Ex => 64 bytes from 8.8.8.8
    elsif /[0-9]/ =~ ping_result[0]
      if audio_alerts && losing_streak >= dropped_conn_warning
        `say "Connection restored"`
      end
      packet_count += 1
      losing_streak = 0

      time = ping_result.split("time=").last.split.first.to_i
      total_time += time

      min = time if min.nil? || time < min
      max = time if max.nil? || time > max
      avg = (total_time/packet_count).round(2)

      packet_status[:received] += 1
    end

    packet_loss = ((packet_status[:dropped].to_f/packet_status.values.inject(:+))*100).round(2)
    printer(packet_status, min, max, avg, packet_loss, worst_streak, started)
    sleep 1
  end
rescue StandardError => e
  # Re-raise exception to catch sigint (ctrl+c)
  raise ctrl_c

rescue Exception => ctrl_c
  puts "---\n"
  printer(packet_status, min, max, avg, packet_loss, worst_streak, started)
  puts "Started #{Time.now}\n"
	puts "Completed #{finished = Time.now}"
	puts "Test Duration #{finished - started}s\n"
end
