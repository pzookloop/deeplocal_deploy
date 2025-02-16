<p>docker compose up</p>

if log output can`t find GPU device, install nvidia docker first. And then if find error: Failed to initialize NVML: Unknown Error:<br>
sudo vim /etc/nvidia-container-runtime/config.toml, then changed no-cgroups = false, save
finally: sudo systemctl restart docker
