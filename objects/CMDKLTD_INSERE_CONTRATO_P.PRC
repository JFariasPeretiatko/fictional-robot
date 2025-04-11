CREATE OR REPLACE PROCEDURE CMDKLTD_INSERE_CONTRATO_P(p_is_rejeitado in varchar2, nr_seq_p in number) IS
BEGIN

INSERT INTO ERRO_ESCRITURAL (cd_banco, cd_erro, dt_atualizacao, nm_usuario, ds_erro, ie_rejeitado) values (40, 999, sysdate, 'jfperet', 'Teste do sistema', p_is_rejeitado);
INSERT INTO tipo_acomodacao (
    CD_TIPO_ACOMODACAO,
    ds_tipo_acomodacao,
    cd_nivel_acomodacao,
    ie_situacao,
    dt_atualizacao,
    nm_usuario,
    cd_procedimento,
    hr_virada_diaria,
    hr_margem_ant_virdia,
    hr_margem_pos_virdia,
    ie_origem_proced,
    ie_classificacao,
    cd_procedimento_acomp,
    ie_origem_proced_acomp,
    ds_cor,
    dt_atualizacao_nrec,
    nm_usuario_nrec,
    ie_tipo_acomod_tiss,
    ie_sem_acomodacao
) VALUES (
    nr_seq_p,
    'Hospital Dia',
    '1',
    'A',
    TO_DATE('25/02/14', 'DD/MM/RR'),
    'jfperet',
    '1020051',
    TO_DATE('30/12/99', 'DD/MM/RR'),
    NULL,
    TO_DATE('30/12/99', 'DD/MM/RR'),
    '1',
    '11',
    NULL,
    '1',
    NULL,
    NULL,
    NULL,
    '34',
    'N'
);
commit;

DELETE FROM ERRO_ESCRITURAL WHERE nm_usuario = 'jfperet';
commit;

END;/
