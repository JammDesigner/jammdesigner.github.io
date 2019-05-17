const infoNegocios = [
  {
    nombre: "DiverXO",
    especialidad: "Alta cocina",
    platoEstrella: ["Sardinas ahumadas con crema de jalapeños", "Potente kimchi de fresitas de Aranjue", "Carrillera glaseada al jengibre con albahaca, parmesano y trufa"],
    inaugurado: 2007,
    foto: "https://media.timeout.com/images/102600136/380/285/image.jpg"
  },
  {
    nombre: "Kabuki Wellington",
    especialidad: "Restaurante japones",
    inaugurado: 2007,
    platoEstrella: ["Nigiris de huevo frito", "Usuzukuri a la Bilbaína", "Sardinas con Migas Manchegas"],
    foto: "https://media.timeout.com/images/102513343/750/422/image.jpg"
  },
  {
    nombre: "Punto MX",
    especialidad: "Cocina Mexicana Moderna",
    platoEstrella: ["Ceviche de carabineros", "Panuchos de cochinita pibil", "Taco de atún rojo"],
    inaugurado: 2012,
    foto: "https://media.timeout.com/images/101570675/750/422/image.jpg"
  },
      {
    nombre: "DSTAgE",
    especialidad: "Alta cocina",
    platoEstrella: ["Mochi de mole dulce, maíz y tuba", "Tomate garum", "Rosa de pimiento asado"],
    inaugurado: 2014,
    foto: "https://media.timeout.com/images/101810969/750/422/image.jpg"
  },
      {
    nombre: "La Terraza del Casino",
    especialidad: "Mundial",
    platoEstrella: ["Tartar de cigala con caldo de galeras", "Bogavante con panceta glaseada en salsa thai", "Lenguado a la mantequilla negra"],
    inaugurado: 2000,
    foto: "https://media.timeout.com/images/101568823/750/422/image.jpg"
  },
  {
    nombre: "La Tasquita de Enfrente",
    especialidad: "Restaurante español",
    platoEstrella: ["Anchoa del Cantábrico sobre higo a la plancha", "Anguila ligeramente ahumada", "Pochas con chipirones crujientes"],
    inaugurado: 1999,
    foto: "https://media.timeout.com/images/103080654/750/422/image.jpg"
  },
  {
    nombre: "Ramon Freixa",
    especialidad: "Alta cocina",
    platoEstrella: ["Meloso de pato a la royal, piedra de almendra y erizo de mar", "Hamburguesa de pato", "Setas con caldo de jamón"],
    inaugurado: 2015,
    foto: "https://media.timeout.com/images/101563521/750/422/image.jpg"
  },
      {
    nombre: "Lúa",
    especialidad: "Restaurante español",
    platoEstrella: ["Ceviche de pulpo", "Pulpito pequeño a la brasa", "Langostinos en tempura"],
    inaugurado: 2017,
    foto: "https://media.timeout.com/images/105284729/750/422/image.jpg"
  },
      {
    nombre: "El Club Allard",
    especialidad: "Alta cocina",
    platoEstrella: ["Rodaballo entre salicornias", "Rape negro con caldo de las espinas", "Cochinillo confitado de manera tradicional ,con melón y gochu jang"],
    inaugurado: 2018,
    foto: "https://media.timeout.com/images/101570675/750/422/image.jpg"
  },
      {
    nombre: "Lakasa",
    especialidad: "Restaurante español",
    platoEstrella: ["Patatas revolconas con mollejas y papada", "Costilla de vaca asada", "Ensalada de espárragos y pintada en escabeche"],
    inaugurado: 2011,
    foto: "https://media.timeout.com/images/101811067/750/422/image.jpg"
  }
];

function antiguedad(inaugurado) {
  let calcularAntiguedad = new Date().getFullYear() - inaugurado;
  if (calcularAntiguedad == 1) {
    return "Abierto hace un año";
  } else if (calcularAntiguedad == 0) {
    return "Nuevo";
  } else {
    return `Hace ${calcularAntiguedad} años`;
  }
}

function platos(platos) {
  return `
<h4>Platos estrellas</h4>
<ul class="platos-list">
${platos.map(plato => `<li>${plato}</li>`).join("")}
</ul>
`;
}

function plantillaNegocios(negocio) {
  return `
    <div class="restaurante">
    <img class="negocio-foto" src="${negocio.foto}">
    <h2 class="negocio-nombre">${negocio.nombre} <span class="especialidad">(${negocio.especialidad})</span></h2>
    <p><strong>Inaugurado:</strong> ${antiguedad(negocio.inaugurado)}</p>
    ${negocio.platoEstrella ? platos(negocio.platoEstrella) : ""}
    </div>
  `;
}

document.getElementById("app").innerHTML = `
  <h1 class="app-title">Partners (${infoNegocios.length} resulados)</h1>
  ${infoNegocios.map(plantillaNegocios).join("")}
  <p class="footer">Estos ${infoNegocios.length} partners trabajan con nosotros actualmente.</p>
`;
