<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
 * Description of User
 *
 * @author roytuts.com
 */
class Resultados_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();

        // $this->notiweb = $this->load->database('notiweb', TRUE);
        // $this->arbocentinela = $this->load->database('arbocentinela', TRUE);
    }


    public function getResultados()
    {
        $this->db->db_select('arbocentinela');
        $sql = "SELECT r.*,count(l.id) as cant_muestras_lab
        from arbocenti_res r
        inner join arbocenti_lab l on l.resultado = r.id 
        where r.estado = 1 and l.estado = 1
        group by r.id";
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
    
    public function getResultados_filtro()
    {
        $this->db->db_select('arbocentinela');
        $sql = "SELECT * FROM arbocenti_res";
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
