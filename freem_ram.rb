require 'facter'

Facter.add(:freem_ram) do
    setcode do
        Facter::Util::Resolution.exec("free -m | grep Mem | awk '{print $4}'")
    end
end