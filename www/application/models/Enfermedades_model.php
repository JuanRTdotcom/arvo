<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Description of User
 *
 * @author roytuts.com
 */
class Enfermedades_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();

        // $this->notiweb = $this->load->database('notiweb', TRUE);
        // $this->arbocentinela = $this->load->database('arbocentinela', TRUE);
    }


    public function getEnfermedades()
    {
        $this->db->db_select('arbocentinela');
        $sql = "SELECT e.id,e.denominacion,e.estado,count(l.enfermedad)as cantidad_casos FROM arbocenti_enf e 
        inner join arbocenti_lab l on l.enfermedad = e.id
        GROUP by e.denominacion
        order by e.denominacion";
        if (!$query = $this->db->query($sql)) {
            $error = $this->db->error();
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
    
    public function getEnfermedades_filtro()
    {
        $this->db->db_select('arbocentinela');
        $sql = "SELECT * FROM arbocenti_enf";
        if (!$query = $this->db->query($sql)) {
            $error = $this->db->error();
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

}
