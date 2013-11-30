require 'facter' 

Facter.add(:xm_ram) do 
    setcode do 
        Facter::Util::Resolution.exec("xm info | grep 'free_memory' | awk '{print $3}'")
    end 
end