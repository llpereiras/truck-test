Contact.create(name: 'Carlos', phone: '(11) 98765-4321')
Vehicle.create(type:  Vehicle.types[:truck], body_type: Vehicle.body_types[:bau])
Vehicle.create(type:  Vehicle.types[:truck], body_type: Vehicle.body_types[:sider])
Origin.create( city: 'São Paulo', state: 'SP', load_at: '2017-09-25')
Destination.create( city: 'Goiânia', state: 'GO', deliver_at: '2017-09-29' )


