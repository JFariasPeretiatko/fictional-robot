CREATE OR REPLACE PROCEDURE CMDKLTD_ADD_VALUE_TO_CMDKLTD_ATEALER_22(p_order in number) 
IS BEGIN
insert into CMDKLTD_ATEALER_22(nr_sequencia, nr_ordem_custom) values (4, p_order);
END;
/