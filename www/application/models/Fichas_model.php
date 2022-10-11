<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Description of User
 *
 * @author roytuts.com
 */
class Fichas_model extends CI_Model
{
  function __construct()
  {
    parent::__construct();

    $this->bd_notiweb = $this->load->database('notiweb', TRUE);
    $this->bd_arbocentinela = $this->load->database('arbocentinela', TRUE);
  }


  function getPaises()
  {
    $sql = "select * from paises p order by p.nombre asc";
    if (!$query = $this->bd_notiweb->query($sql)) {
      $error = $this->bd_notiweb->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }


  function getPruebas($enfermedad)
  {
    $sql = "SELECT a.* FROM arbocenti_pru a where enfermedad = $enfermedad and a.estado = 1";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  function eliminarPruebas($id, $usuario)
  {
    $sql = "update arbocenti_lab set estado = 0,fecha_eli = now(),usuario_eli = '$usuario'  where id=$id";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    // $data = $query->result();
    // $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => []
    );
  }

  function eliminarFicha($id, $usuario)
  {
    $sql = "update arbocenti set eliminado = 1, fecha_eli = now(), usuario_eli = '$usuario' where id=$id";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    // $data = $query->result();
    // $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => []
    );
  }

  function verPruebas($id)
  {
    // $this->db->db_select('arbocentinela');
    $sql = "select * from arbocenti_lab where id=$id";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  function getSerotipos($enfermedad, $prueba)
  {
    // $this->db->db_select('arbocentinela');
    $sql = "SELECT a.* FROM arbocenti_ser a where a.enfermedad = $enfermedad and a.prueba = $prueba and a.estado = 1";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  function getTipoVia()
  {
    // $this->db->db_select('arbocentinela');
    $sql = "SELECT * FROM tipo_via where eliminado = 0";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  function getTipoAsociacion()
  {
    // $this->db->db_select('arbocentinela');
    $sql = "SELECT * FROM tipo_asociacion where eliminado = 0";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  function getDepartamentos()
  {
    // $this->db->db_select('arbocentinela');
    $sql = "select * from departamento d order by d.nombre asc";
    if (!$query = $this->bd_notiweb->query($sql)) {
      $error = $this->bd_notiweb->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  function getProvincias($parametros)
  {
    // $this->db->db_select('arbocentinela');
    $sql = "select * from provincia p where p.departamento = ? order by p.nombre asc";
    if (!$query = $this->bd_notiweb->query($sql, $parametros)) {
      $error = $this->bd_notiweb->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //  $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }
  function getDistritos($parametros)
  {
    // $this->db->db_select('arbocentinela');
    $sql = "select * from distrito d  where  d.provinci = ? order by d.nombre asc";
    if (!$query = $this->bd_notiweb->query($sql, $parametros)) {
      $error = $this->bd_notiweb->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //   $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  public function getFichas()
  {
    if ($_SESSION['nivel'] == 1 || $_SESSION['nivel'] == 4) {
      $where = " r.estado = 1";
    } else if ($_SESSION['nivel'] == 5) {
      $where = " r.subregion = '" . $_SESSION['diresa']."'";
    } else if ($_SESSION['nivel'] == 6) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "'";
    } else if ($_SESSION['nivel'] == 7) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] ."'";
    } else {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] . "' and r.cod_est = '" . $_SESSION['establec'] ."'";
    }
    
    $sql = "select * from arbocenti a 
    left join notiweb.renace r on r.cod_est = a.e_salud
    where $where and a.negativa = 0 and eliminado = 0 order by a.id desc limit 100";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  public function getFichasReporte()
  {
    // $this->db->db_select('arbocentinela');
    if ($_SESSION['nivel'] == 1 || $_SESSION['nivel'] == 4) {
      $where = " r.estado = 1";
    } else if ($_SESSION['nivel'] == 5) {
      $where = " r.subregion = '" . $_SESSION['diresa']."'";
    } else if ($_SESSION['nivel'] == 6) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "'";
    } else if ($_SESSION['nivel'] == 7) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] ."'";
    } else {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] . "' and r.cod_est = '" . $_SESSION['establec'] ."'";
    }

    $sql = "SELECT 
    a.id,
    r.raz_soc as Nombre_Establecimiento,
    d.nombre as Nombre_Diresa, 
    IF(a.negativa = 1, 'SI', 'NO') as Negativa,
    DATE_FORMAT(a.fecha_not,'%d/%m/%y') as Fecha_Notificacion,
    DATE_FORMAT(a.fecha_fie,'%d/%m/%y') as Fecha_Inicio_Enfermedad,
    DATE_FORMAT(a.fecha_mue,'%d/%m/%y') as Fecha_Toma_Muestra,
    a.anio as Año,
    a.semana as Semana,
    a.laboratorio_res as Responsable_Laboratorio,
    a.epidemio_res as Responsable_Epidemiologia,
    a.dni as Dni,
    a.nombres as Nombres,
    a.apepat as Apellido_Paterno,
    a.apemat as Apellido_Materno,
    a.edad as Edad,
    if(a.tipo_edad = 'A','Años','Meses') as Tipo_Edad,
    a.sexo as Sexo,
    a.direccion as Direccion,
    tv.denominacion as Tipo_Via,
    a.direccion_nombre_via as Nombre_Via,
    a.direccion_numero_puerta as Numero_Puerta,
    a.direccion_numero_manzana as Numero_Manzana,
    a.direccion_lote as Lote,
    a.direccion_nombre_asociacion as Nombre_Asociacion,
    asoc.denominacion as Tipo_Asociacion,
    a.telefono as Telefono,
    IF(a.gestante = 1, 'SI', 'NO') as Gestante,
    IF(a.fiebre = 1, 'SI', 'NO') as Fiebre,
    IF(a.rash = 1, 'SI', 'NO') as Rash,
    IF(a.conjuntivitis = 1, 'SI', 'NO') as Conjuntivitis,
    IF(a.artralgia = 1, 'SI', 'NO') as Artralgia,
    IF(a.mialgia = 1, 'SI', 'NO') as Mialgia,
    IF(a.otros = 1, 'SI', 'NO') as Otros,
    a.otros_nombre as Otro_Sintoma,
    ep.cNombre as Evaluacion_Paciente,
    ac.cNombre as Area_Captacion,
    a.diagnostico_captacion as Diagnostico_Captacion,
    p.nombre as Pais,
    dep.nombre as Departamento,
    prov.nombre as Provincia,
    dis.nombre as Distrito,
    a.localidad as Localidad,
    tz.cNombre as Tipo_Zona,
    a.usuario_reg as Id_Usuario_Registra,
    uf.nombres as Nombre_usuario_Registra,
    DATE_FORMAT(a.fecha_reg,'%d/%m/%y') as Fecha_Registro
    FROM arbocenti a
    left join notiweb.diresas d on d.codigo = a.diresa
    left join notiweb.renace r on r.cod_est = a.e_salud
    left join evaluacion_paciente ep on ep.idEvaluacionPaciente = a.evaluacion_paciente
    left join area_captacion ac on ac.idAreaCaptacion = a.area_captacion
    left join notiweb.paises p on p.codigo = a.pais
    left join notiweb.departamento dep on dep.ubigeo = a.departamento
    left join notiweb.provincia prov on prov.ubigeo = a.provincia
    left join notiweb.distrito dis on dis.ubigeo = a.distrito
    left join tipo_zona tz on tz.idTipoZona = a.tipo_zona
    left join tipo_via tv on tv.id = a.direccion_tipo_via
    left join tipo_asociacion asoc on asoc.id = a.direccion_tipo_asociacion
    left join notiweb.usuarios_frontend uf on uf.usuario = a.usuario_reg
    where a.eliminado = 0 $where
    order by id desc limit 50";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }
  public function getFichasReporte_Filtro($tieneLimite, $establecimiento, $diresa, $dni, $negativa, $fecha_notificacion_inicio, $fecha_notificacion_fin, $fecha_inicio_enfermedad_inicio, $fecha_inicio_enfermedad_fin, $fecha_muestra_inicio, $fecha_muestra_fin)
  {
    $Nlimite = '';
    $Nestablecimiento = '';
    $Ndiresa = '';
    $Ndni = '';
    $Nnegativo = "";
    $NfechaNotificacion = '';
    $Nfecha_inicio_enfermedad = '';
    $Nfecha_muestra = '';
    if ($tieneLimite == 1) {
      $Nlimite = " limit 50";
    }
    if ($negativa == 1) {
      $Nnegativo = " and a.negativa = $negativa";
    }
    if ($establecimiento != '') {
      $Nestablecimiento = " and a.e_salud = '$establecimiento'";
    }
    if ($diresa != '') {
      $Ndiresa = " and a.diresa = '$diresa'";
    }
    if ($dni != '') {
      $Ndni = " and a.dni = '$dni'";
    }
    if ($fecha_notificacion_inicio != '') {
      $NfechaNotificacion = " and a.fecha_not BETWEEN '$fecha_notificacion_inicio' and '$fecha_notificacion_fin'";
    }
    if ($fecha_inicio_enfermedad_inicio != '') {
      $Nfecha_inicio_enfermedad = " and a.fecha_fie BETWEEN '$fecha_inicio_enfermedad_inicio' and '$fecha_inicio_enfermedad_fin'";
    }
    if ($fecha_muestra_inicio != '') {
      $Nfecha_muestra = " and a.fecha_mue BETWEEN '$fecha_muestra_inicio' and '$fecha_muestra_fin'";
    }
    // $this->db->db_select('arbocentinela');

    if ($_SESSION['nivel'] == 1 || $_SESSION['nivel'] == 4) {
      $where = " r.estado = 1";
    } else if ($_SESSION['nivel'] == 5) {
      $where = " r.subregion = '" . $_SESSION['diresa']."'";
    } else if ($_SESSION['nivel'] == 6) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "'";
    } else if ($_SESSION['nivel'] == 7) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] ."'";
    } else {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] . "' and r.cod_est = '" . $_SESSION['establec'] ."'";
    }


    $sql = "SELECT 
    a.id,
    r.raz_soc as Nombre_Establecimiento,
    d.nombre as Nombre_Diresa, 
    IF(a.negativa = 1, 'SI', 'NO') as Negativa,
    DATE_FORMAT(a.fecha_not,'%d/%m/%Y') as Fecha_Notificacion,
    DATE_FORMAT(a.fecha_fie,'%d/%m/%Y') as Fecha_Inicio_Enfermedad,
    DATE_FORMAT(a.fecha_mue,'%d/%m/%Y') as Fecha_Toma_Muestra,
    a.anio as Año,
    a.semana as Semana,
    a.laboratorio_res as Responsable_Laboratorio,
    a.epidemio_res as Responsable_Epidemiologia,
    a.dni as Dni,
    a.nombres as Nombres,
    a.apepat as Apellido_Paterno,
    a.apemat as Apellido_Materno,
    a.edad as Edad,
    if(a.tipo_edad = 'A','Años','Meses') as Tipo_Edad,
    a.sexo as Sexo,
    a.direccion as Direccion,
    tv.denominacion as Tipo_Via,
    a.direccion_nombre_via as Nombre_Via,
    a.direccion_numero_puerta as Numero_Puerta,
    a.direccion_numero_manzana as Numero_Manzana,
    a.direccion_lote as Lote,
    a.direccion_nombre_asociacion as Nombre_Asociacion,
    asoc.denominacion as Tipo_Asociacion,
    a.telefono as Telefono,
    IF(a.gestante = 1, 'SI', 'NO') as Gestante,
    IF(a.fiebre = 1, 'SI', 'NO') as Fiebre,
    IF(a.rash = 1, 'SI', 'NO') as Rash,
    IF(a.conjuntivitis = 1, 'SI', 'NO') as Conjuntivitis,
    IF(a.artralgia = 1, 'SI', 'NO') as Artralgia,
    IF(a.mialgia = 1, 'SI', 'NO') as Mialgia,
    IF(a.otros = 1, 'SI', 'NO') as Otros,
    a.otros_nombre as Otro_Sintoma,
    ep.cNombre as Evaluacion_Paciente,
    ac.cNombre as Area_Captacion,
    a.diagnostico_captacion as Diagnostico_Captacion,
    (select if(count(al.id)=0,'NO','SI') from arbocenti_lab al where al.id = a.id and al.enfermedad = '1')as 'Dengue',
    (select if(count(al.id)=0,'NO','SI') from arbocenti_lab al where al.id = a.id and al.enfermedad = '1' and al.prueba = 1)as 'Dengue_aislamiento_tipificacion',
    (select if(count(al.id)=0,'NO','SI') from arbocenti_lab al where al.id = a.id and al.enfermedad = '6')as 'Zika',
    (select if(count(al.id)=0,'NO','SI') from arbocenti_lab al where al.id = a.id and al.enfermedad = '7')as 'Chikungunya',
    (select if(count(al.id)=0,'NO','SI') from arbocenti_lab al where al.id = a.id and al.enfermedad = '8')as 'Oropuche',
    (select if(count(al.id)=0,'NO','SI') from arbocenti_lab al where al.id = a.id and al.enfermedad = '9')as 'Mayaro',
    (select if(count(al.id)=0,'NO','SI') from arbocenti_lab al where al.id = a.id and al.enfermedad = '10')as 'Fiebre Amarilla',
    p.nombre as Pais,
    dep.nombre as Departamento,
    prov.nombre as Provincia,
    dis.nombre as Distrito,
    a.localidad as Localidad,
    tz.cNombre as Tipo_Zona,
    a.usuario_reg as Id_Usuario_Registra,
    uf.nombres as Nombre_usuario_Registra,
    DATE_FORMAT(a.fecha_reg,'%d/%m/%y') as Fecha_Registro
    FROM arbocenti a
    left join notiweb.diresas d on d.codigo = a.diresa
    left join notiweb.renace r on r.cod_est = a.e_salud
    left join evaluacion_paciente ep on ep.idEvaluacionPaciente = a.evaluacion_paciente
    left join area_captacion ac on ac.idAreaCaptacion = a.area_captacion
    left join notiweb.paises p on p.codigo = a.pais
    left join notiweb.departamento dep on dep.ubigeo = a.departamento
    left join notiweb.provincia prov on prov.ubigeo = a.provincia
    left join notiweb.distrito dis on dis.ubigeo = a.distrito
    left join tipo_zona tz on tz.idTipoZona = a.tipo_zona
    left join tipo_via tv on tv.id = a.direccion_tipo_via
    left join tipo_asociacion asoc on asoc.id = a.direccion_tipo_asociacion
    left join notiweb.usuarios_frontend uf on uf.usuario = a.usuario_reg
    where a.eliminado = 0 and $where $Nestablecimiento $Ndiresa $Ndni $Nnegativo $NfechaNotificacion $Nfecha_inicio_enfermedad $Nfecha_muestra
    order by id desc $Nlimite";
    // print_r($sql);
    // die();
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  public function getFichasReporte_Filtro_Lab($tieneLimite, $conFichas, $nro_muestra, $mis_enfermedades, $mis_pruebas, $mis_resultados, $mis_serotipos, $fecha_resultados_inicio, $fecha_resultados_fin, $fecha_recepcion_lrr_inicio, $fecha_recepcion_lrr_fin, $fecha_envio_ins_inicio, $fecha_envio_ins_fin, $fecha_recepcion_ins_inicio, $fecha_recepcion_ins_fin)
  {
    $Nlimite = '';
    if ($tieneLimite == 1) {
      $Nlimite = " limit 50";
    }
    $siesConFichas = '';
    $siesConFichasFroms = '';
    if ($conFichas == 1) {
      $siesConFichas = " 
      r.raz_soc as Nombre_Establecimiento,
      d.nombre as Nombre_Diresa,
      IF(a.negativa = 1, 'SI', 'NO') as Negativa,
      DATE_FORMAT(a.fecha_not,'%d/%m/%Y') as Fecha_Notificacion,
      DATE_FORMAT(a.fecha_fie,'%d/%m/%Y') as Fecha_Inicio_Enfermedad,
      DATE_FORMAT(a.fecha_mue,'%d/%m/%Y') as Fecha_Toma_Muestra,
      a.anio as Año,
      a.semana as Semana,
      a.laboratorio_res as Responsable_Laboratorio,
      a.epidemio_res as Responsable_Epidemiologia,
      a.dni as Dni,
      a.nombres as Nombres,
      a.apepat as Apellido_Paterno,
      a.apemat as Apellido_Materno,
      a.edad as Edad,
      if(a.tipo_edad = 'A','Años','Meses') as Tipo_Edad,
      a.sexo as Sexo,
      a.direccion as Direccion,
      tv.denominacion as Tipo_Via,
      a.direccion_nombre_via as Nombre_Via,
      a.direccion_numero_puerta as Numero_Puerta,
      a.direccion_numero_manzana as Numero_Manzana,
      a.direccion_lote as Lote,
      a.direccion_nombre_asociacion as Nombre_Asociacion,
      asoc.denominacion as Tipo_Asociacion,
      a.telefono as Telefono,
      IF(a.gestante = 1, 'SI', 'NO') as Gestante,
      IF(a.fiebre = 1, 'SI', 'NO') as Fiebre,
      IF(a.rash = 1, 'SI', 'NO') as Rash,
      IF(a.conjuntivitis = 1, 'SI', 'NO') as Conjuntivitis,
      IF(a.artralgia = 1, 'SI', 'NO') as Artralgia,
      IF(a.mialgia = 1, 'SI', 'NO') as Mialgia,
      IF(a.otros = 1, 'SI', 'NO') as Otros,
      a.otros_nombre as Otro_Sintoma,
      ep.cNombre as Evaluacion_Paciente,
      ac.cNombre as Area_Captacion,
      a.diagnostico_captacion as Diagnostico_Captacion,
      p.nombre as Pais,
      dep.nombre as Departamento,
      prov.nombre as Provincia,
      dis.nombre as Distrito,
      a.localidad as Localidad,
      tz.cNombre as Tipo_Zona,
      a.usuario_reg as Id_Usuario_Registra,
      uf.nombres as Nombre_usuario_Registra,
      DATE_FORMAT(a.fecha_reg,'%d/%m/%y') as Fecha_Registro,
       ";

      $siesConFichasFroms = " 
      left join notiweb.diresas d on d.codigo = a.diresa
      left join notiweb.renace r on r.cod_est = a.e_salud
      left join evaluacion_paciente ep on ep.idEvaluacionPaciente = a.evaluacion_paciente
      left join area_captacion ac on ac.idAreaCaptacion = a.area_captacion
      left join notiweb.paises p on p.codigo = a.pais
      left join notiweb.departamento dep on dep.ubigeo = a.departamento
      left join notiweb.provincia prov on prov.ubigeo = a.provincia
      left join notiweb.distrito dis on dis.ubigeo = a.distrito
      left join tipo_zona tz on tz.idTipoZona = a.tipo_zona
      left join tipo_via tv on tv.id = a.direccion_tipo_via
      left join tipo_asociacion asoc on asoc.id = a.direccion_tipo_asociacion
      left join notiweb.usuarios_frontend uf on uf.usuario = a.usuario_reg ";
    }


    $Nnro_muestra = '';
    $Nmis_enfermedades = '';
    $Nmis_pruebas = '';
    $Nmis_resultados = "";
    $Nmis_serotipos = '';
    $Nfecha_resultados = '';
    $Nfecha_recepcion_lrr = '';
    $Nfecha_envio_ins = '';
    $Nfecha_recepcion_ins = '';

    if ($nro_muestra != '') {
      $Nnro_muestra = " and al.muestra like '%$nro_muestra%'";
    } else {
    }
    if ($mis_enfermedades != '') {
      $Nmis_enfermedades = " and ae.id = $mis_enfermedades";
    }
    if ($mis_pruebas != '') {
      $Nmis_pruebas = " and ap.denominacion = '$mis_pruebas'";
    }
    if ($mis_resultados != '') {
      $Nmis_resultados = " and res.id = $mis_resultados";
    }
    if ($mis_serotipos != '') {
      $Nmis_serotipos = " and ase.denominacion = '$mis_serotipos'";
    }
    if ($fecha_resultados_inicio != '') {
      $Nfecha_resultados = " and al.fecha_res BETWEEN '$fecha_resultados_inicio' and '$fecha_resultados_fin'";
    }
    if ($fecha_recepcion_lrr_inicio != '') {
      $Nfecha_recepcion_lrr = " and al.dtRecepcionLRR BETWEEN '$fecha_recepcion_lrr_inicio' and '$fecha_recepcion_lrr_fin'";
    }
    if ($fecha_envio_ins_inicio != '') {
      $Nfecha_envio_ins = " and al.dtFechaEnvioINS BETWEEN '$fecha_envio_ins_inicio' and '$fecha_envio_ins_fin'";
    }
    if ($fecha_recepcion_ins_inicio != '') {
      $Nfecha_recepcion_ins = " and al.dtFechaEnvioINS BETWEEN '$fecha_recepcion_ins_inicio' and '$fecha_recepcion_ins_fin'";
    }

    // $this->db->db_select('arbocentinela');
    if ($_SESSION['nivel'] == 1 || $_SESSION['nivel'] == 4) {
      $where = " r.estado = 1";
    } else if ($_SESSION['nivel'] == 5) {
      $where = " r.subregion = '" . $_SESSION['diresa']."'";
    } else if ($_SESSION['nivel'] == 6) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "'";
    } else if ($_SESSION['nivel'] == 7) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] ."'";
    } else {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] . "' and r.cod_est = '" . $_SESSION['establec'] ."'";
    }

    $sql = "SELECT
      $siesConFichas
      al.id as idMuestra,
      al.paciente idPaciente,
      al.muestra nroMuestra,
      ae.denominacion as Enfermedad,
      ap.denominacion as Prueba,
      ase.denominacion as Serotipo,
      res.resultado as Resultado,
      DATE_FORMAT(al.fecha_res,'%d/%m/%Y') as Fecha_resultado,
      DATE_FORMAT(al.dtRecepcionLRR,'%d/%m/%Y') as Fecha_recepcion_LRR,
      DATE_FORMAT(al.dtFechaEnvioINS,'%d/%m/%Y') as Fecha_envio_INS,
      DATE_FORMAT(al.dtRecepcionINS,'%d/%m/%Y') as Fecha_recepcion_INS,
      DATE_FORMAT(al.fecha_reg,'%d/%m/%Y') as Fecha_registro,
      DATEDIFF(al.dtRecepcionLRR,al.fecha_res) as dias_FechasResultado_y_RecepcionLRR
      from arbocenti_lab al
      left join arbocenti_enf ae on ae.id = al.enfermedad
      left join arbocenti_pru ap on ap.id = al.prueba
      left join arbocenti_ser ase on ase.id = al.serotipo
      left join arbocenti_res res on res.id = al.resultado
      left join arbocenti a on a.id = al.paciente
      $siesConFichasFroms
      where al.estado = 1 and a.eliminado = 0 $where $Nnro_muestra $Nmis_enfermedades $Nmis_pruebas $Nmis_resultados $Nmis_serotipos $Nfecha_resultados $Nfecha_recepcion_lrr $Nfecha_envio_ins $Nfecha_recepcion_ins
      order by al.id desc $Nlimite";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  public function getFichas_filtro($nombres, $ape_pat, $ape_mat, $dni)

  {
    $f_nombre = '';
    $f_apePat = '';
    $f_apeMat = '';
    $f_dni = '';
    if ($nombres != '') {
      $f_nombre = " and nombres like '%$nombres%'";
    }
    if ($ape_pat != '') {
      $f_apePat = " and apepat like '%$ape_pat%'";
    }
    if ($ape_mat != '') {
      $f_apeMat = " and apemat like '%$ape_mat%'";
    }
    if ($dni != '') {
      $f_dni = " and dni like '%$dni%'";
    }

    if ($_SESSION['nivel'] == 1 || $_SESSION['nivel'] == 4) {
      $where = " r.estado = 1";
    } else if ($_SESSION['nivel'] == 5) {
      $where = " r.subregion = '" . $_SESSION['diresa']."'";
    } else if ($_SESSION['nivel'] == 6) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "'";
    } else if ($_SESSION['nivel'] == 7) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] ."'";
    } else {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] . "' and r.cod_est = '" . $_SESSION['establec'] ."'";
    }
    
    $sql = "select * from arbocentinela.arbocenti a left join notiweb.renace r on r.cod_est = a.e_salud where $where and a.negativa = 0 and a.eliminado = 0 $f_nombre $f_apePat $f_apeMat $f_dni order by a.id desc limit 100";
    print_r($sql);
    die();
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  public function getFichasNegativas_filtro($responsable, $anio, $semana, $observacion)

  {
    $f_nombre = '';
    $f_anio = '';
    $f_semana = '';
    $f_observacion = '';
    if ($responsable != '') {
      $f_nombre = " and epidemio_res like '%$responsable%'";
    }
    if ($anio != '') {
      $f_anio = " and anio like '%$anio%'";
    }
    if ($semana != '') {
      $f_semana = " and semana like '%$semana%'";
    }
    if ($observacion != '') {
      $f_observacion = " and observaciones like '%$observacion%'";
    }

    if ($_SESSION['nivel'] == 1 || $_SESSION['nivel'] == 4) {
      $where = " r.estado = 1";
    } else if ($_SESSION['nivel'] == 5) {
      $where = " r.subregion = '" . $_SESSION['diresa']."'";
    } else if ($_SESSION['nivel'] == 6) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "'";
    } else if ($_SESSION['nivel'] == 7) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] ."'";
    } else {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] . "' and r.cod_est = '" . $_SESSION['establec'] ."'";
    }

    // $this->db->db_select('arbocentinela');
    $sql = "select * from arbocenti a
    left join notiweb.renace r on r.cod_est = a.e_salud
    where $where and a.negativa = 1 and eliminado = 0 $f_nombre $f_anio $f_semana $f_observacion order by a.id desc limit 100";
    // print_r($dni);
    // die();
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  public function getFicha_x_Id($id)
  {
    // $this->db->db_select('arbocentinela');
    if ($_SESSION['nivel'] == 1 || $_SESSION['nivel'] == 4) {
      $where = " r.estado = 1";
    } else if ($_SESSION['nivel'] == 5) {
      $where = " r.subregion = '" . $_SESSION['diresa']."'";
    } else if ($_SESSION['nivel'] == 6) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "'";
    } else if ($_SESSION['nivel'] == 7) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] ."'";
    } else {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] . "' and r.cod_est = '" . $_SESSION['establec'] ."'";
    }

    $sql = "select a.*,p.nombre as Npais,d.nombre as Ndepartamento,pr.nombre as Nprovincia, di.nombre as Ndistrito, tv.denominacion as Ntipovia , ta.denominacion as Ntipoasociacion from arbocenti a 
    left join notiweb.paises p on p.codigo = a.pais
    left join notiweb.departamento d on d.ubigeo = a.departamento
    left join notiweb.provincia pr on pr.ubigeo = a.provincia
    left join notiweb.distrito di on di.ubigeo = a.distrito
    left join tipo_via tv on tv.id = a.direccion_tipo_via
    left join tipo_asociacion ta on ta.id = a.direccion_tipo_asociacion
    left join notiweb.renace r on r.cod_est = a.e_salud
    where $where and a.id = $id";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  public function validaFichas($idFicha)
  {
    $sql = "select * from arbocenti a where a.id = $idFicha limit 1";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  public function vlidarUsuarioDni($dni, $fecha_notificacion)
  {
    // $this->db->db_select('arbocentinela');
    $sql = "SELECT * FROM `arbocenti` where dni = '$dni' and anio = YEAR('$fecha_notificacion')";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  public function agregarMuestra($id_ficha, $nro_muestra, $fecha_resultado, $fecha_LRR, $envioINS, $fechaEnvioINS, $fechaRecepcionINS, $mis_enfermedades, $mis_pruebas, $mis_serotipos, $mis_resultados)
  {

    $misS = $mis_serotipos == '' ? 'NULL' : $mis_serotipos;
    $usuario = $_SESSION['usuario'];
    // $this->db->db_select('arbocentinela');
    $sql = " 
            insert into arbocenti_lab
            (
                paciente,
                muestra,
                enfermedad,
                prueba,
                serotipo,
                resultado,
                estado,
                fecha_res,
                dtRecepcionLRR,
                bEnvioIns,
                dtFechaEnvioINS,
                dtRecepcionINS,                
                fecha_reg,
                usuario_reg
            )
            values(
                $id_ficha,
                '$nro_muestra',
                $mis_enfermedades,
                $mis_pruebas,
                $misS,
                $mis_resultados,
                1,
                '$fecha_resultado',
                '$fecha_LRR',
                $envioINS,
                '$fechaEnvioINS',
                '$fechaRecepcionINS',
                now(),
                $usuario
            )        
        ";

    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    // $data = $query->result();
    // $query->free_result();
    return array(
      'estado' => true,
      'data' => []
    );
  }
  public function editarMuestra($id_muestra, $id_ficha, $nro_muestra, $fecha_recepcion_lrr_editar, $ins_si_editar, $fecha_envio_ins_editar, $fecha_recepcion_ins_editar, $fecha_resultado, $mis_enfermedades, $mis_pruebas, $mis_serotipos, $mis_resultados)
  {


    $misS = $mis_serotipos == '' ? 'NULL' : $mis_serotipos;
    $usuario = $_SESSION['usuario'];
    // $this->db->db_select('arbocentinela');
    $sql = " 
            update arbocenti_lab
            set
                paciente =  $id_ficha,
                muestra = '$nro_muestra',
                enfermedad = $mis_enfermedades,
                prueba = $mis_pruebas,
                serotipo = $misS,
                resultado = $mis_resultados,
                fecha_res = '$fecha_resultado',
                dtRecepcionLRR = '$fecha_recepcion_lrr_editar',
                bEnvioIns = $ins_si_editar,
                dtFechaEnvioINS = '$fecha_envio_ins_editar',
                dtRecepcionINS = '$fecha_recepcion_ins_editar',
                fecha_mod = now(),
                usuario_reg = $usuario
            where id=$id_muestra  
        ";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    // $data = $query->result();
    // $query->free_result();
    return array(
      'estado' => true,
      'data' => []
    );
  }
  public function agregarFicha(
    $esNegativa,
    $responsable_laboratorio,
    $responsable_epidemiologia,
    $fecha_notificacion,
    $dni,
    $nombres,
    $apellido_paterno,
    $apellido_materno,
    $sexo,
    $edad,
    $tipo_edad,
    $telefono,
    $pais,
    $departamento,
    $provincia,
    $distrito,
    $localidad,
    $tipo_zona,
    $direccion,
    $tipo_via,
    $nombre_via,
    $nro_puerta,
    $nro_manzana,
    $lote,
    $tipo_asociacion,
    $nombre_asociacion,
    $fecha_muestra,
    $fecha_inicio_enfermedad,
    $gestante,
    $fiebre,
    $rash,
    $conjuntivitis,
    $artralgia,
    $mialgia,
    $otro,
    $nombre_otro,
    $evaluacion_paciente,
    $area_captacion,
    $diagnostico_captacion,
    $observacion
  ) {

    $date = new DateTime($fecha_inicio_enfermedad);
    $semana = $date->format("W");
    $anio = $date->format("Y");

    $diresa = $_SESSION['diresa'];
    $establecimiento = $_SESSION['establec'];
    $usuario = $_SESSION['usuario'];

    // $this->db->db_select('arbocentinela');
    $sql = " 
            insert into arbocenti
            (
                diresa,
                e_salud,
                laboratorio_res,
                epidemio_res,
                fecha_not,
                anio,
                semana,
                fecha_fie,
                fecha_mue,
                dni,
                apepat,
                apemat,
                nombres,
                edad,
                tipo_edad,
                sexo,
                direccion,
                telefono,
                fiebre,
                rash,
                conjuntivitis,
                negativa,
                observaciones,
                gestante,
                artralgia,
                mialgia,
                evaluacion_paciente,
                area_captacion,
                diagnostico_captacion,
                pais,
                departamento,
                provincia,
                distrito,
                localidad,
                tipo_zona,
                direccion_tipo_via,
                direccion_nombre_via,
                direccion_numero_puerta,
                direccion_numero_manzana,
                direccion_lote,
                direccion_tipo_asociacion,
                direccion_nombre_asociacion,
                otros,
                otros_nombre,
                fecha_reg,
                usuario_reg,
                eliminado
            )
            values(
                '$diresa',
                '$establecimiento',
                '$responsable_laboratorio',
                '$responsable_epidemiologia',
                '$fecha_notificacion',
                '$anio',
                '$semana',
                '$fecha_inicio_enfermedad',
                '$fecha_muestra',
                '$dni',
                '$apellido_paterno',
                '$apellido_materno',
                '$nombres',
                $edad,
                '$tipo_edad',
                '$sexo',
                '$direccion',
                '$telefono',
                $fiebre,
                $rash,
                $conjuntivitis,
                $esNegativa,
                '$observacion',
                $gestante,
                $artralgia,
                $mialgia,
                $evaluacion_paciente,
                $area_captacion,
                '$diagnostico_captacion',
                $pais,
                $departamento,
                $provincia,
                $distrito,
                '$localidad',
                $tipo_zona,
                $tipo_via,
                '$nombre_via',
                '$nro_puerta',
                '$nro_manzana',
                '$lote',
                $tipo_asociacion,
                '$nombre_asociacion',
                '$otro',
                '$nombre_otro',
                now(),
                '$usuario',
                '0'
            )        
        ";

    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    // $data = $query->result();
    // $query->free_result();
    return array(
      'estado' => true,
      'data' => []
    );
  }


  public function editarFicha(
    $id,
    $esNegativa,
    $responsable_laboratorio,
    $responsable_epidemiologia,
    $fecha_notificacion,
    $dni,
    $nombres,
    $apellido_paterno,
    $apellido_materno,
    $sexo,
    $edad,
    $tipo_edad,
    $telefono,
    $pais,
    $departamento,
    $provincia,
    $distrito,
    $localidad,
    $tipo_zona,
    $direccion,
    $tipo_via,
    $nombre_via,
    $nro_puerta,
    $nro_manzana,
    $lote,
    $tipo_asociacion,
    $nombre_asociacion,
    $fecha_muestra,
    $fecha_inicio_enfermedad,
    $gestante,
    $fiebre,
    $rash,
    $conjuntivitis,
    $artralgia,
    $mialgia,
    $otro,
    $nombre_otro,
    $evaluacion_paciente,
    $area_captacion,
    $diagnostico_captacion,
    $observacion
  ) {

    $date = new DateTime($fecha_notificacion);
    $semana = $date->format("W");
    $anio = $date->format("Y");

    $diresa = $_SESSION['diresa'];
    $establecimiento = $_SESSION['establec'];
    $usuario = $_SESSION['usuario'];

    // $this->db->db_select('arbocentinela');
    $sql = " 
            update arbocenti
                set 
                diresa='$diresa',
                e_salud='$establecimiento',
                laboratorio_res='$responsable_laboratorio',
                epidemio_res='$responsable_epidemiologia',
                fecha_not='$fecha_notificacion',
                anio='$anio',
                semana='$semana',
                fecha_fie= '$fecha_inicio_enfermedad',
                fecha_mue='$fecha_muestra',
                dni='$dni',
                apepat='$apellido_paterno',
                apemat='$apellido_materno',
                nombres='$nombres',
                edad=$edad,
                tipo_edad='$tipo_edad',
                sexo='$sexo',
                direccion='$direccion',
                telefono='$telefono',
                fiebre=$fiebre,
                rash=$rash,
                conjuntivitis=$conjuntivitis,
                negativa=$esNegativa,
                observaciones='$observacion',
                gestante=$gestante,
                artralgia=$artralgia,
                mialgia=$mialgia,
                evaluacion_paciente=$evaluacion_paciente,
                area_captacion=$area_captacion,
                diagnostico_captacion='$diagnostico_captacion',
                pais=$pais,
                departamento=$departamento,
                provincia=$provincia,
                distrito=$distrito,
                localidad='$localidad',
                tipo_zona=$tipo_zona,
                direccion_tipo_via='$tipo_via',
                direccion_nombre_via='$nombre_via',
                direccion_numero_puerta='$nro_puerta',
                direccion_numero_manzana='$nro_manzana',
                direccion_lote='$lote',
                direccion_tipo_asociacion='$tipo_asociacion',
                direccion_nombre_asociacion='$nombre_asociacion',
                otros='$otro',
                otros_nombre='$nombre_otro',
                fecha_mod=now(),
                usuario_mod='$usuario',
                eliminado='0' 
                where id = $id     
        ";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    // $data = $query->result();
    // $query->free_result();
    return array(
      'estado' => true,
      'data' => []
    );
  }

  public function obtenerLaboratorio_x_idFicha($idFicha)
  {
    // $this->db->db_select('arbocentinela');
    $sql = "SELECT a.*,ae.denominacion as Nenfermedad,ap.denominacion as Nprueba, ar.resultado as Nresultado 
        FROM arbocenti_lab a 
        inner join arbocenti_enf ae on ae.id = a.enfermedad
        inner join arbocenti_pru ap on ap.id = a.prueba
        inner join arbocenti_res ar on ar.id = a.resultado
        where ae.estado = 1 and ap.estado = 1 and ar.estado = 1 and a.estado = 1  and a.paciente = $idFicha order by a.id desc";

    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  public function obtenerLaboratorio_x_idFicha_filtro($idFicha, $muestra, $enfermedad, $prueba, $resultado)
  {
    $miMuestra = '';
    $miEnfermedad = '';
    $miPrueba = '';
    $miResultado = '';

    if ($muestra != '') {
      $miMuestra = " and a.muestra like '%$muestra%'";
    }
    if ($enfermedad != '') {
      $miEnfermedad = " and a.enfermedad = $enfermedad";
    }
    if ($prueba != '') {
      $miPrueba = " and ap.denominacion = '$prueba'";
    }
    if ($resultado != '') {
      $miResultado = " and a.resultado  = $resultado";
    }

    // $this->db->db_select('arbocentinela');
    $sql = "SELECT a.*,ae.denominacion as Nenfermedad,ap.denominacion as Nprueba, ar.resultado as Nresultado 
        FROM arbocenti_lab a 
        inner join arbocenti_enf ae on ae.id = a.enfermedad
        inner join arbocenti_pru ap on ap.id = a.prueba
        inner join arbocenti_res ar on ar.id = a.resultado
        where ae.estado = 1 and ap.estado = 1 and ar.estado = 1 and a.estado = 1  and a.paciente = $idFicha $miMuestra $miEnfermedad $miPrueba $miResultado order by a.id desc";



    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  function getEstablecimientos()
  {
    if ($_SESSION['nivel'] == 1 || $_SESSION['nivel'] == 4) {
      $where = " r.estado = 1";
    } else if ($_SESSION['nivel'] == 5) {
      $where = " r.subregion = '" . $_SESSION['diresa']."'";
    } else if ($_SESSION['nivel'] == 6) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "'";
    } else if ($_SESSION['nivel'] == 7) {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] ."'";
    } else {
      $where = " r.subregion = '" . $_SESSION['diresa'] . "' and r.red = '" . $_SESSION['red'] . "' and r.microred = '" . $_SESSION['microred'] . "' and r.cod_est = '" . $_SESSION['establec'] ."'";
    }

    $sql = "select  distinct r.raz_soc,r.cod_est from arbocenti a left join notiweb.renace r on r.cod_est = a.e_salud where r.estado = 1 and $where";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  function getDiresas()
  {
    // $this->db->db_select('arbocentinela');
    if ($_SESSION['nivel'] == 1 || $_SESSION['nivel'] == 4) {
      $where = " ";
    } else {
      $where = "where codigo = '" . $_SESSION['diresa'] ."'";
    }

    $sql = "select * from diresas $where";
    if (!$query = $this->bd_notiweb->query($sql)) {
      $error = $this->bd_notiweb->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }

  function getReporte_listarMuestraPorSemana()
  {
    // $this->db->db_select('arbocentinela');
    $sql = "SELECT a.anio,a.semana,count(a.id) as muestras from arbocenti a 
    inner join arbocenti_lab al on al.paciente = a.id 
    where a.eliminado = 0 and al.estado = 1
    GROUP by a.anio,a.semana";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }
  
  function getReporte_listarEdades()
  {
    // $this->db->db_select('arbocentinela');
    $sql = "SELECT (100*count(id)/(SELECT count(id) from arbocenti where eliminado = 0 )) as value,edad as name,(select count(id) from arbocenti) as total from arbocenti where eliminado = 0 group by edad order by edad asc";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }
  
  function getReporte_listarGenero()
  {
    // $this->db->db_select('arbocentinela');
    $sql = "SELECT if(sexo='','N/A',sexo) as name,(100*count(id)/(SELECT count(id) from arbocenti where eliminado = 0 )) as value from arbocenti where eliminado = 0 GROUP BY sexo";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }
  
  function getReporte_listarCaptacion()
  {
    // $this->db->db_select('arbocentinela');
    $sql = "SELECT a.anio as name,FORMAT((100 * count(al.paciente)/260),2) as value
    from arbocenti_lab al
        inner join arbocenti a on al.paciente = a.id
        where a.eliminado = 0 and al.estado = 1
        GROUP BY a.anio";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }







  // admin
  function get_total_registros_diarios()
  {
    // $this->bd_arbocentinela->count_all_results('arbocenti');  // Produces an integer, like 25
    // $this->bd_arbocentinela->like('usuario_reg', $_SESSION['usuario']);
    // $this->bd_arbocentinela->like('eliminado', 0);
    // $this->bd_arbocentinela->like('eliminado', 0);
    // $this->bd_arbocentinela->from('arbocenti');
    // $data = $this->bd_arbocentinela->count_all_results();

    $sql = "select count(id) as num from arbocenti where usuario_reg = ".$_SESSION['usuario']." and eliminado = 0 and DATE_FORMAT(fecha_reg,'%Y-%m-%d') = CURDATE();";
    if (!$query = $this->bd_arbocentinela->query($sql)) {
      $error = $this->bd_arbocentinela->error();
      return array(
        'estado' => false,
        'code' => 'error',
        'message' => 'Ha ocurrido un error!',
        'description' => $error["message"]
      );
      exit();
    }

    $data = $query->result();
    // $query->free_result();
    //    $query->next_result();
    return array(
      'estado' => true,
      'data' => $data
    );
  }








}

