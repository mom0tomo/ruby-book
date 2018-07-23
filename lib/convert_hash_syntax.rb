class ConvertHashSyntax
  def show_converted_hash_syntax(old_syntax)
    old_syntax.gsub(/:(\w+) *=> */, '\1: ')
  end
end