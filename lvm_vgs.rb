require 'facter' 

Facter.add(:lvm_vgs) do 
    setcode do 
        Facter::Util::Resolution.exec("vgs --units G | grep vg | awk '{print $7}' | awk -F '.' '{print $1}'")
    end 
end