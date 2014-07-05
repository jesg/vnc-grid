
module VNC
  module Worker
    @queue = :vnc
    @display = ENV['DISPLAY']
    @work_dir = "#{File.expand_path(Dir.pwd)}/worker#{@display}"

    def self.perform(file_sync_cmd, exec_cmd)

      system "
        rm -rf #{@work_dir}/*;\
        cd #{@work_dir};\
        #{file_sync_cmd};\
        bundle install;\
        cd #{@work_dir};\
        #{exec_cmd}"
    end
  end
end

