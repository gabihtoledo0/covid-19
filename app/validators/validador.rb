class IncriveisValidator < ActiveModel::Validator
  def validate(record)
        if record.cep == ""
            record.errors[:cep] << "não pode ser nulo."
        end

        if record.password && !record.password.match(/(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W+).*$/)
            record.errors[:password] << "deve conter um caractere especial, uma letra maiúscula, uma letra minúscula e um número."
        end

        if !record.email.match(/\A[^@\s]+@/);
            record.errors[:email] << "deve ser no formato 'exemplo@exemplo.com.br'."
        end

        if !record.name.match(/\A[[:alpha:][:blank:]]+\z/)
            record.errors[:name] << "deve conter apenas letras e espaços."
        end

        if !record.last_name.match(/\A[[:alpha:][:blank:]]+\z/)
            record.errors[:last_name] << "deve conter apenas letras e espaços."
        end

        unless record.idade > 10 && record.idade < 100
            record.errors[:idade] << "Idade inválida"
        end
    end
end

