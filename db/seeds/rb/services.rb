# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "services.rb"))'
puts 'Importing services...'

# Array de servicios de taller mecánico
services = [
    {
      name: "Servicio de Mantenimiento",
      description: "Revisión exhaustiva de los sistemas esenciales del vehículo, incluyendo motor, transmisión y frenos. Incluye cambios de aceite y reemplazo del filtro de aire.",
      price: 150
    },
    {
      name: "Servicio de Afinación",
      description: "Ajustes y reemplazos de componentes del motor, incluyendo bujías y cables de encendido. También se verifica y ajusta la sincronización del motor para mejorar el rendimiento.",
      price: 200
    },
    {
      name: "Servicio de Cambio de Neumáticos",
      description: "Cambio de neumáticos desgastados por nuevos. Incluye balanceo y alineación para una conducción suave y segura.",
      price: 100
    },
    {
      name: "Servicio de Alineado y Balanceo",
      description: "Alineado y balanceo precisos para garantizar un manejo suave y seguro del vehículo. Se ajustan los ángulos de las ruedas y se equilibran para evitar desgaste irregular de los neumáticos.",
      price: 80
    },
    {
      name: "Servicio de Cambio de Aceite y Filtro",
      description: "Cambio de aceite utilizando aceite de alta calidad y reemplazo del filtro de aceite para mantener el motor limpio y lubricado adecuadamente.",
      price: 50
    },
    {
      name: "Servicio de Reparación de Frenos",
      description: "Inspección y reparación de componentes del sistema de frenos, incluyendo pastillas, discos, calibradores y líquido de frenos.",
      price: 180
    },
    {
      name: "Servicio de Cambio de Batería",
      description: "Instalación de una nueva batería de alta calidad y reciclaje responsable de la antigua batería.",
      price: 120
    },
    {
      name: "Servicio de Diagnóstico Electrónico",
      description: "Escaneo completo del sistema electrónico del vehículo para identificar y resolver problemas relacionados con el motor, la transmisión y otros componentes electrónicos.",
      price: 80
    }
  ]
  
  services.each do |service|
    Service.create(service)
  end
  
  puts "Services created!"
  