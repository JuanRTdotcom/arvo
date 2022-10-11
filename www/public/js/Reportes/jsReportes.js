
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////// VARIABLES ///////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// FUNCIONES  //////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



let obtenerProvincia = async (select) => {
	const mis_provincias = document.getElementById('mis_provincias')
	mis_provincias.innerHTML = '<option value="">Todo provincia</option>'
	const mis_distritos = document.getElementById('mis_distritos')
	mis_distritos.innerHTML = '<option value="">Todo distrito</option>'
	const data = new FormData()
	data.append('dept', select.value)
	listarProvincias(data)
		.then((datos) => {
			// error
			if (!revisionDatos(datos, 'error_select', 3, 'Atención', 'Si no seleccionas un departamento específico, se filtrarán por todos los departamentos, y la consulta podría tardar un poco.')) {
				return
			}
			// success
			const misProvincias = datos.data
			console.log(misProvincias)
			misProvincias.forEach(e => {
				const op = document.createElement('option')
				op.value = e.iCodProv
				op.innerHTML = e.vNombre
				mis_provincias.appendChild(op)
			});
		})
}

let eliminarFicha = (idficha) => {
	Swal.fire({
		title: "¿Deseas eliminar la ficha?",
		text: "La ficha se eliminará permanentemente",
		icon: "question",
		showCancelButton: true,
		confirmButtonColor: "#adadad",
		cancelButtonColor: "#d33",
		confirmButtonText: "Cancelar",
		cancelButtonText: "Sí, eliminar",
	}).then((result) => {
		if (result.dismiss == "cancel") {
			const data = new FormData();
			data.append("idFicha", idficha);
			eliminarFichaVigilancia(data)
				.then((datos) => {
					if (!revisionDatos(datos)) {
						return;
					}
					listarFichas();
				})
				.then((dat) => {
					Swal.fire(
						"Eliminado!",
						"La ficha fue eliminada correctamente",
						"success"
					);
				});
		}
	});
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////// OPCIONES  ///////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var params_tbl_edas_general = {
	responsive: true,
	pageLength: 5,
	lengthMenu: [
		[5, 10, 20, -1],
		[5, 10, 20, 'Todos']
	],
	lengthChange: false,
	info: false,
	// data: null,
	ordering: false,
	dom: 'lrtip',
	language: LenguajeParametros,
    columns : [
        {	
			data: 'id',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Nombre_Establecimiento',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	
			data: 'Nombre_Diresa',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	
			data: 'Negativa',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fecha_Notificacion',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fecha_Inicio_Enfermedad',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fecha_Toma_Muestra',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Año',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Semana',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Responsable_Laboratorio',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Responsable_Epidemiologia',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Dni',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Nombres',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	
			data: 'Apellido_Paterno',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	
			data: 'Apellido_Materno',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Edad',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Tipo_Edad',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Sexo',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Direccion',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Tipo_Via',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Nombre_Via',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Numero_Puerta',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Numero_Manzana',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Lote',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Nombre_Asociacion',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Tipo_Asociacion',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Telefono',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Gestante',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fiebre',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Rash',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Conjuntivitis',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Artralgia',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Mialgia',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Otros',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Otro_Sintoma',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Evaluacion_Paciente',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Area_Captacion',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Diagnostico_Captacion',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Pais',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Departamento',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Provincia',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Distrito',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Localidad',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Tipo_Zona',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Id_Usuario_Registra',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Nombre_usuario_Registra',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fecha_Registro',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
    ]
	
}


var params_tbl_laboratorio_ini = {
	responsive: true,
	pageLength: 5,
	lengthMenu: [
		[5, 10, 20, -1],
		[5, 10, 20, 'Todos']
	],
	lengthChange: false,
	info: false,
	// data: null,
	ordering: false,
	dom: 'lrtip',
	language: LenguajeParametros,
}
var params_tbl_laboratorio_conFichas = {
	responsive: true,
	pageLength: 5,
	lengthMenu: [
		[5, 10, 20, -1],
		[5, 10, 20, 'Todos']
	],
	lengthChange: false,
	info: false,
	// data: null,
	ordering: false,
	dom: 'lrtip',
	language: LenguajeParametros,
	columns : [
		{
			data: 'idPaciente',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Nombre_Establecimiento',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Nombre_Diresa',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Negativa',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Fecha_Notificacion',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Fecha_Inicio_Enfermedad',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Fecha_Toma_Muestra',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Año',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Semana',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Responsable_Laboratorio',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Responsable_Epidemiologia',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Dni',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Nombres',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Apellido_Paterno',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Apellido_Materno',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Edad',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Tipo_Edad',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Sexo',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Direccion',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Tipo_Via',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Nombre_Via',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Numero_Puerta',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Numero_Manzana',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Lote',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Nombre_Asociacion',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Tipo_Asociacion',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Telefono',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Gestante',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Fiebre',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Rash',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Conjuntivitis',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Artralgia',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Mialgia',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Otros',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Otro_Sintoma',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Evaluacion_Paciente',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Area_Captacion',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Diagnostico_Captacion',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Pais',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Departamento',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Provincia',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Distrito',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Localidad',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Tipo_Zona',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Id_Usuario_Registra',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Nombre_usuario_Registra',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
		{
			data: 'Fecha_Registro',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	
			data: 'nroMuestra',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	
			data: 'idMuestra',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Enfermedad',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	
			data: 'Prueba',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	
			data: 'Resultado',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	
			data: 'Serotipo',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fecha_resultado',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fecha_recepcion_LRR',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fecha_envio_INS',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fecha_recepcion_INS',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        
    ]
}

var params_tbl_laboratorio = {
	responsive: true,
	pageLength: 5,
	lengthMenu: [
		[5, 10, 20, -1],
		[5, 10, 20, 'Todos']
	],
	lengthChange: false,
	info: false,
	// data: null,
	ordering: false,
	dom: 'lrtip',
	language: LenguajeParametros,
    columns : [
        {	width:180,
			data: 'nroMuestra',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	width:200,
			data: 'Enfermedad',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	
			data: 'Prueba',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	width:150,
			data: 'Resultado',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	width:70,
			data: 'Serotipo',
			createdCell: function (td, cellData, rowData, row, col) {
				// $(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fecha_resultado',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fecha_recepcion_LRR',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'dias_FechasResultado_y_RecepcionLRR',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fecha_envio_INS',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'Fecha_recepcion_INS',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
		{	
			data: 'idPaciente',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        {	
			data: 'idMuestra',
			createdCell: function (td, cellData, rowData, row, col) {
				$(td).css("text-align", "center");
			},
		},
        
    ]
   
	
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////// APIS - llamdas al servidor ///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



const listarFichasdeVigilancia = (datas) => {
	return new Promise((resolve, reject) => {

		fetch('Reportes/listarFichas', {
				method: 'POST',
				body: datas
			})
			.then(respuesta => respuesta.json())
			.then(datos => {
				resolve(datos);
			})
			.catch(msg => {
				reject(msg)
			})
	})
}

const listarFichasdeVigilancia_filtro = (datas) => {
	return new Promise((resolve, reject) => {

		fetch('Reportes/listarFichasFiltro', {
				method: 'POST',
				body: datas
			})
			.then(respuesta => respuesta.json())
			.then(datos => {
				resolve(datos);
			})
			.catch(msg => {
				reject(msg)
			})
	})
}

const listarFichasdeVigilancia_exportar = (datas) => {
	return new Promise((resolve, reject) => {

		fetch('Reportes/miReporte', {
				method: 'POST',
				body: datas
			})
			.then(respuesta => respuesta.json())
			.then(datos => {
				resolve(datos);
			})
			.catch(msg => {
				reject(msg)
			})
	})
}

const listarLaboratorio_filtro = (datas) => {
	return new Promise((resolve, reject) => {

		fetch('Reportes/listarFichasFiltro_Lab', {
				method: 'POST',
				body: datas
			})
			.then(respuesta => respuesta.json())
			.then(datos => {
				resolve(datos);
			})
			.catch(msg => {
				reject(msg)
			})
	})
}

const eliminarFichaVigilancia = (datas) => {
	return new Promise((resolve, reject) => {

		fetch('Fichas/eliminarFicha', {
				method: 'POST',
				body: datas
			})
			.then(respuesta => respuesta.json())
			.then(datos => {
				resolve(datos);
			})
			.catch(msg => {
				reject(msg)
			})
	})
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// EVENTOS //////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

document.getElementById('buscar_mis_fichas').addEventListener('submit',e => {
	e.preventDefault()
	let btn = document.getElementById('btn_buscarFicha')
	console.log('entra')
	mostrarSpinner(btn)
	const data = new FormData();
	data.append("establecimiento", document.getElementById('mis_establecimientos').value.trim());
	data.append("diresa", document.getElementById('mis_diresas').value.trim());
	data.append("dni", document.getElementById('dni').value.trim());
	data.append("negativa", document.getElementById('negativa').checked?1:0);
	data.append("fecha_notificacion_inicio", document.getElementById('fecha_notificacion').value.substr(0,10));
	data.append("fecha_notificacion_fin", document.getElementById('fecha_notificacion').value.substr(-10));
	data.append("fecha_inicio_enfermedad_inicio", document.getElementById('fecha_inicio_enfermedad').value.substr(0,10));
	data.append("fecha_inicio_enfermedad_fin", document.getElementById('fecha_inicio_enfermedad').value.substr(-10));
	data.append("fecha_muestra_inicio", document.getElementById('fecha_muestra').value.substr(0,10));
	data.append("fecha_muestra_fin", document.getElementById('fecha_muestra').value.substr(-10));
	listarFichasdeVigilancia_filtro(data)
	.then((datos) => {
		$('#tbl_fichas').DataTable().destroy();
		colocarCabeceraParaSoloFichas()		
		$('#tbl_fichas').DataTable(params_tbl_edas_general);
		ocultarSpinner(btn)
		agregarDataBusqueda(datos.data);
	})
})

document.getElementById('buscar_mis_laboratorios').addEventListener('submit',e => {
	e.preventDefault()
	let btn = document.getElementById('btn_buscarLaboratorio')
	console.log('entra')
	mostrarSpinner(btn)
	const data = new FormData();
	data.append("conFichas", document.getElementById('conFichas').checked?1:0);
	data.append("nro_muestra", document.getElementById('nro_muestra').value.trim());
	data.append("mis_enfermedades", document.getElementById('mis_enfermedades').value.trim());
	data.append("mis_pruebas", document.getElementById('mis_pruebas').value.trim());
	data.append("mis_resultados", document.getElementById('mis_resultados').value.trim());
	data.append("mis_serotipos", document.getElementById('mis_serotipos').value.trim());
	data.append("fecha_resultados_inicio", document.getElementById('fecha_resultados').value.substr(0,10));
	data.append("fecha_resultados_fin", document.getElementById('fecha_resultados').value.substr(-10));
	data.append("fecha_recepcion_lrr_inicio", document.getElementById('fecha_recepcion_lrr').value.substr(0,10));
	data.append("fecha_recepcion_lrr_fin", document.getElementById('fecha_recepcion_lrr').value.substr(-10));
	data.append("fecha_envio_ins_inicio", document.getElementById('fecha_envio_ins').value.substr(0,10));
	data.append("fecha_envio_ins_fin", document.getElementById('fecha_envio_ins').value.substr(-10));
	data.append("fecha_recepcion_ins_inicio", document.getElementById('fecha_recepcion_ins').value.substr(0,10));
	data.append("fecha_recepcion_ins_fin", document.getElementById('fecha_recepcion_ins').value.substr(-10));
	
	listarLaboratorio_filtro(data)
	.then((datos) => {
		console.log('milaaab')
		console.log(datos)
		if(document.getElementById('conFichas').checked){
			limpiarTabla('tbl_laboratorio')
			$('#tbl_laboratorio').DataTable().destroy();
			colocarCabeceraParaSoloLabratorioconficha()	
			$('#tbl_laboratorio').DataTable(params_tbl_laboratorio_conFichas);
		}else{
			limpiarTabla('tbl_laboratorio')
			$('#tbl_laboratorio').DataTable().destroy();
			colocarCabeceraParaSoloLabratorio()
			$('#tbl_laboratorio').DataTable(params_tbl_laboratorio);
		}

		ocultarSpinner(btn)
		agregarDataBusquedaLaboratorio(datos.data);
	})
})

document.getElementById('btn_FichaExportar').addEventListener('click',e => {
	e.preventDefault()
	let type = 'Fichas';
	let establecimiento = document.getElementById('mis_establecimientos').value.trim();
	let diresa = document.getElementById('mis_diresas').value.trim();
	let dni = document.getElementById('dni').value.trim();
	let negativa = document.getElementById('negativa').checked?1:0;
	let fecha_notificacion_inicio = document.getElementById('fecha_notificacion').value.substr(0,10);
	let fecha_notificacion_fin = document.getElementById('fecha_notificacion').value.substr(-10);
	let fecha_inicio_enfermedad_inicio = document.getElementById('fecha_inicio_enfermedad').value.substr(0,10);
	let fecha_inicio_enfermedad_fin = document.getElementById('fecha_inicio_enfermedad').value.substr(-10);
	let fecha_muestra_inicio = document.getElementById('fecha_muestra').value.substr(0,10);
	let fecha_muestra_fin = document.getElementById('fecha_muestra').value.substr(-10);

	window.open(`${baseURL}Reportes/Reportes/miReporteFichas?type=${type}&establecimiento=${establecimiento}&diresa=${diresa}&dni=${dni}&negativa=${negativa}&fecha_notificacion_inicio=${fecha_notificacion_inicio}&fecha_notificacion_fin=${fecha_notificacion_fin}&fecha_inicio_enfermedad_inicio=${fecha_inicio_enfermedad_inicio}&fecha_inicio_enfermedad_fin=${fecha_inicio_enfermedad_fin}&fecha_muestra_inicio=${fecha_muestra_inicio}&fecha_muestra_fin=${fecha_muestra_fin}`, '_blank');
})

document.getElementById('btn_exportarLaboratorio').addEventListener('click',e => {
	e.preventDefault()
	let type = 'Laboratorio';
	let conFichas = document.getElementById('conFichas').checked?1:0
	let nro_muestra = document.getElementById('nro_muestra').value.trim()
	let mis_enfermedades = document.getElementById('mis_enfermedades').value.trim()
	let mis_pruebas = document.getElementById('mis_pruebas').value.trim()
	let mis_resultados = document.getElementById('mis_resultados').value.trim()
	let mis_serotipos = document.getElementById('mis_serotipos').value.trim()
	let fecha_resultados_inicio = document.getElementById('fecha_resultados').value.substr(0,10)
	let fecha_resultados_fin = document.getElementById('fecha_resultados').value.substr(-10)
	let fecha_recepcion_lrr_inicio = document.getElementById('fecha_recepcion_lrr').value.substr(0,10)
	let fecha_recepcion_lrr_fin = document.getElementById('fecha_recepcion_lrr').value.substr(-10)
	let fecha_envio_ins_inicio = document.getElementById('fecha_envio_ins').value.substr(0,10)
	let fecha_envio_ins_fin = document.getElementById('fecha_envio_ins').value.substr(-10)
	let fecha_recepcion_ins_inicio = document.getElementById('fecha_recepcion_ins').value.substr(0,10)
	let fecha_recepcion_ins_fin = document.getElementById('fecha_recepcion_ins').value.substr(-10)

	window.open(`${baseURL}Reportes/Reportes/miReporteLaboratorio?type=${type}&conFichas=${conFichas}&nro_muestra=${nro_muestra}&mis_enfermedades=${mis_enfermedades}&mis_pruebas=${mis_pruebas}&mis_resultados=${mis_resultados}&mis_serotipos=${mis_serotipos}&fecha_resultados_inicio=${fecha_resultados_inicio}&fecha_resultados_fin=${fecha_resultados_fin}&fecha_recepcion_lrr_inicio=${fecha_recepcion_lrr_inicio}&fecha_recepcion_lrr_fin=${fecha_recepcion_lrr_fin}&fecha_envio_ins_inicio=${fecha_envio_ins_inicio}&fecha_envio_ins_fin=${fecha_envio_ins_fin}&fecha_recepcion_ins_inicio=${fecha_recepcion_ins_inicio}&fecha_recepcion_ins_fin=${fecha_recepcion_ins_fin}`, '_blank');
})

document.getElementById('btn_limpiarFichaFiltros').addEventListener('click',e => {
	e.preventDefault()
	
			limpiarTabla('tbl_fichas')
			document.getElementById('buscar_mis_fichas').reset()
			$("#mis_establecimientos").select2().val('').trigger("change");
			$("#mis_diresas").select2().val('').trigger("change");
			$("#fecha_notificacion").flatpickr(calendarioConrangos).clear();
			$("#fecha_inicio_enfermedad").flatpickr(calendarioConrangos).clear();
			$("#fecha_muestra").flatpickr(calendarioConrangos).clear();

})

document.getElementById('btn_limpiarLaboratorioFiltros').addEventListener('click',e => {
	e.preventDefault()
			limpiarTabla('tbl_laboratorio')
			document.getElementById('buscar_mis_laboratorios').reset()
			$("#mis_enfermedades").select2().val('').trigger("change");
			$("#mis_pruebas").select2().val('').trigger("change");
			$("#mis_resultados").select2().val('').trigger("change");
			$("#mis_serotipos").select2().val('').trigger("change");
			$("#fecha_resultados").flatpickr(calendarioConrangos).clear();
			$("#fecha_recepcion_lrr").flatpickr(calendarioConrangos).clear();
			$("#fecha_envio_ins").flatpickr(calendarioConrangos).clear();
			$("#fecha_recepcion_ins").flatpickr(calendarioConrangos).clear();


})

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////// INICIALIZACIONES ///////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var formatForSlider = {
    from: function (formattedValue) {
        return Number(formattedValue);
    },
    to: function(numericValue) {
        return Math.round(numericValue);
    }
};

$(document).ready(function () {
	// ══════════════════════════════════════════ 
	// VALOR QUE SE EJECUTA AL INICIAR - DEFECTO
	// ════╦═════════════════════════════════════
	//     ║
	//     ╠═  Automatical started click
	$("#mis_establecimientos").select2({});
	/*     ║  */
	$("#mis_diresas").select2({});
	/*     ║  */
	$("#mis_tipo_via").select2({});
	/*     ║  */
	$("#mis_tipo_asociacion").select2({});
	/*     ║  */
	$("#mis_enfermedades").select2({});
	/*     ║  */
	$("#mis_pruebas").select2({});
	/*     ║  */
	$("#mis_resultados").select2({});
	/*     ║  */
	$("#mis_serotipos").select2({});
	/*     ║  */
	$("#fecha_notificacion").flatpickr(calendarioConrangos);
	/*     ║  */
	$("#fecha_inicio_enfermedad").flatpickr(calendarioConrangos);
	/*     ║  */
	$("#fecha_muestra").flatpickr(calendarioConrangos);
	/*     ║  */
	$("#fecha_resultados").flatpickr(calendarioConrangos);
	/*     ║  */
	$("#fecha_recepcion_lrr").flatpickr(calendarioConrangos);
	/*     ║  */
	$("#fecha_envio_ins").flatpickr(calendarioConrangos);
	/*     ║  */
	$("#fecha_recepcion_ins").flatpickr(calendarioConrangos);
	/*     ║  */

	//     ║
	//     ╚═  Tabla Citas
	/*        */
	$('#tbl_fichas').DataTable(params_tbl_laboratorio_ini);
	$('#tbl_laboratorio').DataTable(params_tbl_laboratorio_ini);
	


})


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////// UTILITIES //////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


const limpiarBodyTabla = () => {
	let mid = document.querySelector('._mi_cuerpo_tabla')
	mid.innerHTML = ''
}

const verCargando = () => {
	let miTexto = document.getElementById('btn_buscar_edas')
	miTexto.setAttribute('disabled', 'disabled')
	miTexto.innerHTML = `
	<div class="loader"></div>	`
}

const ocultarCargando = () => {
	let miTexto = document.getElementById('btn_buscar_edas')
	miTexto.removeAttribute('disabled')
	miTexto.innerHTML = `Buscar`
}

const listarFichas = () => {
	listarFichasdeVigilancia()
	.then(data => {

		if (!revisionDatos(data)) {
			return
		}
		let misFichas = data.data
		console.log(misFichas)
		limpiarTabla('tbl_fichas')
		agregarDataTabla('tbl_fichas',misFichas)


	})
	.catch(error => {
		Mensaje2(0,'Error de sistema','Ok','Hubo un error en el sistema')
	});

}

const agregarDataBusqueda = (misFichas) => {
		limpiarTabla('tbl_fichas')
		agregarDataTabla('tbl_fichas',misFichas)
}

const agregarDataBusquedaLaboratorio = (misMuestras) => {
		limpiarTabla('tbl_laboratorio')
		agregarDataTabla('tbl_laboratorio',misMuestras)
}

function openCity(evt, cityName) {
	var i, tabcontent, tablinks;
	tabcontent = document.getElementsByClassName("tabcontent");
	for (i = 0; i < tabcontent.length; i++) {
	  tabcontent[i].style.display = "none";
	}
	tablinks = document.getElementsByClassName("tablinks");
	for (i = 0; i < tablinks.length; i++) {
	  tablinks[i].className = tablinks[i].className.replace(" active", "");
	}
	document.getElementById(cityName).style.display = "block";
	evt.currentTarget.className += " active";
  }

//   document.getElementById("defaultOpen").click();

  const colocarCabeceraParaSoloFichas = () => {
	let miTabla = document.querySelector('.cv_f')
	miTabla.innerHTML = `
	<th>#</th>
	<th>Establecimiento</th>
	<th>Diresa</th>
	<th class="text-center">Negativa</th>
	<th class="none">Fch Notificación</th>
	<th class="none">Fch Inicio Enf</th>
	<th class="none">Fch Muestra</th>
	<th class="none">Año</th>
	<th class="none">Semana</th>
	<th class="none">Resp Laboratorio</th>
	<th class="none">Resp Epidemiología</th>
	<th >Dni</th>
	<th >Nombres</th>
	<th >Apell Paterno</th>
	<th class="none">Apell Materno</th>
	<th class="none">Edad</th>
	<th class="none">Tipo Edad</th>
	<th class="none">Sexo</th>
	<th class="none">Dirección</th>
	<th class="none">Tipo Vía</th>
	<th class="none">Nombre Vía</th>
	<th class="none">Nro Puerta</th>
	<th class="none">Nro Manzana</th>
	<th class="none">Lote</th>
	<th class="none">Nombre Asociación</th>
	<th class="none">Tipo Asociación</th>
	<th class="none">Teléfono</th>
	<th class="none">Gestante</th>
	<th class="none">Fiebre</th>
	<th class="none">Rash</th>
	<th class="none">Conjuntivitis</th>
	<th class="none">Artralgia</th>
	<th class="none">Mialgia</th>
	<th class="none">Otro</th>
	<th class="none">Otro Síntoma</th>
	<th class="none">Evaluación Paciente</th>
	<th class="none">Área Captación</th>
	<th class="none">Diagnóstico Captación</th>
	<th class="none">País</th>
	<th class="none">Departamento</th>
	<th class="none">Provincia</th>
	<th class="none">Distrito</th>
	<th class="none">Localidad</th>
	<th class="none">Tipo Zona</th>
	<th class="none">Usuario registra</th>
	<th class="none">Nombre Usuario registra</th>
	<th class="none">Fech registro</th>
	`
}
  const colocarCabeceraParaSoloLabratorio = () => {
	let miTabla = document.querySelector('.cv_l')
	miTabla.innerHTML = `<th>Nro Muestra</th>
	<th class="">Enfermedad</th>
	<th class="">Prueba</th>
	<th class="">Resultado</th>
	<th class="">Serotipo</th>
	<th class="text-center none">Fch Resultado</th>
	<th class="text-center none">Fch Recepcion LRR</th>
	<th class="text-center none">Dias F.Res - F.LRR</th>
	<th class="text-center none">Fch Envio INS</th>
	<th class="text-center none">Fch Recepcion INS</th>
	<th class="text-center none">Id_Paciente</th>
	<th class="text-center none">Id_Muestra</th>`
}
  const colocarCabeceraParaSoloLabratorioconficha = () => {
	let miTabla = document.querySelector('.cv_l')
	miTabla.innerHTML = `
	<th class="">Paciente</th>
	<th class="none">Establecimiento</th>
	<th class="none">Diresa</th>
	<th class="none" class="text-center">Negativa</th>
	<th class="none">Fch Notificación</th>
	<th class="none">Fch Inicio Enf</th>
	<th class="none">Fch Muestra</th>
	<th class="none">Año</th>
	<th class="none">Semana</th>
	<th class="none">Resp Laboratorio</th>
	<th class="none">Resp Epidemiología</th>
	<th class="">Dni</th>
	<th class="">Nombres</th>
	<th class="">Apell Paterno</th>
	<th class="none">Apell Materno</th>
	<th class="none">Edad</th>
	<th class="none">Tipo Edad</th>
	<th class="none">Sexo</th>
	<th class="none">Dirección</th>
	<th class="none">Tipo Vía</th>
	<th class="none">Nombre Vía</th>
	<th class="none">Nro Puerta</th>
	<th class="none">Nro Manzana</th>
	<th class="none">Lote</th>
	<th class="none">Nombre Asociación</th>
	<th class="none">Tipo Asociación</th>
	<th class="none">Teléfono</th>
	<th class="none">Gestante</th>
	<th class="none">Fiebre</th>
	<th class="none">Rash</th>
	<th class="none">Conjuntivitis</th>
	<th class="none">Artralgia</th>
	<th class="none">Mialgia</th>
	<th class="none">Otro</th>
	<th class="none">Otro Síntoma</th>
	<th class="none">Evaluación Paciente</th>
	<th class="none">Área Captación</th>
	<th class="none">Diagnóstico Captación</th>
	<th class="none">País</th>
	<th class="none">Departamento</th>
	<th class="none">Provincia</th>
	<th class="none">Distrito</th>
	<th class="none">Localidad</th>
	<th class="none">Tipo Zona</th>
	<th class="none">Usuario registra</th>
	<th class="none">Nombre Usuario registra</th>
	<th class="none">Fech registro</th>
	<th class="none">Nro Muestra</th>
	<th class="text-center none">Id_Muestra</th>
	<th class="text-center">Enfermedad</th>
	<th class="text-center">Prueba</th>
	<th class="text-center">Resultado</th>
	<th class="text-center none">Serotipo</th>
	<th class="text-center none">Fch Resultado</th>
	<th class="text-center none">Fch Recepcion LRR</th>
	<th class="text-center none">Fch Envio INS</th>
	<th class="text-center none">Fch Recepcion INS</th>
	`
}

  