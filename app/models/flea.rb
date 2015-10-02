class Flea
  include ActiveAttr::Model
  include ActiveModel::Serializers::JSON

  attribute :name
  attribute :color

  #
  # these methods are necessary for avoiding that a record deletion is
  # still appearing in the attributes when the form has been sent to the
  # specific controller
  #
  def marked_for_destruction? ; end

  def new_record? ; true end

  def _destroy ; end
end
