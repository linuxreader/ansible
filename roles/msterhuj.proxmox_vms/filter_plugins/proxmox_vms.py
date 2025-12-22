# custom_filters.py

class FilterModule(object):
    def filters(self):
        return {
            'convert_to_ipconfig': self.convert_to_ipconfig,
            'filter_ipconfig': self.filter_ipconfig,
        }

    def convert_to_ipconfig(self, proxmox_interface: list[dict]) -> dict[str, str]:
        # Convert the ipconfig string to a dictionary
        ipconfig_dict = {}
        for interface in proxmox_interface:
            ipconfig = interface.get('ipconfig')
            interface_name = interface.get('name').replace('net', 'ipconfig')
            if ipconfig:
                ipconfig_dict[interface_name] = ipconfig
        return ipconfig_dict

    def filter_ipconfig(self, proxmox_vm_info: dict) -> dict[str, str]:
        """
        :param proxmox_vm_info: The proxmox vm info dictionary from the proxmox_vm_info lookup plugin
        :return: A dictionary containing only the ipconfig information
        """
        return {
            key: value for key, value in proxmox_vm_info.items()
                if 'ipconfig' in key
        }
