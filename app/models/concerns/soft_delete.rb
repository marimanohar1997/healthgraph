module SoftDelete

  def self.included(base)
    base.scope :not_deleted, -> { base.where(deleted: false) }
    base.send(:default_scope) { base.not_deleted }
    base.scope :only_deleted, -> { base.unscope(where: :deleted).where(deleted: true) }
    base.scope :destroy_fully, -> { base.where(deleted: nil) }


    def delete
      update deleted: true
    end

    def recover
      update deleted: false
    end

    def destroy_fully
      update deleted: nil
    end

  end

  
end