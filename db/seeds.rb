User.create name: 'Admin', status: :active, kind: :admin, email: 'admin@reembolso.com', password: 123456, agency: '100-01', account: '123-21', cpf: '100.257.268-10', bank: 'Itau'
User.create name: 'Administrative', status: :active, kind: :administrative, email: 'administrative@reembolso.com', password: 123456, agency: '100-51', account: '123-51', cpf: '100.257.268-20', bank: 'BB'
User.create name: 'Manager', status: :active, kind: :manager, email: 'manager@reembolso.com', password: 123456
User.create name: 'General', status: :active, kind: :general, email: 'general@reembolso.com', password: 123456
