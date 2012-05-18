# ProjectRazor Policy Base class
# Root abstract
module ProjectRazor
  module PolicyTemplate
    class VMwareHypervisor < ProjectRazor::PolicyTemplate::Base
      include(ProjectRazor::Logging)

      # @param hash [Hash]
      def initialize(hash)
        super(hash)
        @hidden = false
        @template = :vmware_hypervisor
        @description = "Policy for deploying a VMware hypervisor."

        from_hash(hash) unless hash == nil
      end


      def mk_call(node)
        model.mk_call(node, @uuid)
      end


      def boot_call(node)
        model.boot_call(node, @uuid)
      end

    end
  end
end
