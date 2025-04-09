CREATE OR REPLACE PROCEDURE CMDKLTD_INSERE_CONTRATO_P(p_is_rejeitado in varchar2) IS
BEGIN

INSERT INTO ERRO_ESCRITURAL (cd_banco, cd_erro, dt_atualizacao, nm_usuario, ds_erro, ie_rejeitado) values (40, 999, sysdate, 'jfperet', 'Teste do sistema', p_is_rejeitado);
commit;

DELETE FROM ERRO_ESCRITURAL WHERE nm_usuario = 'jfperet';
commit;

END;/