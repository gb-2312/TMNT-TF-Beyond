.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
; 0x03C010-0x04000F
.org $C000



.export _off009_0x03CF50_2D
.export _off009_0x03CF6B_01
.export _off009_0x03CF6F_02
.export _off009_0x03CF78_03
.export _off009_0x03CF82_23
.export _off009_0x03CFF5_28
.export _off009_0x03CFF5_29
.export sub_0x03D042_поинтеры_после_JSR
.export sub_0x03D083_очистить_spd_Z
.export loc_0x03D083_очистить_spd_Z
.export sub_0x03D08C_обработка_анимации_объекта
.export loc_0x03D08C_обработка_анимации_объекта
.export sub_0x03D17A
.export loc_0x03D17A
.export sub_0x03D18D
.export loc_0x03D1E6
.export sub_0x03D20C_EOR
.export sub_0x03D212_ASLx4
.export sub_0x03D217_LSRx4
.export sub_0x03D21C_получить_разницу_pos_X_двух_объектов
.export sub_0x03D228_вычислить_поворот_игрока_относительно_другого
.export loc_0x03D228_вычислить_поворот_игрока_относительно_другого
.export loc_0x03D266_записать_A_и_FF_в_буфер
.export sub_0x03D269_записать_FF_в_буфер_без_чтения_индекса
.export sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
.export loc_0x03D26B_записать_FF_в_буфер_с_чтением_индекса
.export sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса
.export loc_0x03D26D_записать_A_в_буфер_с_чтением_индекса
.export sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса
.export sub_0x03D276_записать_A_в_буфер_без_сохранения_индекса
.export sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер
.export sub_0x03D356_записать_3_цвета_в_буфер
.export loc_0x03D356_записать_3_цвета_в_буфер
.export sub_0x03D3A4_записать_палитру_для_фона_и_спрайтов
.export sub_0x03D3C0_записать_палитру_для_фона
.export sub_0x03D47D_запись_черной_палитры_в_буфер
.export loc_0x03D47D_запись_черной_палитры_в_буфер
.export sub_0x03DACE_удалить_все_объекты
.export sub_0x03DAD7_удалить_объект_сохранив_XY
.export sub_0x03DAE3_удалить_объект
.export loc_0x03DAE3_удалить_объект
.export sub_0x03DB48_очистить_spd_X_и_spd_Z
.export loc_0x03DB48_очистить_spd_X_и_spd_Z
.export loc_0x03DB4C_очистить_spd_X
.export sub_0x03DB4C_очистить_spd_X
.export sub_0x03DB59_добавить_spd_X_к_pos_X___spd_Z_к_pos_Y
.export sub_0x03DB5C_добавить_spd_Z_к_pos_Y
.export loc_0x03DB5C_добавить_spd_Z_к_pos_Y
.export sub_0x03DB75_добавить_spd_X_к_pos_X
.export sub_0x03DBC5_скопировать_данные_объекта_X_в_Y
.export sub_0x03DC14_запись_1й_пары_chr_spr
.export sub_0x03DC1F_запись_2й_пары_chr_spr
.export sub_0x03DC2A_запись_пары_chr_bg
.export sub_0x03DC35_запись_пары_chr_bg_06
.export sub_0x03DC64_добавить_A_FF_к_spd_Z
.export loc_0x03DC64_добавить_A_FF_к_spd_Z
.export sub_0x03DC68_добавить_A_00_к_spd_Z
.export loc_0x03DC68_добавить_A_00_к_spd_Z
.export sub_0x03DC79
.export sub_0x03DCA2_добавить_к_spd_Z_в_зависимости_от_опции_скорости
.export sub_0x03DCC1_добавить_A_Y_к_spdX
.export sub_0x03DCE6_запись_spd_Z
.export sub_0x03DCFD_ограничить_pos_Y_во_время_падения
.export sub_0x03DD0A
.export sub_0x03DD14_повернуть_прилетающего_сплинтера_в_нужную_сторону_по_горизонтали
.export sub_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали
.export loc_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали
.export tbl_0x03E750
.export sub_0x03DD7E_очистить_скролл
.export sub_0x03DD96
.export sub_0x03DDF9_запись_сидячего_состояния_персу
.export loc_0x03DDF9_запись_сидячего_состояния_персу
.export sub_0x03DE0C_выбор_палитры_перса_с_сохранением_X
.export sub_0x03DE19_очистить_очки_обоих_игроков
.export loc_0x03DE19_очистить_очки_обоих_игроков
.export sub_0x03DE30_удалить_объекты_перса
.export loc_0x03DE30_удалить_объекты_перса
.export sub_0x03DE4C_корректировка_урона_с_учетом_прочности_перса
.export sub_0x03DE87
.export loc_0x03DE8E
.export sub_0x03DEB2
.export sub_0x03DECA
.export sub_0x03DEE4
.export sub_0x03DF0B
.export sub_0x03DF1D
.export tbl_0x03DF2C_рейндж_броска
.export sub_0x03DF33
.export sub_0x03DF48
.export loc_0x03DF48
.export sub_0x03DF5F
.export loc_0x03DF5F
.export sub_0x03DFB3
.export sub_0x03E11E_корректировка_значения_A_для_turbo
.export loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный
.export sub_0x03E14E_подготовить_затемнение_из_белого_в_цветной
.export loc_0x03E14E_подготовить_затемнение_из_белого_в_цветной
.export sub_0x03E151_подготовить_осветление_из_черного_в_цветной
.export loc_0x03E151_подготовить_осветление_из_черного_в_цветной
.export sub_0x03E15C
.export tbl_0x03E16E_звук_выбора_перса
.export loc_0x03E229_отрисовать_турнирную_сетку
.export loc_0x03E256
.export tbl_0x03E479_default_pos_X_перса
.export loc_0x03E61C
.export loc_0x03E62D
.export loc_0x03E67C
.export loc_0x03E69A
.export loc_0x03E8D6_отрисовать_портрет_шрушера_в_opening
.export loc_0x03E91E_отрисовать_инфу_в_статусбаре
.export tbl_0x03E995_индекс_3х_цветов_для_перса
.export tbl_0x03E99C_индекс_3х_цветов_для_перса
.export sub_0x03EA45
.export loc_0x03EA45
.export sub_0x03EA4B
.export sub_0x03EAA6_обновить_и_отрисовать_время_боя
.export sub_0x03EB17_отрисовать_время_боя
.export loc_0x03EB4F
.export tbl_0x03EFA1
.export tbl_0x03EFA5
.export sub_0x03EFB0
.export sub_0x03EFD1
.export sub_0x03EFFC
.export loc_0x03EFFC
.export sub_0x03F04C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран
.export sub_0x03F04F_удалить_все_объекты___отрисовать_пустой_экран
.export loc_0x03F052_отрисовать_пустой_экран
.export sub_0x03F054_отрисовать_экран
.export sub_0x03F214_генератор_рандома
.export sub_0x03F5BE_подготовить_новый_скрипт
.export loc_0x03F5BE_подготовить_новый_скрипт
.export loc_0x03F5F7_swap_prg_16
.export loc_0x03F627_restore_prg
.export sub_0x03F69B_выключить_звуки_и_записать_новый
.export loc_0x03F69B_выключить_звуки_и_записать_новый
.export sub_0x03F6A0_записать_звук_сохранив_X_Y
.export loc_0x03F6A0_записать_звук_сохранив_X_Y
.export sub_0x03F6A4_записать_звук
.export loc_0x03F6A4_записать_звук
.export sub_0x03F6D2_выключить_музыку_и_звуки
.export sub_0x03F6F5_написать_текст_на_экране
.export loc_0x03F6F5_написать_текст_на_экране
.export sub_0x03F724_смена_тайловых_наборов_для_анимаций
.export loc_0x03F724_смена_тайловых_наборов_для_анимаций
.export sub_0x03F76A
.export sub_0x03F785_вычислить_расстояние_между_персами
.export sub_0x03F7E3_отрисовать_портреты
.export loc_0x03F7E3_отрисовать_портреты
.export sub_0x03F824_подготовить_irq_handler
.export loc_0x03F824_подготовить_irq_handler
.export ofs_0x03F8E0
.export sub_0x03FB98_disable_irq
.export sub_0x03FC9C_set_mirroring_V
.export sub_0x03FCA0_set_mirroring_H
.export loc_0x03FE68_отрисовка_экрана_главное_меню
.export sub_0x03FE76
.export loc_0x03FEAF
.export loc_0x03FEEF
.export sub_0x03FF1D
.export sub_0x03FF4B_вычисление_приоритета_игрока_в_бою
.export sub_0x03F723_отрисовка_финальной_стойки
.export loc_0x03F6EC_броски
.export sub_0x02519C
.export tbl_0x03E32D_индекс_анимации_портрета
.export _общий_RTS



.incbin "DPCM.bin"



_off009_0x03CF50_2D:
- D 2 - - A 0x03CF50 0F:CF40: 85        .byte $85   ; 
- D 2 - I - 0x03CF51 0F:CF41: B8        .byte $B8   ; 
- D 2 - I - 0x03CF52 0F:CF42: E0        .byte $E0   ; 
- D 2 - I - 0x03CF53 0F:CF43: D5        .byte $D5   ; 
- D 2 - I - 0x03CF54 0F:CF44: E0        .byte $E0   ; 
- D 2 - I - 0x03CF55 0F:CF45: 8E        .byte $8E   ; 
- D 2 - I - 0x03CF56 0F:CF46: E0        .byte $E0   ; 
- D 2 - I - 0x03CF57 0F:CF47: A9        .byte $A9   ; 
- D 2 - I - 0x03CF58 0F:CF48: 02        .byte $02   ; 
- D 2 - I - 0x03CF59 0F:CF49: B8        .byte $B8   ; 
- D 2 - I - 0x03CF5A 0F:CF4A: E0        .byte $E0   ; 
- D 2 - I - 0x03CF5B 0F:CF4B: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF5C 0F:CF4C: D0        .byte $D0   ; 
- D 2 - I - 0x03CF5D 0F:CF4D: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF5E 0F:CF4E: C0        .byte $C0   ; 
- D 2 - I - 0x03CF5F 0F:CF4F: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF60 0F:CF50: B0        .byte $B0   ; 
- D 2 - I - 0x03CF61 0F:CF51: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF62 0F:CF52: A0        .byte $A0   ; 
- D 2 - I - 0x03CF63 0F:CF53: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF64 0F:CF54: 90        .byte $90   ; 
- D 2 - I - 0x03CF65 0F:CF55: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF66 0F:CF56: 80        .byte $80   ; 
- D 2 - I - 0x03CF67 0F:CF57: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF68 0F:CF58: 70        .byte $70   ; 
- D 2 - I - 0x03CF69 0F:CF59: 6A        .byte $6A   ; 
- D 2 - I - 0x03CF6A 0F:CF5A: FF        .byte $FF   ; 



_off009_0x03CF6B_01:
- D 2 - I - 0x03CF6B 0F:CF5B: 11        .byte $11   ; 
- D 2 - I - 0x03CF6C 0F:CF5C: 82        .byte $82   ; 
- D 2 - I - 0x03CF6D 0F:CF5D: 11        .byte $11   ; 
- D 2 - I - 0x03CF6E 0F:CF5E: FF        .byte $FF   ; 



_off009_0x03CF6F_02:
- D 2 - I - 0x03CF6F 0F:CF5F: 11        .byte $11   ; 
- D 2 - I - 0x03CF70 0F:CF60: 82        .byte $82   ; 
- D 2 - I - 0x03CF71 0F:CF61: 05        .byte $05   ; 
- D 2 - I - 0x03CF72 0F:CF62: 61        .byte $61   ; 
- D 2 - I - 0x03CF73 0F:CF63: 51        .byte $51   ; 
- D 2 - I - 0x03CF74 0F:CF64: 41        .byte $41   ; 
- D 2 - I - 0x03CF75 0F:CF65: 31        .byte $31   ; 
- D 2 - I - 0x03CF76 0F:CF66: 21        .byte $21   ; 
- D 2 - I - 0x03CF77 0F:CF67: FF        .byte $FF   ; 



_off009_0x03CF78_03:
- D 2 - I - 0x03CF78 0F:CF68: 11        .byte $11   ; 
- D 2 - I - 0x03CF79 0F:CF69: CE        .byte $CE   ; 
- D 2 - I - 0x03CF7A 0F:CF6A: 76        .byte $76   ; 
- D 2 - I - 0x03CF7B 0F:CF6B: 34        .byte $34   ; 
- D 2 - I - 0x03CF7C 0F:CF6C: 43        .byte $43   ; 
- D 2 - I - 0x03CF7D 0F:CF6D: 24        .byte $24   ; 
- D 2 - I - 0x03CF7E 0F:CF6E: 13        .byte $13   ; 
- D 2 - I - 0x03CF7F 0F:CF6F: 12        .byte $12   ; 
- D 2 - I - 0x03CF80 0F:CF70: 12        .byte $12   ; 
- D 2 - I - 0x03CF81 0F:CF71: FF        .byte $FF   ; 



_off009_0x03CF82_23:
- D 2 - I - 0x03CF82 0F:CF72: D5        .byte $D5   ; 
- D 2 - I - 0x03CF83 0F:CF73: B3        .byte $B3   ; 
- D 2 - I - 0x03CF84 0F:CF74: A3        .byte $A3   ; 
- D 2 - I - 0x03CF85 0F:CF75: 00        .byte $00   ; 
- D 2 - I - 0x03CF86 0F:CF76: 0F        .byte $0F   ; 
- D 2 - I - 0x03CF87 0F:CF77: 72        .byte $72   ; 
- D 2 - I - 0x03CF88 0F:CF78: FA        .byte $FA   ; 
- D 2 - I - 0x03CF89 0F:CF79: 04        .byte $04   ; 
- D 2 - I - 0x03CF8A 0F:CF7A: B0        .byte $B0   ; 
- D 2 - I - 0x03CF8B 0F:CF7B: 1B        .byte $1B   ; 
- D 2 - I - 0x03CF8C 0F:CF7C: 80        .byte $80   ; 
- D 2 - I - 0x03CF8D 0F:CF7D: 10        .byte $10   ; 
- D 2 - I - 0x03CF8E 0F:CF7E: FA        .byte $FA   ; 
- D 2 - I - 0x03CF8F 0F:CF7F: FF        .byte $FF   ; 
- D 2 - I - 0x03CF90 0F:CF80: 03        .byte $03   ; 
- D 2 - I - 0x03CF91 0F:CF81: B3        .byte $B3   ; 
- D 2 - I - 0x03CF92 0F:CF82: 00        .byte $00   ; 
- D 2 - I - 0x03CF93 0F:CF83: E8        .byte $E8   ; 
- D 2 - I - 0x03CF94 0F:CF84: 05        .byte $05   ; 
- D 2 - I - 0x03CF95 0F:CF85: E3        .byte $E3   ; 
- D 2 - I - 0x03CF96 0F:CF86: 00        .byte $00   ; 
- D 2 - I - 0x03CF97 0F:CF87: 01        .byte $01   ; 
- D 2 - I - 0x03CF98 0F:CF88: 73        .byte $73   ; 
- D 2 - I - 0x03CF99 0F:CF89: 00        .byte $00   ; 
- D 2 - I - 0x03CF9A 0F:CF8A: E8        .byte $E8   ; 
- D 2 - I - 0x03CF9B 0F:CF8B: 0F        .byte $0F   ; 
- D 2 - I - 0x03CF9C 0F:CF8C: FA        .byte $FA   ; 
- D 2 - I - 0x03CF9D 0F:CF8D: 04        .byte $04   ; 
- D 2 - I - 0x03CF9E 0F:CF8E: B0        .byte $B0   ; 
- D 2 - I - 0x03CF9F 0F:CF8F: 1B        .byte $1B   ; 
- D 2 - I - 0x03CFA0 0F:CF90: 80        .byte $80   ; 
- D 2 - I - 0x03CFA1 0F:CF91: 80        .byte $80   ; 
- D 2 - I - 0x03CFA2 0F:CF92: FA        .byte $FA   ; 
- D 2 - I - 0x03CFA3 0F:CF93: FF        .byte $FF   ; 
- D 2 - I - 0x03CFA4 0F:CF94: 01        .byte $01   ; 
- D 2 - I - 0x03CFA5 0F:CF95: AF        .byte $AF   ; 
- D 2 - I - 0x03CFA6 0F:CF96: AE        .byte $AE   ; 
- D 2 - I - 0x03CFA7 0F:CF97: AD        .byte $AD   ; 
- D 2 - I - 0x03CFA8 0F:CF98: AC        .byte $AC   ; 
- D 2 - I - 0x03CFA9 0F:CF99: AB        .byte $AB   ; 
- D 2 - I - 0x03CFAA 0F:CF9A: 81        .byte $81   ; 
- D 2 - I - 0x03CFAB 0F:CF9B: 82        .byte $82   ; 
- D 2 - I - 0x03CFAC 0F:CF9C: 83        .byte $83   ; 
- D 2 - I - 0x03CFAD 0F:CF9D: 84        .byte $84   ; 
- D 2 - I - 0x03CFAE 0F:CF9E: 85        .byte $85   ; 
- D 2 - I - 0x03CFAF 0F:CF9F: 86        .byte $86   ; 
- D 2 - I - 0x03CFB0 0F:CFA0: 87        .byte $87   ; 
- D 2 - I - 0x03CFB1 0F:CFA1: 88        .byte $88   ; 
- D 2 - I - 0x03CFB2 0F:CFA2: 89        .byte $89   ; 
- D 2 - I - 0x03CFB3 0F:CFA3: 8A        .byte $8A   ; 
- D 2 - I - 0x03CFB4 0F:CFA4: 8B        .byte $8B   ; 
- D 2 - I - 0x03CFB5 0F:CFA5: 8C        .byte $8C   ; 
- D 2 - I - 0x03CFB6 0F:CFA6: 8D        .byte $8D   ; 
- D 2 - I - 0x03CFB7 0F:CFA7: 8E        .byte $8E   ; 
- D 2 - I - 0x03CFB8 0F:CFA8: 8F        .byte $8F   ; 
- D 2 - I - 0x03CFB9 0F:CFA9: 61        .byte $61   ; 
- D 2 - I - 0x03CFBA 0F:CFAA: 62        .byte $62   ; 
- D 2 - I - 0x03CFBB 0F:CFAB: 63        .byte $63   ; 
- D 2 - I - 0x03CFBC 0F:CFAC: 64        .byte $64   ; 
- D 2 - I - 0x03CFBD 0F:CFAD: 65        .byte $65   ; 
- D 2 - I - 0x03CFBE 0F:CFAE: 66        .byte $66   ; 
- D 2 - I - 0x03CFBF 0F:CFAF: 67        .byte $67   ; 
- D 2 - I - 0x03CFC0 0F:CFB0: 68        .byte $68   ; 
- D 2 - I - 0x03CFC1 0F:CFB1: 69        .byte $69   ; 
- D 2 - I - 0x03CFC2 0F:CFB2: 6A        .byte $6A   ; 
- D 2 - I - 0x03CFC3 0F:CFB3: 6B        .byte $6B   ; 
- D 2 - I - 0x03CFC4 0F:CFB4: 6C        .byte $6C   ; 
- D 2 - I - 0x03CFC5 0F:CFB5: 6D        .byte $6D   ; 
- D 2 - I - 0x03CFC6 0F:CFB6: 6E        .byte $6E   ; 
- D 2 - I - 0x03CFC7 0F:CFB7: 6F        .byte $6F   ; 
- D 2 - I - 0x03CFC8 0F:CFB8: 41        .byte $41   ; 
- D 2 - I - 0x03CFC9 0F:CFB9: 42        .byte $42   ; 
- D 2 - I - 0x03CFCA 0F:CFBA: 43        .byte $43   ; 
- D 2 - I - 0x03CFCB 0F:CFBB: 44        .byte $44   ; 
- D 2 - I - 0x03CFCC 0F:CFBC: 45        .byte $45   ; 
- D 2 - I - 0x03CFCD 0F:CFBD: 46        .byte $46   ; 
- D 2 - I - 0x03CFCE 0F:CFBE: 47        .byte $47   ; 
- D 2 - I - 0x03CFCF 0F:CFBF: 48        .byte $48   ; 
- D 2 - I - 0x03CFD0 0F:CFC0: 49        .byte $49   ; 
- D 2 - I - 0x03CFD1 0F:CFC1: 4A        .byte $4A   ; 
- D 2 - I - 0x03CFD2 0F:CFC2: 4B        .byte $4B   ; 
- D 2 - I - 0x03CFD3 0F:CFC3: 4C        .byte $4C   ; 
- D 2 - I - 0x03CFD4 0F:CFC4: 4D        .byte $4D   ; 
- D 2 - I - 0x03CFD5 0F:CFC5: 4E        .byte $4E   ; 
- D 2 - I - 0x03CFD6 0F:CFC6: 4F        .byte $4F   ; 
- D 2 - I - 0x03CFD7 0F:CFC7: 21        .byte $21   ; 
- D 2 - I - 0x03CFD8 0F:CFC8: 22        .byte $22   ; 
- D 2 - I - 0x03CFD9 0F:CFC9: 23        .byte $23   ; 
- D 2 - I - 0x03CFDA 0F:CFCA: 24        .byte $24   ; 
- D 2 - I - 0x03CFDB 0F:CFCB: 25        .byte $25   ; 
- D 2 - I - 0x03CFDC 0F:CFCC: 26        .byte $26   ; 
- D 2 - I - 0x03CFDD 0F:CFCD: 27        .byte $27   ; 
- D 2 - I - 0x03CFDE 0F:CFCE: 28        .byte $28   ; 
- D 2 - I - 0x03CFDF 0F:CFCF: 29        .byte $29   ; 
- D 2 - I - 0x03CFE0 0F:CFD0: 2A        .byte $2A   ; 
- D 2 - I - 0x03CFE1 0F:CFD1: 2B        .byte $2B   ; 
- D 2 - I - 0x03CFE2 0F:CFD2: 2C        .byte $2C   ; 
- D 2 - I - 0x03CFE3 0F:CFD3: 2D        .byte $2D   ; 
- D 2 - I - 0x03CFE4 0F:CFD4: 2E        .byte $2E   ; 
- D 2 - I - 0x03CFE5 0F:CFD5: 2F        .byte $2F   ; 
- D 2 - I - 0x03CFE6 0F:CFD6: 11        .byte $11   ; 
- D 2 - I - 0x03CFE7 0F:CFD7: 12        .byte $12   ; 
- D 2 - I - 0x03CFE8 0F:CFD8: 13        .byte $13   ; 
- D 2 - I - 0x03CFE9 0F:CFD9: 14        .byte $14   ; 
- D 2 - I - 0x03CFEA 0F:CFDA: 15        .byte $15   ; 
- D 2 - I - 0x03CFEB 0F:CFDB: 16        .byte $16   ; 
- D 2 - I - 0x03CFEC 0F:CFDC: 17        .byte $17   ; 
- D 2 - I - 0x03CFED 0F:CFDD: 18        .byte $18   ; 
- D 2 - I - 0x03CFEE 0F:CFDE: 19        .byte $19   ; 
- D 2 - I - 0x03CFEF 0F:CFDF: 1A        .byte $1A   ; 
- D 2 - I - 0x03CFF0 0F:CFE0: 1B        .byte $1B   ; 
- D 2 - I - 0x03CFF1 0F:CFE1: 1C        .byte $1C   ; 
- D 2 - I - 0x03CFF2 0F:CFE2: 1D        .byte $1D   ; 
- D 2 - I - 0x03CFF3 0F:CFE3: 1E        .byte $1E   ; 
- D 2 - I - 0x03CFF4 0F:CFE4: FF        .byte $FF   ; 



_off009_0x03CFF5_28:
_off009_0x03CFF5_29:
- D 2 - I - 0x03CFF5 0F:CFE5: 84        .byte $84   ; 
- D 2 - I - 0x03CFF6 0F:CFE6: 78        .byte $78   ; 
- D 2 - I - 0x03CFF7 0F:CFE7: 80        .byte $80   ; 
- D 2 - I - 0x03CFF8 0F:CFE8: 7F        .byte $7F   ; 
- D 2 - I - 0x03CFF9 0F:CFE9: 80        .byte $80   ; 
- D 2 - I - 0x03CFFA 0F:CFEA: 5F        .byte $5F   ; 
- D 2 - I - 0x03CFFB 0F:CFEB: 80        .byte $80   ; 
- D 2 - I - 0x03CFFC 0F:CFEC: 47        .byte $47   ; 
- D 2 - I - 0x03CFFD 0F:CFED: 80        .byte $80   ; 
- D 2 - I - 0x03CFFE 0F:CFEE: 35        .byte $35   ; 
- D 2 - I - 0x03CFFF 0F:CFEF: 30        .byte $30   ; 
- D 2 - I - 0x03D000 0F:CFF0: 7F        .byte $7F   ; 
- D 2 - I - 0x03D001 0F:CFF1: 30        .byte $30   ; 
- D 2 - I - 0x03D002 0F:CFF2: 5F        .byte $5F   ; 
- D 2 - I - 0x03D003 0F:CFF3: 30        .byte $30   ; 
- D 2 - I - 0x03D004 0F:CFF4: 47        .byte $47   ; 
- D 2 - I - 0x03D005 0F:CFF5: 30        .byte $30   ; 
- D 2 - I - 0x03D006 0F:CFF6: 35        .byte $35   ; 
- D 2 - I - 0x03D007 0F:CFF7: 10        .byte $10   ; 
- D 2 - I - 0x03D008 0F:CFF8: 7F        .byte $7F   ; 
- D 2 - I - 0x03D009 0F:CFF9: 10        .byte $10   ; 
- D 2 - I - 0x03D00A 0F:CFFA: 5F        .byte $5F   ; 
- D 2 - I - 0x03D00B 0F:CFFB: 10        .byte $10   ; 
- D 2 - I - 0x03D00C 0F:CFFC: 47        .byte $47   ; 
- D 2 - I - 0x03D00D 0F:CFFD: 10        .byte $10   ; 
- D 2 - I - 0x03D00E 0F:CFFE: 35        .byte $35   ; 
- D 2 - I - 0x03D00F 0F:CFFF: FF        .byte $FF   ; 



sub_D009_очистить_оперативку_1:
; 008E-00DF
C - - - - - 0x03D019 0F:D009: A2 8E     LDX #$8E
C - - - - - 0x03D01B 0F:D00B: D0 02     BNE bra_D00F    ; jmp



sub_D00D_очистить_оперативку_2:
; 00A4-00DF
C - - - - - 0x03D01D 0F:D00D: A2 A4     LDX #$A4
bra_D00F:
C - - - - - 0x03D01F 0F:D00F: A9 00     LDA #$00
bra_D011_loop:
C - - - - - 0x03D021 0F:D011: 95 00     STA ram_0000,X
C - - - - - 0x03D023 0F:D013: E8        INX
C - - - - - 0x03D024 0F:D014: E0 E0     CPX #$E0
C - - - - - 0x03D026 0F:D016: D0 F9     BNE bra_D011_loop
C - - - - - 0x03D028 0F:D018: A2 00     LDX #$00
bra_D01A_loop:
C - - - - - 0x03D02A 0F:D01A: 9D 00 04  STA $0400,X
C - - - - - 0x03D02D 0F:D01D: 9D 00 05  STA $0500,X
C - - - - - 0x03D030 0F:D020: 9D 00 06  STA $0600,X
C - - - - - 0x03D036 0F:D026: E8        INX
C - - - - - 0x03D037 0F:D027: D0 F1     BNE bra_D01A_loop
; очистка адресов звукового движка, кроме адресов для очереди звуков
                                        LDX #$FA
bra_D023_loop:
; 0700-07F9
                                        STA $0700 - $01,X
                                        DEX
                                        BNE bra_D023_loop
; bzk optimize, для безопасности лучше X = C1 чтоб охватить весь буфер
C - - - - - 0x03D039 0F:D029: A2 C0     LDX #$C0
bra_D02B_loop:
C - - - - - 0x03D03B 0F:D02B: 9D 00 03  STA $0300,X
C - - - - - 0x03D03E 0F:D02E: E8        INX
C - - - - - 0x03D03F 0F:D02F: D0 FA     BNE bra_D02B_loop
C - - - - - 0x03D041 0F:D031: 60        RTS



sub_D032_поинтеры_после_JSR:
sub_0x03D042_поинтеры_после_JSR:
C - - - - - 0x03D042 0F:D032: 84 04     STY ram_0004
C - - - - - 0x03D044 0F:D034: 85 05     STA ram_0005
C - - - - - 0x03D046 0F:D036: 0A        ASL
C - - - - - 0x03D047 0F:D037: 84 03     STY ram_0003
C - - - - - 0x03D049 0F:D039: A8        TAY
C - - - - - 0x03D04A 0F:D03A: C8        INY
C - - - - - 0x03D04B 0F:D03B: 68        PLA
C - - - - - 0x03D04C 0F:D03C: 85 00     STA ram_0000
C - - - - - 0x03D04E 0F:D03E: 68        PLA
C - - - - - 0x03D04F 0F:D03F: 85 01     STA ram_0001
C - - - - - 0x03D051 0F:D041: B1 00     LDA (ram_0000),Y
C - - - - - 0x03D053 0F:D043: 85 02     STA ram_0002
C - - - - - 0x03D055 0F:D045: C8        INY
C - - - - - 0x03D056 0F:D046: B1 00     LDA (ram_0000),Y
C - - - - - 0x03D058 0F:D048: A4 03     LDY ram_0003
C - - - - - 0x03D05A 0F:D04A: 85 03     STA ram_0003
C - - - - - 0x03D05C 0F:D04C: A5 04     LDA ram_0004
C - - - - - 0x03D05E 0F:D04E: 6C 02 00  JMP (ram_0002)



sub_0x03D08C_обработка_анимации_объекта:
loc_0x03D08C_обработка_анимации_объекта:
; X = индекс объекта, менять нельзя
; Y = тип анимации, смотреть con_D0B3
                                        LDA tbl_D0B3_индекс,Y
                                        STA ram_0000
                                        TAY
C D 2 - - - 0x03D08C 0F:D07C: B9 E7 D0  LDA tbl_D101_колво_картинок_в_анимации,Y
C - - - - - 0x03D08F 0F:D07F: DD D0 05  CMP ram_obj_anim_cnt,X ; 05D0 05D1 05D4 05D5 05D6 
C - - - - - 0x03D092 0F:D082: B0 03     BCS bra_D087
C - - - - - 0x03D094 0F:D084: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
bra_D087:
C - - - - - 0x03D09C 0F:D08C: DE C0 05  DEC ram_obj_anim_timer,X ; 05C0 05C1 05C4 05C5 05C6 
C - - - - - 0x03D09F 0F:D08F: 10 14     BPL bra_D0A5
C - - - - - 0x03D0A1 0F:D091: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D0 05D1 05D4 05D5 05D6 
C - - - - - 0x03D0A4 0F:D094: 10 06     BPL bra_D09C
C - - - - - 0x03D0A6 0F:D096: B9 E7 D0  LDA tbl_D101_колво_картинок_в_анимации,Y
C - - - - - 0x03D0A9 0F:D099: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 05D4 05D5 05D6 
bra_D09C:
C - - - - - 0x03D0AC 0F:D09C: B9 CD D0  LDA tbl_D101_продолжительность_кадра_анимации + $01,Y
C - - - - - 0x03D0AF 0F:D09F: 20 0E E1  JSR sub_E10E_корректировка_значения_A_для_turbo
C - - - - - 0x03D0B2 0F:D0A2: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 05C4 05C5 05C6 
bra_D0A5:
C - - - - - 0x03D0B5 0F:D0A5: 18        CLC
C - - - - - 0x03D0B6 0F:D0A6: A5 00     LDA ram_0000
C - - - - - 0x03D0B8 0F:D0A8: 7D D0 05  ADC ram_obj_anim_cnt,X ; 05D0 05D1 05D4 05D5 05D6 
C - - - - - 0x03D0BB 0F:D0AB: A8        TAY
C - - - - - 0x03D0BC 0F:D0AC: B9 01 D1  LDA tbl_D101_индекс_картинки_анимации + $02,Y
C - - - - - 0x03D0BF 0F:D0AF: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 0404 0405 0406 
C - - - - - 0x03D0C2 0F:D0B2: 60        RTS



tbl_D0B3_индекс:
- D 2 - - - 0x03D0C3 0F:D0B3: 00        .byte off_D101_00_черепахи_ходьба_вперед - tbl_D102
- - - - - - 0x03D0C4 0F:D0B4: 03        .byte off_D104_01 - tbl_D102
- D 2 - - - 0x03D0C5 0F:D0B5: 0E        .byte off_D10F_02_черепахи_ходьба_назад - tbl_D102
- D 2 - - - 0x03D0C6 0F:D0B6: 12        .byte off_D113_03_сверло_рафа - tbl_D102
- D 2 - - - 0x03D0C7 0F:D0B7: 15        .byte off_D116_04_черепахи_бег_вперед - tbl_D102
- D 2 - - - 0x03D0C8 0F:D0B8: 1B        .byte off_D11C_05_casey_бег_вперед - tbl_D102
- D 2 - - - 0x03D0C9 0F:D0B9: 21        .byte off_D122_06_casey_ходьба_вперед - tbl_D102
- D 2 - - - 0x03D0CA 0F:D0BA: 25        .byte off_D126_07_casey_ходьба_назад - tbl_D102
- D 2 - - - 0x03D0CB 0F:D0BB: 25        .byte off_D126_08_casey_бег_назад - tbl_D102
- D 2 - - - 0x03D0CC 0F:D0BC: 0E        .byte off_D10F_09_черепахи_бег_назад - tbl_D102
- D 2 - - - 0x03D0CD 0F:D0BD: 29        .byte off_D12A_0A_hot_бег_вперед - tbl_D102
- D 2 - - - 0x03D0CE 0F:D0BE: 33        .byte off_D134_0B_hot_бег_назад - tbl_D102
- D 2 - - - 0x03D0CF 0F:D0BF: 2F        .byte off_D130_0C_hot_ходьба_вперед - tbl_D102
- D 2 - - - 0x03D0D0 0F:D0C0: 33        .byte off_D134_0D_hot_ходьба_назад - tbl_D102
- D 2 - - - 0x03D0D1 0F:D0C1: 37        .byte off_D138_0E_shred_бег_вперед - tbl_D102
- D 2 - - - 0x03D0D2 0F:D0C2: 3D        .byte off_D13E_0F_shred_бег_назад - tbl_D102
- D 2 - - - 0x03D0D3 0F:D0C3: 41        .byte off_D142_10_shred_ходьба_вперед - tbl_D102
- D 2 - - - 0x03D0D4 0F:D0C4: 45        .byte off_D146_11_shred_ходьба_назад - tbl_D102
- D 2 - - - 0x03D0D5 0F:D0C5: 49        .byte off_D14A_12_волна_шрушера - tbl_D102
- D 2 - - - 0x03D0D6 0F:D0C6: 4C        .byte off_D14D_13_черепахи_сальто_вперед - tbl_D102
- D 2 - - - 0x03D0D7 0F:D0C7: 50        .byte off_D151_14_черепахи_сальто_назад - tbl_D102
- D 2 - - - 0x03D0D8 0F:D0C8: 54        .byte off_D155_15_casey_сальто_вперед - tbl_D102
- D 2 - - - 0x03D0D9 0F:D0C9: 59        .byte off_D15A_16_casey_сальто_назад - tbl_D102
- D 2 - - - 0x03D0DA 0F:D0CA: 5E        .byte off_D15F_17_мяч_хота - tbl_D102
- D 2 - - - 0x03D0DB 0F:D0CB: 61        .byte off_D162_18_песок_казея - tbl_D102



tbl_D102:
tbl_D101_колво_картинок_в_анимации:
tbl_D101_продолжительность_кадра_анимации:
tbl_D101_индекс_картинки_анимации:
off_D101_00_черепахи_ходьба_вперед:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $0A   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D111 0F:D101: 8A        .byte $8A   ; 00
- D 2 - - - 0x03D112 0F:D102: 89        .byte $89   ; 01
- D 2 - - - 0x03D113 0F:D103: 88        .byte $88   ; 02
@end:



off_D104_01:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $02   ; продолжительность кадра анимации
; индексы картинки анимации
- - - - - - 0x03D114 0F:D104: AF        .byte $AF   ; 00
- - - - - - 0x03D115 0F:D105: AF        .byte $AF   ; 01
- - - - - - 0x03D116 0F:D106: AE        .byte $AE   ; 02
- - - - - - 0x03D117 0F:D107: AF        .byte $AF   ; 03
- - - - - - 0x03D118 0F:D108: B0        .byte $B0   ; 04
- - - - - - 0x03D119 0F:D109: AF        .byte $AF   ; 05
- - - - - - 0x03D11A 0F:D10A: AE        .byte $AE   ; 06
- - - - - - 0x03D11B 0F:D10B: AF        .byte $AF   ; 07
- - - - - - 0x03D11C 0F:D10C: B0        .byte $B0   ; 08
- - - - - - 0x03D11D 0F:D10D: AF        .byte $AF   ; 09
- - - - - - 0x03D11E 0F:D10E: AE        .byte $AE   ; 0A
@end:



off_D10F_02_черепахи_ходьба_назад:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $08   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D11F 0F:D10F: 8E        .byte $8E   ; 00
- D 2 - - - 0x03D120 0F:D110: 8D        .byte $8D   ; 01
- D 2 - - - 0x03D121 0F:D111: 8C        .byte $8C   ; 02
- D 2 - - - 0x03D122 0F:D112: 8B        .byte $8B   ; 03
@end:



off_D113_03_сверло_рафа:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $03   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D123 0F:D113: AD        .byte $AD   ; 00
- D 2 - - - 0x03D124 0F:D114: AC        .byte $AC   ; 01
- D 2 - - - 0x03D125 0F:D115: AB        .byte $AB   ; 02
@end:



off_D116_04_черепахи_бег_вперед:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $05   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D126 0F:D116: 87        .byte $87   ; 00
- D 2 - - - 0x03D127 0F:D117: 86        .byte $86   ; 01
- D 2 - - - 0x03D128 0F:D118: 83        .byte $83   ; 02
- D 2 - - - 0x03D129 0F:D119: 85        .byte $85   ; 03
- D 2 - - - 0x03D12A 0F:D11A: 84        .byte $84   ; 04
- D 2 - - - 0x03D12B 0F:D11B: 83        .byte $83   ; 05
@end:



off_D11C_05_casey_бег_вперед:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $05   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D12C 0F:D11C: 86        .byte $86   ; 00
- D 2 - - - 0x03D12D 0F:D11D: 85        .byte $85   ; 01
- D 2 - - - 0x03D12E 0F:D11E: 82        .byte $82   ; 02
- D 2 - - - 0x03D12F 0F:D11F: 84        .byte $84   ; 03
- D 2 - - - 0x03D130 0F:D120: 83        .byte $83   ; 04
- D 2 - - - 0x03D131 0F:D121: 82        .byte $82   ; 05
@end:



off_D122_06_casey_ходьба_вперед:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $07   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D132 0F:D122: 8A        .byte $8A   ; 00
- D 2 - - - 0x03D133 0F:D123: 89        .byte $89   ; 01
- D 2 - - - 0x03D134 0F:D124: 88        .byte $88   ; 02
- D 2 - - - 0x03D135 0F:D125: 87        .byte $87   ; 03
@end:



off_D126_07_casey_ходьба_назад:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $07   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D136 0F:D126: 8D        .byte $8D   ; 00
- D 2 - - - 0x03D137 0F:D127: 8C        .byte $8C   ; 01
- D 2 - - - 0x03D138 0F:D128: 8B        .byte $8B   ; 02
- D 2 - - - 0x03D139 0F:D129: 80        .byte $80   ; 03
@end:



off_D126_08_casey_бег_назад:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $06   ; продолжительность кадра анимации
; индексы картинки анимации
                                        .byte $8D   ; 00
                                        .byte $8C   ; 01
                                        .byte $8B   ; 02
                                        .byte $80   ; 03
@end:



off_D10F_09_черепахи_бег_назад:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $06   ; продолжительность кадра анимации
; индексы картинки анимации
                                        .byte $8E   ; 00
                                        .byte $8D   ; 01
                                        .byte $8C   ; 02
                                        .byte $8B   ; 03
@end:



off_D12A_0A_hot_бег_вперед:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $06   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D13A 0F:D12A: 85        .byte $85   ; 00
- D 2 - - - 0x03D13B 0F:D12B: 87        .byte $87   ; 01
- D 2 - - - 0x03D13C 0F:D12C: 86        .byte $86   ; 02
- D 2 - - - 0x03D13D 0F:D12D: 85        .byte $85   ; 03
- D 2 - - - 0x03D13E 0F:D12E: 84        .byte $84   ; 04
- D 2 - - - 0x03D13F 0F:D12F: 83        .byte $83   ; 05
@end:



off_D134_0B_hot_бег_назад:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $08   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D144 0F:D134: 82        .byte $82   ; 00
- D 2 - - - 0x03D145 0F:D135: 8D        .byte $8D   ; 01
- D 2 - - - 0x03D146 0F:D136: 8C        .byte $8C   ; 02
- D 2 - - - 0x03D147 0F:D137: 8B        .byte $8B   ; 03
@end:



off_D130_0C_hot_ходьба_вперед:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $0A   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D140 0F:D130: 89        .byte $89   ; 00
- D 2 - - - 0x03D141 0F:D131: 8A        .byte $8A   ; 01
- D 2 - - - 0x03D142 0F:D132: 89        .byte $89   ; 02
- D 2 - - - 0x03D143 0F:D133: 88        .byte $88   ; 03
@end:



off_D134_0D_hot_ходьба_назад:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $0A   ; продолжительность кадра анимации
; индексы картинки анимации
                                        .byte $82   ; 00
                                        .byte $8D   ; 01
                                        .byte $8C   ; 02
                                        .byte $8B   ; 03
@end:



off_D138_0E_shred_бег_вперед:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $08   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D148 0F:D138: 87        .byte $87   ; 00
- D 2 - - - 0x03D149 0F:D139: 86        .byte $86   ; 01
- D 2 - - - 0x03D14A 0F:D13A: 83        .byte $83   ; 02
- D 2 - - - 0x03D14B 0F:D13B: 85        .byte $85   ; 03
- D 2 - - - 0x03D14C 0F:D13C: 84        .byte $84   ; 04
- D 2 - - - 0x03D14D 0F:D13D: 83        .byte $83   ; 05
@end:



off_D13E_0F_shred_бег_назад:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $06   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D14E 0F:D13E: 88        .byte $88   ; 00
- D 2 - - - 0x03D14F 0F:D13F: 89        .byte $89   ; 01
- D 2 - - - 0x03D150 0F:D140: 8A        .byte $8A   ; 02
- D 2 - - - 0x03D151 0F:D141: 8B        .byte $8B   ; 03
@end:



off_D142_10_shred_ходьба_вперед:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $08   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D152 0F:D142: 8B        .byte $8B   ; 00
- D 2 - - - 0x03D153 0F:D143: 8A        .byte $8A   ; 01
- D 2 - - - 0x03D154 0F:D144: 89        .byte $89   ; 02
- D 2 - - - 0x03D155 0F:D145: 88        .byte $88   ; 03
@end:



off_D146_11_shred_ходьба_назад:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $08   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D156 0F:D146: 88        .byte $88   ; 00
- D 2 - - - 0x03D157 0F:D147: 89        .byte $89   ; 01
- D 2 - - - 0x03D158 0F:D148: 8A        .byte $8A   ; 02
- D 2 - - - 0x03D159 0F:D149: 8B        .byte $8B   ; 03
@end:



off_D14A_12_волна_шрушера:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $03   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D15A 0F:D14A: AD        .byte $AD   ; 00
- D 2 - - - 0x03D15B 0F:D14B: AC        .byte $AC   ; 01
- D 2 - - - 0x03D15C 0F:D14C: AB        .byte $AB   ; 02
@end:



off_D14D_13_черепахи_сальто_вперед:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $06   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D15D 0F:D14D: A0        .byte $A0   ; 00
- D 2 - - - 0x03D15E 0F:D14E: 9F        .byte $9F   ; 01
- D 2 - - - 0x03D15F 0F:D14F: 9E        .byte $9E   ; 02
- D 2 - - - 0x03D160 0F:D150: 9D        .byte $9D   ; 03
@end:



off_D151_14_черепахи_сальто_назад:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $06   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D161 0F:D151: 9D        .byte $9D   ; 00
- D 2 - - - 0x03D162 0F:D152: 9E        .byte $9E   ; 01
- D 2 - - - 0x03D163 0F:D153: 9F        .byte $9F   ; 02
- D 2 - - - 0x03D164 0F:D154: A0        .byte $A0   ; 03
@end:



off_D155_15_casey_сальто_вперед:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $06   ; продолжительность кадра анимации
; индексы картинки анимации
- - - - - - 0x03D165 0F:D155: AA        .byte $AA   ; 00
- - - - - - 0x03D166 0F:D156: D8        .byte $D8   ; 01
- D 2 - - - 0x03D167 0F:D157: C4        .byte $C4   ; 02
- D 2 - - - 0x03D168 0F:D158: D7        .byte $D7   ; 03
- D 2 - - - 0x03D169 0F:D159: D6        .byte $D6   ; 04
@end:



off_D15A_16_casey_сальто_назад:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $06   ; продолжительность кадра анимации
; индексы картинки анимации
- - - - - - 0x03D16A 0F:D15A: D6        .byte $D6   ; 00
- - - - - - 0x03D16B 0F:D15B: D7        .byte $D7   ; 01
- D 2 - - - 0x03D16C 0F:D15C: C4        .byte $C4   ; 02
- D 2 - - - 0x03D16D 0F:D15D: B5        .byte $B5   ; 03
- D 2 - - - 0x03D16E 0F:D15E: AA        .byte $AA   ; 04
@end:



off_D15F_17_мяч_хота:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $04   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D16F 0F:D15F: C2        .byte $C2   ; 00
- D 2 - - - 0x03D170 0F:D160: C1        .byte $C1   ; 01
- D 2 - - - 0x03D171 0F:D161: C0        .byte $C0   ; 02
@end:



off_D162_18_песок_казея:
                                        .byte @end - * - $03  ; колво картинок в анимации
                                        .byte $03   ; продолжительность кадра анимации
; индексы картинки анимации
- D 2 - - - 0x03D172 0F:D162: CB        .byte $CB   ; 00
- D 2 - - - 0x03D173 0F:D163: CA        .byte $CA   ; 01
- D 2 - - - 0x03D174 0F:D164: C9        .byte $C9   ; 02
- D 2 - - - 0x03D175 0F:D165: C8        .byte $C8   ; 03
@end:



sub_0x03D17A:
loc_0x03D17A:
C D 2 - - - 0x03D17A 0F:D16A: 85 01     STA ram_0001
C - - - - - 0x03D17C 0F:D16C: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x03D17F 0F:D16F: 48        PHA
C - - - - - 0x03D180 0F:D170: 20 65 DD  JSR sub_DD65_повернуть_объект_в_противоположную_сторону_по_горизонтали
C - - - - - 0x03D183 0F:D173: A5 01     LDA ram_0001
C - - - - - 0x03D185 0F:D175: 20 7D D1  JSR sub_D17D
C - - - - - 0x03D188 0F:D178: 68        PLA
C - - - - - 0x03D189 0F:D179: 9D 10 05  STA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x03D18C 0F:D17C: 60        RTS



sub_D17D:
loc_D17D:
sub_0x03D18D:
C D 2 - - - 0x03D18D 0F:D17D: 85 01     STA ram_0001
C - - - - - 0x03D18F 0F:D17F: 29 0F     AND #$0F
C - - - - - 0x03D191 0F:D181: 85 00     STA ram_0000
C - - - - - 0x03D193 0F:D183: A5 01     LDA ram_0001
C - - - - - 0x03D195 0F:D185: 29 F0     AND #$F0
C - - - - - 0x03D197 0F:D187: 85 01     STA ram_0001
C - - - - - 0x03D199 0F:D189: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 0514 0515 0516 0517 
C - - - - - 0x03D19C 0F:D18C: 0A        ASL
loc_D18D:
C D 2 - - - 0x03D19D 0F:D18D: 10 11     BPL bra_D1A0
C - - - - - 0x03D19F 0F:D18F: A5 00     LDA ram_0000
C - - - - - 0x03D1A1 0F:D191: 49 FF     EOR #$FF
C - - - - - 0x03D1A3 0F:D193: 85 00     STA ram_0000
C - - - - - 0x03D1A5 0F:D195: A5 01     LDA ram_0001
C - - - - - 0x03D1A7 0F:D197: 20 FC D1  JSR sub_D1FC_EOR
C - - - - - 0x03D1AA 0F:D19A: 85 01     STA ram_0001
C - - - - - 0x03D1AC 0F:D19C: D0 02     BNE bra_D1A0
C - - - - - 0x03D1AE 0F:D19E: E6 00     INC ram_0000
bra_D1A0:
C - - - - - 0x03D1B0 0F:D1A0: A5 01     LDA ram_0001
C - - - - - 0x03D1B2 0F:D1A2: 9D 90 04  STA ram_obj_spd_X_lo,X ; 0490 0491 0494 0495 0496 0497 
C - - - - - 0x03D1B5 0F:D1A5: A5 00     LDA ram_0000
C - - - - - 0x03D1B7 0F:D1A7: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 0481 0484 0485 0486 0487 
C - - - - - 0x03D1BA 0F:D1AA: AD 26 01  LDA ram_option_speed
C - - - - - 0x03D1BD 0F:D1AD: F0 26     BEQ bra_D1D5_RTS
C - - - - - 0x03D1BF 0F:D1AF: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x03D1C1 0F:D1B1: C9 07     CMP #$07
                                        BEQ bra_D1C3
                                        CMP #$19
C - - - - - 0x03D1C3 0F:D1B3: D0 20     BNE bra_D1D5_RTS
bra_D1C3:
C - - - - - 0x03D1C5 0F:D1B5: 46 00     LSR ram_0000
C - - - - - 0x03D1C7 0F:D1B7: 66 01     ROR ram_0001
C - - - - - 0x03D1C9 0F:D1B9: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 0484 0485 0486 0487 
C - - - - - 0x03D1CC 0F:D1BC: 10 06     BPL bra_D1C4
C - - - - - 0x03D1CE 0F:D1BE: A5 00     LDA ram_0000
C - - - - - 0x03D1D0 0F:D1C0: 09 C0     ORA #$C0
C - - - - - 0x03D1D2 0F:D1C2: 85 00     STA ram_0000
bra_D1C4:
C - - - - - 0x03D1D4 0F:D1C4: 18        CLC
C - - - - - 0x03D1D5 0F:D1C5: A5 01     LDA ram_0001
C - - - - - 0x03D1D7 0F:D1C7: 7D 90 04  ADC ram_obj_spd_X_lo,X ; 0490 0491 0494 0495 0496 0497 
C - - - - - 0x03D1DA 0F:D1CA: 9D 90 04  STA ram_obj_spd_X_lo,X ; 0490 0491 0494 0495 0496 0497 
C - - - - - 0x03D1DD 0F:D1CD: A5 00     LDA ram_0000
C - - - - - 0x03D1DF 0F:D1CF: 7D 80 04  ADC ram_obj_spd_X_hi,X ; 0480 0481 0484 0485 0486 0487 
C - - - - - 0x03D1E2 0F:D1D2: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 0481 0484 0485 0486 0487 
bra_D1D5_RTS:
C - - - - - 0x03D1E5 0F:D1D5: 60        RTS



loc_0x03D1E6:
C D 2 - - - 0x03D1E6 0F:D1D6: 85 01     STA ram_0001
C - - - - - 0x03D1E8 0F:D1D8: 29 0F     AND #$0F
C - - - - - 0x03D1EA 0F:D1DA: 85 00     STA ram_0000
C - - - - - 0x03D1EC 0F:D1DC: A5 01     LDA ram_0001
C - - - - - 0x03D1EE 0F:D1DE: 29 F0     AND #$F0
C - - - - - 0x03D1F0 0F:D1E0: 85 01     STA ram_0001
C - - - - - 0x03D1F2 0F:D1E2: BC 20 05  LDY ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x03D1F5 0F:D1E5: C0 01     CPY #$01
C - - - - - 0x03D1F7 0F:D1E7: D0 0B     BNE bra_D1F4
C - - - - - 0x03D1F9 0F:D1E9: 18        CLC
C - - - - - 0x03D1FA 0F:D1EA: 69 40     ADC #< $0040
C - - - - - 0x03D1FC 0F:D1EC: 85 01     STA ram_0001
C - - - - - 0x03D1FE 0F:D1EE: A5 00     LDA ram_0000
C - - - - - 0x03D200 0F:D1F0: 69 00     ADC #> $0040
C - - - - - 0x03D202 0F:D1F2: 85 00     STA ram_0000
bra_D1F4:
C - - - - - 0x03D204 0F:D1F4: B5 91     LDA ram_btn_hold,X
; con_btn_Left
; N = 1 только если кнопка была удержана. можно было бы 
; сделать обычный AND, но на выходе проверяется N, а не Z
C - - - - - 0x03D206 0F:D1F6: 4A        LSR
C - - - - - 0x03D207 0F:D1F7: 4A        LSR
C - - - - - 0x03D208 0F:D1F8: 6A        ROR
C - - - - - 0x03D209 0F:D1F9: 4C 8D D1  JMP loc_D18D



sub_D1FC_EOR:
loc_D1FC_EOR:
sub_0x03D20C_EOR:
C D 2 - - - 0x03D20C 0F:D1FC: 49 FF     EOR #$FF
C - - - - - 0x03D20E 0F:D1FE: 18        CLC
C - - - - - 0x03D20F 0F:D1FF: 69 01     ADC #$01
C - - - - - 0x03D211 0F:D201: 60        RTS



sub_D202_ASLx4:
sub_0x03D212_ASLx4:
C - - - - - 0x03D212 0F:D202: 0A        ASL
C - - - - - 0x03D213 0F:D203: 0A        ASL
C - - - - - 0x03D214 0F:D204: 0A        ASL
C - - - - - 0x03D215 0F:D205: 0A        ASL
C - - - - - 0x03D216 0F:D206: 60        RTS



sub_D207_LSRx4:
loc_D207_LSRx4:
sub_0x03D217_LSRx4:
C D 2 - - - 0x03D217 0F:D207: 4A        LSR
C - - - - - 0x03D218 0F:D208: 4A        LSR
C - - - - - 0x03D219 0F:D209: 4A        LSR
C - - - - - 0x03D21A 0F:D20A: 4A        LSR
C - - - - - 0x03D21B 0F:D20B: 60        RTS



sub_D20C_получить_разницу_pos_X_двух_объектов:
sub_0x03D21C_получить_разницу_pos_X_двух_объектов:
C - - - - - 0x03D21C 0F:D20C: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 0445 0446 
C - - - - - 0x03D21F 0F:D20F: 38        SEC
C - - - - - 0x03D220 0F:D210: F9 40 04  SBC ram_obj_pos_X_lo,Y ; 0440 0441 0442 0444 0446 
C - - - - - 0x03D223 0F:D213: B0 23     BCS bra_D216_RTS
C - - - - - 0x03D225 0F:D215: 4C FC D1  JMP loc_D1FC_EOR
bra_D216_RTS:
                                        RTS



sub_0x03D228_вычислить_поворот_игрока_относительно_другого:
loc_0x03D228_вычислить_поворот_игрока_относительно_другого:
C - - - - - 0x03D236 0F:D226: 8A        TXA
C - - - - - 0x03D237 0F:D227: 49 01     EOR #$01
C - - - - - 0x03D239 0F:D229: 29 01     AND #$01
C - - - - - 0x03D23B 0F:D22B: A8        TAY
C - - - - - 0x03D23C 0F:D22C: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 0444 0445 
C - - - - - 0x03D23F 0F:D22F: D9 40 04  CMP ram_obj_pos_X_lo,Y ; 0440 0441 
C - - - - - 0x03D242 0F:D232: A9 00     LDA #$00
C - - - - - 0x03D244 0F:D234: 6A        ROR
C - - - - - 0x03D245 0F:D235: 6A        ROR
C - - - - - 0x03D246 0F:D236: 85 00     STA ram_0000
C - - - - - 0x03D22B 0F:D21B: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 0514 0515 
C - - - - - 0x03D22E 0F:D21E: 29 BF     AND #$40 ^ $FF
C - - - - - 0x03D230 0F:D220: 05 00     ORA ram_0000
C - - - - - 0x03D232 0F:D222: 9D 10 05  STA ram_obj_flip,X ; 0510 0511 0514 0515 
C - - - - - 0x03D235 0F:D225: 60        RTS



loc_0x03D266_записать_A_и_FF_в_буфер:
C D 2 - - - 0x03D266 0F:D256: 20 5D D2  LDX ram_index_ppu_buffer
                                        STA ram_ppu_buffer,X
                                        INX
                                        LDA #$FF
                                        STA ram_ppu_buffer,X
                                        INX
                                        STX ram_index_ppu_buffer
                                        RTS



sub_D25B_записать_FF_в_буфер_с_чтением_индекса:
sub_0x03D26B_записать_FF_в_буфер_с_чтением_индекса:
loc_0x03D26B_записать_FF_в_буфер_с_чтением_индекса:
C D 2 - - - 0x03D26B 0F:D25B: A9 FF     LDX ram_index_ppu_buffer
loc_D259_записать_FF_в_буфер_без_чтения_индекса:
sub_D259_записать_FF_в_буфер_без_чтения_индекса:
sub_0x03D269_записать_FF_в_буфер_без_чтения_индекса:
C D 2 - - - 0x03D269 0F:D259: 86 25     LDA #$FF
                                        STA ram_ppu_buffer,X
                                        INX
                                        STX ram_index_ppu_buffer
                                        RTS



sub_D25D_записать_A_в_буфер_с_чтением_индекса:
sub_0x03D26D_записать_A_в_буфер_с_чтением_индекса:
loc_0x03D26D_записать_A_в_буфер_с_чтением_индекса:
C D 2 - - - 0x03D26D 0F:D25D: A6 25     LDX ram_index_ppu_buffer
sub_D25F_записать_A_в_буфер_с_сохранением_индекса:
sub_0x03D26F_записать_A_в_буфер_с_сохранением_индекса:
                                        STA ram_ppu_buffer,X
                                        INX
                                        STX ram_index_ppu_buffer
                                        RTS



sub_D266_записать_A_в_буфер_без_сохранения_индекса:
sub_0x03D276_записать_A_в_буфер_без_сохранения_индекса:
C D 2 - - - 0x03D276 0F:D266: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x03D279 0F:D269: E8        INX
C - - - - - 0x03D27A 0F:D26A: 60        RTS



sub_D26B_записать_адрес_2006_Y_и_A_в_буфер:
sub_0x03D27B_записать_адрес_2006_Y_и_A_в_буфер:
; A = 2006 hi
; Y = 2006 lo
; bzk optimize
C - - - - - 0x03D27B 0F:D26B: 48        PHA ; 2006 hi
                                        LDX ram_index_ppu_buffer
C - - - - - 0x03D27C 0F:D26C: A9 01     LDA #con_buf_mode_01
C - - - - - 0x03D27E 0F:D26E: 20 5D D2  STA ram_ppu_buffer,X
                                        INX
C - - - - - 0x03D281 0F:D271: 98        TYA ; 2006 lo
C - - - - - 0x03D282 0F:D272: 20 66 D2  STA ram_ppu_buffer,X
                                        INX
C - - - - - 0x03D285 0F:D275: 68        PLA ; 2006 hi
C - - - - - 0x03D286 0F:D276: 4C 5F D2  STA ram_ppu_buffer,X
                                        INX
                                        STX ram_index_ppu_buffer
                                        RTS



sub_D279:
ofs_000_D279_04_чтото_общее:
C - - - - - 0x03D289 0F:D279: 20 04 D3  JSR sub_D304_попытка_поставить_паузу
C - - - - - 0x03D28C 0F:D27C: A5 97     LDA ram_pause_flag
C - - - - - 0x03D28E 0F:D27E: F0 01     BEQ bra_D281_не_на_паузе
C - - - - - 0x03D290 0F:D280: 60        RTS
bra_D281_не_на_паузе:
C - - - - - 0x03D291 0F:D281: A5 94     LDA ram_0094_скрипт
C - - - - - 0x03D293 0F:D283: 20 32 D0  JSR sub_D032_поинтеры_после_JSR
- D 2 - I - 0x03D296 0F:D286: 90 D2     .word ofs_002_D290_00
- D 2 - I - 0x03D298 0F:D288: AD D2     .word ofs_002_D2AD_01
- D 2 - I - 0x03D29A 0F:D28A: BB D2     .word ofs_002_D2BB_02
- D 2 - I - 0x03D29C 0F:D28C: 48 F7     .word ofs_002_F748_03_обработка_экрана_с_выбором_арены
- D 2 - I - 0x03D29E 0F:D28E: F7 D2     .word ofs_002_D2F7_04_обработка_стадии_игры



ofs_002_D290_00:
C - - J - - 0x03D2A0 0F:D290: 20 09 DE  JSR sub_DE09_очистить_очки_обоих_игроков
C - - - - - 0x03D2A3 0F:D293: A9 FF     LDA #$FF
C - - - - - 0x03D2A5 0F:D295: 85 98     STA ram_0098_flag
; проверка на чит с дохрена контами
                                        LDA ram_continue
                                        CMP #$03
                                        BCS bra_D29F
C - - - - - 0x03D2A7 0F:D297: AC 25 01  LDY ram_option_difficulty
                                        LDA tbl_BFFC,Y
C - - - - - 0x03D2AD 0F:D29D: 85 31     STA ram_continue
bra_D29F:
C - - - - - 0x03D2AF 0F:D29F: A9 00     LDA #$00
C - - - - - 0x03D2B1 0F:D2A1: 85 89     STA ram_0089
bra_D2A3:
loc_D2A3:
C D 2 - - - 0x03D2B3 0F:D2A3: E6 94     INC ram_0094_скрипт    ; 01 03
C - - - - - 0x03D2B5 0F:D2A5: A9 00     LDA #$00
C - - - - - 0x03D2B7 0F:D2A7: 85 95     STA ram_0095_стадия_игры
C - - - - - 0x03D2B9 0F:D2A9: 60        RTS



tbl_BFFC:
; перемещено из банка 10
- D 1 - - - 0x02400C 08:BFFC: 02        .byte $02   ; 00
- D 1 - - - 0x02400D 08:BFFD: 01        .byte $01   ; 01
- - - - - - 0x02400E 08:BFFE: 00        .byte $00   ; 02
- D 1 - - - 0x02400F 08:BFFF: 00        .byte $00   ; 03



ofs_002_D2AD_01:
C - - - - - 0x03D2BF 0F:D2AF: 20 00 F6  JSR sub_F600_swap_prg_16_no_return
C - - - - - 0x03D2C2 0F:D2B2: 20 D4 BE  JSR sub_0x02FEE4
C - - - - - 0x03D2C6 0F:D2B6: E6 94     INC ram_0094_скрипт    ; 02
C - - - - - 0x03D2C8 0F:D2B8: 4C 88 FB  JMP loc_FB88_disable_irq



ofs_002_D2BB_02:
C - - J - - 0x03D2CB 0F:D2BB: A9 00     LDA #$00
C - - - - - 0x03D2CD 0F:D2BD: 8D 49 06  STA ram_plr_колво_побед_в_раундах
C - - - - - 0x03D2D0 0F:D2C0: 8D 4A 06  STA ram_plr_колво_побед_в_раундах + $01
C - - - - - 0x03D2D3 0F:D2C3: A5 26     LDA ram_0026_flag
C - - - - - 0x03D2D5 0F:D2C5: D0 0F     BNE bra_D2D6
C - - - - - 0x03D2D7 0F:D2C7: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03D2D9 0F:D2C9: C9 04     CMP #$04
C - - - - - 0x03D2DB 0F:D2CB: F0 D6     BEQ bra_D2A3    ; if con_gm_tournament
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
C - - - - - 0x03D2DD 0F:D2CD: 20 F9 F6  JSR sub_F6F9
C - - - - - 0x03D2E0 0F:D2D0: AD 3E 06  LDA ram_063E
C - - - - - 0x03D2E3 0F:D2D3: F0 CE     BEQ bra_D2A3
C - - - - - 0x03D2E5 0F:D2D5: 60        RTS
bra_D2D6:
C - - - - - 0x03D2E6 0F:D2D6: A5 28     LDA ram_random_1
; con_новые_персы
C - - - - - 0x03D2E8 0F:D2D8: 29 07     AND #$07
C - - - - - 0x03D2EA 0F:D2DA: A8        TAY
C - - - - - 0x03D2EB 0F:D2DB: B9 EE D2  LDA tbl_D2EE,Y
C - - - - - 0x03D2EE 0F:D2DE: 8D 50 05  STA ram_obj_id
C - - - - - 0x03D2F1 0F:D2E1: 85 A2     STA ram_plr_id
C - - - - - 0x03D2F3 0F:D2E3: B9 EF D2  LDA tbl_D2EE + $01,Y
C - - - - - 0x03D2F6 0F:D2E6: 8D 51 05  STA ram_obj_id + $01
C - - - - - 0x03D2F9 0F:D2E9: 85 A3     STA ram_plr_id + $01
C - - - - - 0x03D2FB 0F:D2EB: 4C A3 D2  JMP loc_D2A3



tbl_D2EE:
- D 2 - - - 0x03D2FE 0F:D2EE: 00        .byte $00   ; 00
- D 2 - - - 0x03D2FF 0F:D2EF: 03        .byte $03   ; 01
- - - - - - 0x03D300 0F:D2F0: 05        .byte $05   ; 02
- - - - - - 0x03D301 0F:D2F1: 04        .byte $04   ; 03
- - - - - - 0x03D302 0F:D2F2: 01        .byte $01   ; 04
- - - - - - 0x03D303 0F:D2F3: 06        .byte $06   ; 05
- D 2 - - - 0x03D304 0F:D2F4: 02        .byte $02   ; 06
- D 2 - - - 0x03D305 0F:D2F5: 03        .byte $03   ; 07



ofs_002_D2F7_04_обработка_стадии_игры:
C - - J - - 0x03D307 0F:D2F7: 20 87 E1  JSR sub_E187_обработчик_стадии_игры
C - - - - - 0x03D30A 0F:D2FA: 4C A1 E9  JMP loc_E9A1



sub_D304_попытка_поставить_паузу:
C - - - - - 0x03D314 0F:D304: A5 26     LDA ram_0026_flag
C - - - - - 0x03D316 0F:D306: 05 98     ORA ram_0098_flag
C - - - - - 0x03D318 0F:D308: 05 24     ORA ram_таймер_выкл_рендеринга
C - - - - - 0x03D31A 0F:D30A: D0 F7     BNE bra_D332_RTS
C - - - - - 0x03D31C 0F:D30C: A4 8E     LDY ram_btn_press
C - - - - - 0x03D31E 0F:D30E: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03D320 0F:D310: F0 06     BEQ bra_D318
C - - - - - 0x03D322 0F:D312: C9 02     CMP #$02
C - - - - - 0x03D324 0F:D314: F0 02     BEQ bra_D318
; con_gm_vs_player
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03D326 0F:D316: A4 90     LDY ram_sum_btn_press
bra_D318:
; con_gm_story
; con_gm_vs_cpu
C - - - - - 0x03D328 0F:D318: 98        TYA
C - - - - - 0x03D329 0F:D319: A4 97     LDY ram_pause_flag
C - - - - - 0x03D32B 0F:D31B: D0 0D     BNE bra_D32A_на_паузе
C - - - - - 0x03D32D 0F:D31D: 29 10     AND #con_btn_Start
C - - - - - 0x03D32F 0F:D31F: F0 11     BEQ bra_D332_RTS
C - - - - - 0x03D331 0F:D321: A9 01     LDA #$01
bra_D323:
C - - - - - 0x03D333 0F:D323: 85 97     STA ram_pause_flag
C - - - - - 0x03D335 0F:D325: A9 2D     LDA #con_sfx_pause
C - - - - - 0x03D337 0F:D327: 4C 90 F6  JMP loc_F690_записать_звук_сохранив_X_Y
bra_D32A_на_паузе:
C - - - - - 0x03D33A 0F:D32A: 29 10     AND #$10
C - - - - - 0x03D33C 0F:D32C: F0 04     BEQ bra_D332_RTS
C - - - - - 0x03D33E 0F:D32E: A9 00     LDA #$00
C - - - - - 0x03D340 0F:D330: F0 F1     BEQ bra_D323    ; jmp
bra_D332_RTS:
C - - - - - 0x03D342 0F:D332: 60        RTS



sub_D333_выбрать_речь_перед_финальным_боем_в_story:
C - - - - - 0x03D343 0F:D333: AD 25 01  LDA ram_option_difficulty
C - - - - - 0x03D346 0F:D336: C9 03     CMP #$03
C - - - - - 0x03D348 0F:D338: B0 03     BCS bra_D33D
C - - - - - 0x03D34A 0F:D33A: A9 05     LDA #con_speech_taste_defeat
C - - - - - 0x03D34C 0F:D33C: 2C        .byte $2C   ; BIT
bra_D33D:
C - - - - - 0x03D34D 0F:D33D: A9 08     LDA #con_speech_true_power
C - - - - - 0x03D34F 0F:D33F: 85 B6     STA ram_speech
C - - - - - 0x03D351 0F:D341: 60        RTS



sub_D346_записать_3_цвета_в_буфер:
loc_D346_записать_3_цвета_в_буфер:
sub_0x03D356_записать_3_цвета_в_буфер:
loc_0x03D356_записать_3_цвета_в_буфер:
; A = индекс палитры
; X = индекс для ram_pal_buffer (смотреть tip_индекс_буфера_палитры)
    ; 00 = палитра фона 00
    ; 01 = палитра фона 01
    ; 02 = палитра фона 02
    ; 03 = палитра фона 03
    ; 04 = палитра спрайтов 00
    ; 05 = палитра спрайтов 01
    ; 06 = палитра спрайтов 02
    ; 07 = палитра спрайтов 03
C D 2 - - - 0x03D356 0F:D346: 84 04     STY ram_0004
C - - - - - 0x03D358 0F:D348: 86 03     STX ram_0003
                                        STA ram_0005
C - - - - - 0x03D366 0F:D356: 20 E7 F5  JSR sub_F5E7_swap_prg_16
C - - - - - 0x03D369 0F:D359: 20 40 AF  JSR sub_0x02EF50_записать_3_цвета_в_буфер
                                        JSR sub_F617_restore_prg
                                        LDX ram_0003
                                        LDY ram_0004
C - - - - - 0x03D383 0F:D373: 60        RTS



sub_D394_записать_палитру_для_фона_и_спрайтов:
sub_0x03D3A4_записать_палитру_для_фона_и_спрайтов:
; A = палитра спрайтов
; Y = палитра фона
C - - - - - 0x03D3A4 0F:D394: 48        PHA
C - - - - - 0x03D3A5 0F:D395: 98        TYA
C - - - - - 0x03D3A6 0F:D396: 20 B0 D3  JSR sub_D3B0_записать_палитру_для_фона
C - - - - - 0x03D3A9 0F:D399: 68        PLA
; tip_индекс_буфера_палитры + $04
; tip_индекс_буфера_палитры + $05
; tip_индекс_буфера_палитры + $06
; tip_индекс_буфера_палитры + $07
C - - - - - 0x03D3AA 0F:D39A: A2 04     LDX #$04
bra_D39C:
C - - - - - 0x03D3AC 0F:D39C: A0 04     LDY #$04
C - - - - - 0x03D3AE 0F:D39E: 84 02     STY ram_0002
C - - - - - 0x03D3B0 0F:D3A0: 0A        ASL
C - - - - - 0x03D3B1 0F:D3A1: 0A        ASL
C - - - - - 0x03D3B2 0F:D3A2: A8        TAY
bra_D3A3_loop:
C - - - - - 0x03D3B3 0F:D3A3: B9 7A D5  LDA tbl_D57A,Y
C - - - - - 0x03D3B6 0F:D3A6: 20 46 D3  JSR sub_D346_записать_3_цвета_в_буфер
C - - - - - 0x03D3B9 0F:D3A9: E8        INX
C - - - - - 0x03D3BA 0F:D3AA: C8        INY
C - - - - - 0x03D3BB 0F:D3AB: C6 02     DEC ram_0002
C - - - - - 0x03D3BD 0F:D3AD: D0 F4     BNE bra_D3A3_loop
C - - - - - 0x03D3BF 0F:D3AF: 60        RTS



sub_D3B0_записать_палитру_для_фона:
sub_0x03D3C0_записать_палитру_для_фона:
; A = палитра фона
C - - - - - 0x03D3C0 0F:D3B0: A2 00     LDX #$00
; tip_индекс_буфера_палитры + $00
; tip_индекс_буфера_палитры + $01
; tip_индекс_буфера_палитры + $02
; tip_индекс_буфера_палитры + $03
C - - - - - 0x03D3C2 0F:D3B2: F0 E8     BEQ bra_D39C    ; jmp



loc_D3B4_80_затемнение_из_цветного_в_черный:
C D 2 - - - 0x03D3C4 0F:D3B4: AD 02 06  LDA ram_015E_счетчик_яркости_1
C - - - - - 0x03D3C7 0F:D3B7: D0 08     BNE bra_D3C1
C - - - - - 0x03D3C9 0F:D3B9: EE 02 06  INC ram_015E_счетчик_яркости_1
C - - - - - 0x03D3CC 0F:D3BC: A9 08     LDA #$08
C - - - - - 0x03D3CE 0F:D3BE: 8D 03 06  STA ram_015F_счетчик_яркости_2
bra_D3C1:
C - - - - - 0x03D3D1 0F:D3C1: A9 08     LDA #$08
C - - - - - 0x03D3D3 0F:D3C3: 20 5C D4  JSR sub_D45C    ; возможен PLA PLA
C - - - - - 0x03D3D6 0F:D3C6: A9 00     LDA #$00
C - - - - - 0x03D3D8 0F:D3C8: 85 00     STA ram_0000
C - - - - - 0x03D3DA 0F:D3CA: A2 1F     LDX #$1F
bra_D3CC_loop:
C - - - - - 0x03D3DC 0F:D3CC: BD 4D 06  LDA ram_pal_buffer,X
C - - - - - 0x03D3DF 0F:D3CF: C9 0F     CMP #$0F
C - - - - - 0x03D3E1 0F:D3D1: F0 12     BEQ bra_D3E5
C - - - - - 0x03D3E3 0F:D3D3: E6 00     INC ram_0000
C - - - - - 0x03D3E5 0F:D3D5: A8        TAY
C - - - - - 0x03D3E6 0F:D3D6: 29 F0     AND #$F0
C - - - - - 0x03D3E8 0F:D3D8: F0 06     BEQ bra_D3E0
C - - - - - 0x03D3EA 0F:D3DA: 98        TYA
C - - - - - 0x03D3EB 0F:D3DB: 38        SEC
C - - - - - 0x03D3EC 0F:D3DC: E9 10     SBC #$10
C - - - - - 0x03D3EE 0F:D3DE: B0 02     BCS bra_D3E2
bra_D3E0:
C - - - - - 0x03D3F0 0F:D3E0: A9 0F     LDA #$0F
bra_D3E2:
C - - - - - 0x03D3F2 0F:D3E2: 9D 4D 06  STA ram_pal_buffer,X
bra_D3E5:
C - - - - - 0x03D3F5 0F:D3E5: CA        DEX
C - - - - - 0x03D3F6 0F:D3E6: 10 E4     BPL bra_D3CC_loop
C - - - - - 0x03D3F8 0F:D3E8: A5 00     LDA ram_0000
C - - - - - 0x03D3FA 0F:D3EA: D0 0C     BNE bra_D3F8_RTS
loc_D3F6_очистить_0600_063B_и_флаг_яркости:
sub_D3F6_очистить_0600_063B_и_флаг_яркости:
                                        LDA #$00
C - - - - - 0x03D406 0F:D3F6: 85 30     STA ram_метод_изменения_яркости
sub_D3EC_очистить_0600_063B:
C D 2 - - - 0x03D3FC 0F:D3EC: A9 00     LDA #$00
C - - - - - 0x03D3FE 0F:D3EE: A2 3B     LDY #$3B
bra_D3F0_loop:
C - - - - - 0x03D400 0F:D3F0: 9D 00 06  STA ram_plr_data,Y
C - - - - - 0x03D403 0F:D3F3: CA        DEY
C - - - - - 0x03D404 0F:D3F4: 10 FA     BPL bra_D3F0_loop
bra_D3F8_RTS:
C - - - - - 0x03D408 0F:D3F8: 60        RTS



loc_D3F9_01_осветление_из_черного_в_цветной:
C D 2 - - - 0x03D409 0F:D3F9: AD 02 06  LDA ram_015E_счетчик_яркости_1
C - - - - - 0x03D40C 0F:D3FC: D0 1C     BNE bra_D41A
C - - - - - 0x03D40E 0F:D3FE: A2 1F     LDX #$1F
bra_D400_loop:
C - - - - - 0x03D410 0F:D400: BD 4D 06  LDA ram_pal_buffer,X
C - - - - - 0x03D413 0F:D403: 9D 04 06  STA ram_0160,X
C - - - - - 0x03D416 0F:D406: A9 0F     LDA #$0F
C - - - - - 0x03D418 0F:D408: 9D 4D 06  STA ram_pal_buffer,X
C - - - - - 0x03D41B 0F:D40B: CA        DEX
C - - - - - 0x03D41C 0F:D40C: 10 F2     BPL bra_D400_loop
sub_D40E:
C - - - - - 0x03D41E 0F:D40E: EE 02 06  INC ram_015E_счетчик_яркости_1
C - - - - - 0x03D421 0F:D411: 20 64 D4  JSR sub_D464_запись_FF_в_066D
C - - - - - 0x03D424 0F:D414: A9 08     LDA #$08
C - - - - - 0x03D426 0F:D416: 8D 03 06  STA ram_015F_счетчик_яркости_2
bra_D419_RTS:
C - - - - - 0x03D429 0F:D419: 60        RTS
bra_D41A:
C - - - - - 0x03D42A 0F:D41A: CE 03 06  DEC ram_015F_счетчик_яркости_2
C - - - - - 0x03D42D 0F:D41D: 10 FA     BPL bra_D419_RTS
C - - - - - 0x03D42F 0F:D41F: AC 02 06  LDY ram_015E_счетчик_яркости_1
C - - - - - 0x03D432 0F:D422: B9 55 D4  LDA tbl_D456_ограничение_яркости - $01,Y
C - - - - - 0x03D435 0F:D425: 85 00     STA ram_0000    ; ограничение яркости
C - - - - - 0x03D437 0F:D427: A2 1F     LDX #$1F
bra_D429_loop:
C - - - - - 0x03D439 0F:D429: BD 04 06  LDA ram_0160,X
C - - - - - 0x03D43C 0F:D42C: A8        TAY
C - - - - - 0x03D43D 0F:D42D: 29 F0     AND #$F0
C - - - - - 0x03D43F 0F:D42F: C5 00     CMP ram_0000    ; ограничение яркости
C - - - - - 0x03D441 0F:D431: D0 05     BNE bra_D438
C - - - - - 0x03D443 0F:D433: 98        TYA
C - - - - - 0x03D444 0F:D434: 29 0F     AND #$0F
C - - - - - 0x03D446 0F:D436: B0 0A     BCS bra_D442
bra_D438:
C - - - - - 0x03D448 0F:D438: BD 4D 06  LDA ram_pal_buffer,X
C - - - - - 0x03D44B 0F:D43B: C9 0F     CMP #$0F
C - - - - - 0x03D44D 0F:D43D: F0 06     BEQ bra_D445
C - - - - - 0x03D44F 0F:D43F: 18        CLC
C - - - - - 0x03D450 0F:D440: 69 10     ADC #$10
bra_D442:
C - - - - - 0x03D452 0F:D442: 9D 4D 06  STA ram_pal_buffer,X
bra_D445:
C - - - - - 0x03D455 0F:D445: CA        DEX
C - - - - - 0x03D456 0F:D446: 10 E1     BPL bra_D429_loop
C - - - - - 0x03D458 0F:D448: 20 0E D4  JSR sub_D40E
C - - - - - 0x03D45B 0F:D44B: AD 02 06  LDA ram_015E_счетчик_яркости_1
C - - - - - 0x03D45E 0F:D44E: C9 05     CMP #$05
C - - - - - 0x03D460 0F:D450: B0 01     BCS bra_D453
C - - - - - 0x03D462 0F:D452: 60        RTS
bra_D453:
C - - - - - 0x03D463 0F:D453: 4C EC D3  JMP loc_D3F6_очистить_0600_063B_и_флаг_яркости



tbl_D456_ограничение_яркости:
- D 2 - - - 0x03D466 0F:D456: 30        .byte $30   ; 01
- D 2 - - - 0x03D467 0F:D457: 20        .byte $20   ; 02
- D 2 - - - 0x03D468 0F:D458: 10        .byte $10   ; 03
- D 2 - - - 0x03D469 0F:D459: 00        .byte $00   ; 04



sub_D45C:
C - - - - - 0x03D46C 0F:D45C: CE 03 06  DEC ram_015F_счетчик_яркости_2
C - - - - - 0x03D46F 0F:D45F: 10 09     BPL bra_D46A
C - - - - - 0x03D471 0F:D461: 8D 03 06  STA ram_015F_счетчик_яркости_2
bra_D464_запись_FF_в_066D:
sub_D464_запись_FF_в_066D:
loc_D464_запись_FF_в_066D:
C D 2 - - - 0x03D474 0F:D464: A9 FF     LDA #$FF
C - - - - - 0x03D476 0F:D466: 8D 6D 06  STA ram_066D
C - - - - - 0x03D479 0F:D469: 60        RTS
bra_D46A:
C - - - - - 0x03D47A 0F:D46A: 68        PLA
C - - - - - 0x03D47B 0F:D46B: 68        PLA
C - - - - - 0x03D47C 0F:D46C: 60        RTS



loc_D46D_запись_черной_палитры_в_буфер:
sub_D46D_запись_черной_палитры_в_буфер:
sub_0x03D47D_запись_черной_палитры_в_буфер:
loc_0x03D47D_запись_черной_палитры_в_буфер:
C D 2 - - - 0x03D47D 0F:D46D: A2 1F     LDX #$1F
C - - - - - 0x03D47F 0F:D46F: A9 0F     LDA #$0F
bra_D471:
C - - - - - 0x03D481 0F:D471: 9D 4D 06  STA ram_pal_buffer,X
C - - - - - 0x03D484 0F:D474: CA        DEX
C - - - - - 0x03D485 0F:D475: 10 FA     BPL bra_D471
C - - - - - 0x03D487 0F:D477: 30 EB     BMI bra_D464_запись_FF_в_066D    ; jmp



loc_D479_40_затемнение_из_белого_в_цветной:
C D 2 - - - 0x03D489 0F:D479: AD 02 06  LDA ram_015E_счетчик_яркости_1
C - - - - - 0x03D48C 0F:D47C: D0 09     BNE bra_D487
C - - - - - 0x03D48E 0F:D47E: EE 02 06  INC ram_015E_счетчик_яркости_1
C - - - - - 0x03D491 0F:D481: A9 06     LDA #$06
C - - - - - 0x03D493 0F:D483: 8D 03 06  STA ram_015F_счетчик_яркости_2
C - - - - - 0x03D496 0F:D486: 60        RTS
bra_D487:
C - - - - - 0x03D497 0F:D487: A9 0C     LDA #$0C
C - - - - - 0x03D499 0F:D489: 20 5C D4  JSR sub_D45C    ; возможен PLA PLA
C - - - - - 0x03D49C 0F:D48C: A9 07     LDA #$07
C - - - - - 0x03D49E 0F:D48E: 85 00     STA ram_0000
bra_D490_loop:
C - - - - - 0x03D4A0 0F:D490: A9 03     LDA #$03
C - - - - - 0x03D4A2 0F:D492: 85 01     STA ram_0001
bra_D494_loop:
C - - - - - 0x03D4A4 0F:D494: A5 00     LDA ram_0000
C - - - - - 0x03D4A6 0F:D496: 0A        ASL
C - - - - - 0x03D4A7 0F:D497: 0A        ASL
C - - - - - 0x03D4A8 0F:D498: 65 01     ADC ram_0001
C - - - - - 0x03D4AA 0F:D49A: AA        TAX
C - - - - - 0x03D4AB 0F:D49B: BD 4D 06  LDA ram_pal_buffer,X
C - - - - - 0x03D4AE 0F:D49E: C9 30     CMP #$30
C - - - - - 0x03D4B0 0F:D4A0: B0 07     BCS bra_D4A9
C - - - - - 0x03D4B2 0F:D4A2: C9 0F     CMP #$0F
C - - - - - 0x03D4B4 0F:D4A4: D0 05     BNE bra_D4AB
C - - - - - 0x03D4B6 0F:D4A6: A9 F0     LDA #$F0
C - - - - - 0x03D4B8 0F:D4A8: 2C        .byte $2C   ; BIT
bra_D4A9:
C - - - - - 0x03D4B9 0F:D4A9: A9 20     LDA #$20
bra_D4AB:
C - - - - - 0x03D4BB 0F:D4AB: 18        CLC
C - - - - - 0x03D4BC 0F:D4AC: 69 10     ADC #$10
C - - - - - 0x03D4BE 0F:D4AE: 9D 4D 06  STA ram_pal_buffer,X
C - - - - - 0x03D4C1 0F:D4B1: CA        DEX
C - - - - - 0x03D4C2 0F:D4B2: C6 01     DEC ram_0001
C - - - - - 0x03D4C4 0F:D4B4: 10 DE     BPL bra_D494_loop
C - - - - - 0x03D4C6 0F:D4B6: C6 00     DEC ram_0000
C - - - - - 0x03D4C8 0F:D4B8: 10 D6     BPL bra_D490_loop
C - - - - - 0x03D4CA 0F:D4BA: 20 64 D4  JSR sub_D464_запись_FF_в_066D
C - - - - - 0x03D4CD 0F:D4BD: EE 02 06  INC ram_015E_счетчик_яркости_1
C - - - - - 0x03D4D0 0F:D4C0: AD 02 06  LDA ram_015E_счетчик_яркости_1
C - - - - - 0x03D4D3 0F:D4C3: C9 05     CMP #$05
C - - - - - 0x03D4D5 0F:D4C5: 90 03     BCC bra_D4CA_RTS
C - - - - - 0x03D4D7 0F:D4C7: 4C EC D3  JMP loc_D3F6_очистить_0600_063B_и_флаг_яркости
bra_D4CA_RTS:
C - - - - - 0x03D4DA 0F:D4CA: 60        RTS



loc_D4CB_20_осветление_из_цветного_в_белый:
C D 2 - - - 0x03D4DB 0F:D4CB: AC 02 06  LDY ram_015E_счетчик_яркости_1
C - - - - - 0x03D4DE 0F:D4CE: D0 1B     BNE bra_D4EB
C - - - - - 0x03D4E0 0F:D4D0: EE 02 06  INC ram_015E_счетчик_яркости_1
C - - - - - 0x03D4E3 0F:D4D3: A9 08     LDA #$08
C - - - - - 0x03D4E5 0F:D4D5: 8D 03 06  STA ram_015F_счетчик_яркости_2
C - - - - - 0x03D4E8 0F:D4D8: A2 1F     LDX #$1F
bra_D4DA_loop:
C - - - - - 0x03D4EA 0F:D4DA: BD 4D 06  LDA ram_pal_buffer,X
C - - - - - 0x03D4ED 0F:D4DD: 9D 04 06  STA ram_0160,X
C - - - - - 0x03D4F0 0F:D4E0: A9 30     LDA #$30
C - - - - - 0x03D4F2 0F:D4E2: 9D 4D 06  STA ram_pal_buffer,X
C - - - - - 0x03D4F5 0F:D4E5: CA        DEX
C - - - - - 0x03D4F6 0F:D4E6: 10 F2     BPL bra_D4DA_loop
C - - - - - 0x03D4F8 0F:D4E8: 4C 64 D4  JMP loc_D464_запись_FF_в_066D
bra_D4EB:
C - - - - - 0x03D4FB 0F:D4EB: A9 08     LDA #$08
C - - - - - 0x03D4FD 0F:D4ED: 20 5C D4  JSR sub_D45C    ; возможен PLA PLA
C - - - - - 0x03D500 0F:D4F0: 88        DEY
C - - - - - 0x03D501 0F:D4F1: D0 19     BNE bra_D50C
C - - - - - 0x03D503 0F:D4F3: A2 1F     LDX #$1F
bra_D4F5_loop:
C - - - - - 0x03D505 0F:D4F5: BD 04 06  LDA ram_0160,X
C - - - - - 0x03D508 0F:D4F8: 09 30     ORA #$30
C - - - - - 0x03D50A 0F:D4FA: C9 3F     CMP #$3F
C - - - - - 0x03D50C 0F:D4FC: D0 02     BNE bra_D500
C - - - - - 0x03D50E 0F:D4FE: A9 30     LDA #$30
bra_D500:
C - - - - - 0x03D510 0F:D500: 9D 4D 06  STA ram_pal_buffer,X
C - - - - - 0x03D513 0F:D503: CA        DEX
C - - - - - 0x03D514 0F:D504: 10 EF     BPL bra_D4F5_loop
C - - - - - 0x03D516 0F:D506: EE 02 06  INC ram_015E_счетчик_яркости_1
C - - - - - 0x03D519 0F:D509: 4C 64 D4  JMP loc_D464_запись_FF_в_066D
bra_D50C:
C - - - - - 0x03D51C 0F:D50C: A2 1F     LDX #$1F
bra_D50E_loop:
C - - - - - 0x03D51E 0F:D50E: BD 4D 06  LDA ram_pal_buffer,X
C - - - - - 0x03D521 0F:D511: DD 04 06  CMP ram_0160,X
C - - - - - 0x03D524 0F:D514: F0 0A     BEQ bra_D520
C - - - - - 0x03D526 0F:D516: 38        SEC
C - - - - - 0x03D527 0F:D517: E9 10     SBC #$10
C - - - - - 0x03D529 0F:D519: B0 02     BCS bra_D51D
C - - - - - 0x03D52B 0F:D51B: A9 0F     LDA #$0F
bra_D51D:
C - - - - - 0x03D52D 0F:D51D: 9D 4D 06  STA ram_pal_buffer,X
bra_D520:
C - - - - - 0x03D530 0F:D520: CA        DEX
C - - - - - 0x03D531 0F:D521: 10 EB     BPL bra_D50E_loop
C - - - - - 0x03D533 0F:D523: EE 02 06  INC ram_015E_счетчик_яркости_1
C - - - - - 0x03D536 0F:D526: AD 02 06  LDA ram_015E_счетчик_яркости_1
C - - - - - 0x03D539 0F:D529: C9 06     CMP #$06
C - - - - - 0x03D53B 0F:D52B: 90 03     BCC bra_D530
C - - - - - 0x03D53D 0F:D52D: 20 EC D3  JSR sub_D3F6_очистить_0600_063B_и_флаг_яркости
bra_D530:
C - - - - - 0x03D540 0F:D530: 4C 64 D4  JMP loc_D464_запись_FF_в_066D
bra_D533_RTS:
C - - - - - 0x03D543 0F:D533: 60        RTS



sub_D538_скопировать_буфер_палитры_в_общий_буфер:
C D 2 - - - 0x03D548 0F:D538: AD 6D 06  LDA ram_066D
C - - - - - 0x03D54B 0F:D53B: F0 F6     BEQ bra_D533_RTS
C - - - - - 0x03D54D 0F:D53D: A0 10     LDY #$10
C - - - - - 0x03D54F 0F:D53F: C9 10     CMP #$10
C - - - - - 0x03D551 0F:D541: 90 12     BCC bra_D555
C - - - - - 0x03D553 0F:D543: 29 0F     AND #$0F
C - - - - - 0x03D555 0F:D545: D0 0C     BNE bra_D553
C - - - - - 0x03D557 0F:D547: 8C 6D 06  STY ram_066D    ; счетчик цикла
C - - - - - 0x03D55A 0F:D54A: A9 01     LDA #$01
C - - - - - 0x03D55C 0F:D54C: 20 5D D2  JSR sub_D25D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03D55F 0F:D54F: A9 10     LDA #$10    ; палитра спрайтов
C - - - - - 0x03D561 0F:D551: D0 0C     BNE bra_D55F    ; jmp
bra_D553:
C - - - - - 0x03D563 0F:D553: A0 20     LDY #$20
bra_D555:
C - - - - - 0x03D565 0F:D555: 8C 6D 06  STY ram_066D    ; счетчик цикла
C - - - - - 0x03D568 0F:D558: A9 01     LDA #$01
C - - - - - 0x03D56A 0F:D55A: 20 5D D2  JSR sub_D25D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03D56D 0F:D55D: A9 00     LDA #$00    ; палитра фона
bra_D55F:
C - - - - - 0x03D56F 0F:D55F: 85 A9     STA ram_global_obj_index
C - - - - - 0x03D571 0F:D561: 20 66 D2  JSR sub_D266_записать_A_в_буфер_без_сохранения_индекса
C - - - - - 0x03D574 0F:D564: A9 3F     LDA #$3F    ; 3F00/3F10
C - - - - - 0x03D576 0F:D566: 20 66 D2  JSR sub_D266_записать_A_в_буфер_без_сохранения_индекса
C - - - - - 0x03D579 0F:D569: A4 A9     LDY ram_global_obj_index
bra_D56B_loop:
C - - - - - 0x03D57B 0F:D56B: B9 4D 06  LDA ram_pal_buffer,Y
C - - - - - 0x03D57E 0F:D56E: 20 66 D2  JSR sub_D266_записать_A_в_буфер_без_сохранения_индекса
C - - - - - 0x03D581 0F:D571: C8        INY
C - - - - - 0x03D582 0F:D572: CE 6D 06  DEC ram_066D    ; счетчик цикла
C - - - - - 0x03D585 0F:D575: D0 F4     BNE bra_D56B_loop
C - - - - - 0x03D587 0F:D577: 4C 59 D2  JMP loc_D259_записать_FF_в_буфер_без_чтения_индекса



tbl_D57A:
; con_D57A
; 00
- D 2 - - - 0x03D58A 0F:D57A: 00        .byte con_AF40_pal + $00   ; 00
- D 2 - - - 0x03D58B 0F:D57B: 00        .byte con_AF40_pal + $00   ; 01
- D 2 - - - 0x03D58C 0F:D57C: 00        .byte con_AF40_pal + $00   ; 02
- D 2 - - - 0x03D58D 0F:D57D: 00        .byte con_AF40_pal + $00   ; 03
; 01
- D 2 - - - 0x03D58E 0F:D57E: 03        .byte con_AF40_pal + $03   ; 00
- D 2 - - - 0x03D58F 0F:D57F: 04        .byte con_AF40_pal + $04   ; 01
- D 2 - - - 0x03D590 0F:D580: 05        .byte con_AF40_pal + $05   ; 02
- D 2 - - - 0x03D591 0F:D581: 01        .byte con_AF40_pal + $01   ; 03
; 02
- D 2 - - - 0x03D592 0F:D582: 0D        .byte con_AF40_pal + $0D   ; 00
- D 2 - - - 0x03D593 0F:D583: 13        .byte con_AF40_pal + $13   ; 01
- D 2 - - - 0x03D594 0F:D584: 07        .byte con_AF40_pal + $07   ; 02
- D 2 - - - 0x03D595 0F:D585: 08        .byte con_AF40_pal + $08   ; 03
; 03 unused, индекс не существует
- - - - - - 0x03D596 0F:D586: 0B        .byte con_AF40_pal + $0B   ; 00
- - - - - - 0x03D597 0F:D587: 29        .byte con_AF40_pal + $29   ; 01
- - - - - - 0x03D598 0F:D588: 0C        .byte con_AF40_pal + $0C   ; 02
- - - - - - 0x03D599 0F:D589: 01        .byte con_AF40_pal + $01   ; 03
; 04
- D 2 - - - 0x03D59A 0F:D58A: 01        .byte con_AF40_pal + $01   ; 00
- D 2 - - - 0x03D59B 0F:D58B: 26        .byte con_AF40_pal + $26   ; 01
- D 2 - - - 0x03D59C 0F:D58C: 27        .byte con_AF40_pal + $27   ; 02
- D 2 - - - 0x03D59D 0F:D58D: 00        .byte con_AF40_pal + $00   ; 03
; 05
- - - - - - 0x03D59E 0F:D58E: 2B        .byte con_AF40_pal + $20   ; 00
- - - - - - 0x03D59F 0F:D58F: 0C        .byte con_AF40_pal + $02   ; 01
- - - - - - 0x03D5A0 0F:D590: 16        .byte con_AF40_pal + $02   ; 02
- - - - - - 0x03D5A1 0F:D591: 01        .byte con_AF40_pal + $02   ; 03
; 06
- D 2 - - - 0x03D5A2 0F:D592: 20        .byte con_AF40_pal + $67   ; 00
- D 2 - - - 0x03D5A3 0F:D593: 02        .byte con_AF40_pal + $02   ; 01
- D 2 - - - 0x03D5A4 0F:D594: 02        .byte con_AF40_pal + $02   ; 02
- D 2 - - - 0x03D5A5 0F:D595: 02        .byte con_AF40_pal + $02   ; 03
; 07
- D 2 - - - 0x03D5A6 0F:D596: 02        .byte con_AF40_pal + $02   ; 00
- D 2 - - - 0x03D5A7 0F:D597: 17        .byte con_AF40_pal + $17   ; 01
- D 2 - - - 0x03D5A8 0F:D598: 18        .byte con_AF40_pal + $18   ; 02
- D 2 - - - 0x03D5A9 0F:D599: 18        .byte con_AF40_pal + $18   ; 03
; 08 unused, индекс не существует
- - - - - - 0x03D5AA 0F:D59A: 02        .byte con_AF40_pal + $02   ; 00
- - - - - - 0x03D5AB 0F:D59B: 09        .byte con_AF40_pal + $09   ; 01
- - - - - - 0x03D5AC 0F:D59C: 3C        .byte con_AF40_pal + $3C   ; 02
- - - - - - 0x03D5AD 0F:D59D: 01        .byte con_AF40_pal + $01   ; 03
; 09
- D 2 - - - 0x03D5AE 0F:D59E: 00        .byte con_AF40_pal + $00   ; 00
- D 2 - - - 0x03D5AF 0F:D59F: 20        .byte con_AF40_pal + $20   ; 01
- D 2 - - - 0x03D5B0 0F:D5A0: 00        .byte con_AF40_pal + $00   ; 02
- D 2 - - - 0x03D5B1 0F:D5A1: 02        .byte con_AF40_pal + $02   ; 03
; 0A
- D 2 - - - 0x03D5B2 0F:D5A2: 2B        .byte con_AF40_pal + $2B   ; 00
- D 2 - - - 0x03D5B3 0F:D5A3: 2C        .byte con_AF40_pal + $2C   ; 01
- D 2 - - - 0x03D5B4 0F:D5A4: 02        .byte con_AF40_pal + $02   ; 02
- D 2 - - - 0x03D5B5 0F:D5A5: 01        .byte con_AF40_pal + $01   ; 03
; 0B
- D 2 - - - 0x03D5B6 0F:D5A6: 4B        .byte con_AF40_pal + $4B   ; 00
- D 2 - - - 0x03D5B7 0F:D5A7: 4C        .byte con_AF40_pal + $4C   ; 01
- D 2 - - - 0x03D5B8 0F:D5A8: 02        .byte con_AF40_pal + $02   ; 02
- D 2 - - - 0x03D5B9 0F:D5A9: 01        .byte con_AF40_pal + $01   ; 03
; 0C
- D 2 - - - 0x03D5BA 0F:D5AA: 35        .byte con_AF40_pal + $35   ; 00
- D 2 - - - 0x03D5BB 0F:D5AB: 36        .byte con_AF40_pal + $36   ; 01
- D 2 - - - 0x03D5BC 0F:D5AC: 50        .byte con_AF40_pal + $50   ; 02
- D 2 - - - 0x03D5BD 0F:D5AD: 38        .byte con_AF40_pal + $38   ; 03
; 0D
- D 2 - - - 0x03D5BE 0F:D5AE: 36        .byte con_AF40_pal + $36   ; 00
- D 2 - - - 0x03D5BF 0F:D5AF: 37        .byte con_AF40_pal + $37   ; 01
- D 2 - - - 0x03D5C0 0F:D5B0: 38        .byte con_AF40_pal + $38   ; 02
- D 2 - - - 0x03D5C1 0F:D5B1: 35        .byte con_AF40_pal + $35   ; 03
; 0E
- D 2 - - - 0x03D5C2 0F:D5B2: 35        .byte con_AF40_pal + $35   ; 00
- D 2 - - - 0x03D5C3 0F:D5B3: 36        .byte con_AF40_pal + $36   ; 01
- D 2 - - - 0x03D5C4 0F:D5B4: 39        .byte con_AF40_pal + $39   ; 02
- D 2 - - - 0x03D5C5 0F:D5B5: 3A        .byte con_AF40_pal + $3A   ; 03
; 0F
- D 2 - - - 0x03D5C6 0F:D5B6: 36        .byte con_AF40_pal + $36   ; 00
- D 2 - - - 0x03D5C7 0F:D5B7: 37        .byte con_AF40_pal + $37   ; 01
- D 2 - - - 0x03D5C8 0F:D5B8: 3D        .byte con_AF40_pal + $3D   ; 02
- D 2 - - - 0x03D5C9 0F:D5B9: 35        .byte con_AF40_pal + $35   ; 03
; 10
- D 2 - - - 0x03D5CA 0F:D5BA: 0D        .byte con_AF40_pal + $0D   ; 00
- D 2 - - - 0x03D5CB 0F:D5BB: 2B        .byte con_AF40_pal + $2B   ; 01
- D 2 - - - 0x03D5CC 0F:D5BC: 07        .byte con_AF40_pal + $07   ; 02
- D 2 - - - 0x03D5CD 0F:D5BD: 08        .byte con_AF40_pal + $08   ; 03
; 11
- D 2 - - - 0x03D5CE 0F:D5BE: 2D        .byte con_AF40_pal + $2D   ; 00
- D 2 - - - 0x03D5CF 0F:D5BF: 2D        .byte con_AF40_pal + $2D   ; 01
- D 2 - - - 0x03D5D0 0F:D5C0: 02        .byte con_AF40_pal + $02   ; 02
- D 2 - - - 0x03D5D1 0F:D5C1: 14        .byte con_AF40_pal + $14   ; 03
; 12
- D 2 - - - 0x03D5D2 0F:D5C2: 3F        .byte con_AF40_pal + $3F   ; 00
- D 2 - - - 0x03D5D3 0F:D5C3: 40        .byte con_AF40_pal + $40   ; 01
- D 2 - - - 0x03D5D4 0F:D5C4: 41        .byte con_AF40_pal + $41   ; 02
- D 2 - - - 0x03D5D5 0F:D5C5: 00        .byte con_AF40_pal + $00   ; 03
; 13
- D 2 - - - 0x03D5D6 0F:D5C6: 0D        .byte con_AF40_pal + $0D   ; 00
- D 2 - - - 0x03D5D7 0F:D5C7: 33        .byte con_AF40_pal + $33   ; 01
- D 2 - - - 0x03D5D8 0F:D5C8: 25        .byte con_AF40_pal + $25   ; 02
- D 2 - - - 0x03D5D9 0F:D5C9: 42        .byte con_AF40_pal + $42   ; 03
; 14
- D 2 - - - 0x03D5DA 0F:D5CA: 00        .byte con_AF40_pal + $00   ; 00
- D 2 - - - 0x03D5DB 0F:D5CB: 00        .byte con_AF40_pal + $00   ; 01
- D 2 - - - 0x03D5DC 0F:D5CC: 40        .byte con_AF40_pal + $40   ; 02
- D 2 - - - 0x03D5DD 0F:D5CD: 02        .byte con_AF40_pal + $02   ; 03
; 15
- D 2 - - - 0x03D5DE 0F:D5CE: 4D        .byte con_AF40_pal + $4D   ; 00
- D 2 - - - 0x03D5DF 0F:D5CF: 4E        .byte con_AF40_pal + $4E   ; 01
- D 2 - - - 0x03D5E0 0F:D5D0: 4F        .byte con_AF40_pal + $4F   ; 02
- D 2 - - - 0x03D5E1 0F:D5D1: 02        .byte con_AF40_pal + $02   ; 03
; 16
- D 2 - - - 0x03D5E2 0F:D5D2: 51        .byte con_AF40_pal + $51   ; 00
- D 2 - - - 0x03D5E3 0F:D5D3: 52        .byte con_AF40_pal + $52   ; 01
- D 2 - - - 0x03D5E4 0F:D5D4: 57        .byte con_AF40_pal + $57   ; 02
- D 2 - - - 0x03D5E5 0F:D5D5: 02        .byte con_AF40_pal + $02   ; 03
; 17
- D 2 - - - 0x03D5E6 0F:D5D6: 05        .byte con_AF40_pal + $05   ; 00
- D 2 - - - 0x03D5E7 0F:D5D7: 53        .byte con_AF40_pal + $53   ; 01
- D 2 - - - 0x03D5E8 0F:D5D8: 00        .byte con_AF40_pal + $00   ; 02
- D 2 - - - 0x03D5E9 0F:D5D9: 00        .byte con_AF40_pal + $00   ; 03
; 18
- D 2 - - - 0x03D5EA 0F:D5DA: 05        .byte con_AF40_pal + $05   ; 00
- D 2 - - - 0x03D5EB 0F:D5DB: 54        .byte con_AF40_pal + $54   ; 01
- D 2 - - - 0x03D5EC 0F:D5DC: 55        .byte con_AF40_pal + $55   ; 02
- D 2 - - - 0x03D5ED 0F:D5DD: 02        .byte con_AF40_pal + $02   ; 03
; 19
- D 2 - - - 0x03D5EE 0F:D5DE: 05        .byte con_AF40_pal + $05   ; 00
- D 2 - - - 0x03D5EF 0F:D5DF: 2F        .byte con_AF40_pal + $2F   ; 01
- D 2 - - - 0x03D5F0 0F:D5E0: 00        .byte con_AF40_pal + $00   ; 02
- D 2 - - - 0x03D5F1 0F:D5E1: 00        .byte con_AF40_pal + $00   ; 03
; 1A
- D 2 - - - 0x03D5F2 0F:D5E2: 2F        .byte con_AF40_pal + $2F   ; 00
- D 2 - - - 0x03D5F3 0F:D5E3: 56        .byte con_AF40_pal + $56   ; 01
- D 2 - - - 0x03D5F4 0F:D5E4: 46        .byte con_AF40_pal + $46   ; 02
- D 2 - - - 0x03D5F5 0F:D5E5: 00        .byte con_AF40_pal + $00   ; 03
; 1B
- D 2 - - - 0x03D5F6 0F:D5E6: 00        .byte con_AF40_pal + $00   ; 00
- D 2 - - - 0x03D5F7 0F:D5E7: 00        .byte con_AF40_pal + $00   ; 01
- D 2 - - - 0x03D5F8 0F:D5E8: 64        .byte con_AF40_pal + $64   ; 02
- D 2 - - - 0x03D5F9 0F:D5E9: 00        .byte con_AF40_pal + $00   ; 03



sub_D602_выбрать_chr_банк_на_основе_опции_skin:
C - - - - - 0x03D612 0F:D602: AD 2B 01  LDA ram_option_misc
C - - - - - 0x03D615 0F:D605: 29 02     AND #$02
C - - - - - 0x03D617 0F:D607: D0 03     BNE bra_D60C
C - - - - - 0x03D619 0F:D609: A2 21     LDX #con_chr_bank_spr + $21
C - - - - - 0x03D61B 0F:D60B: 60        RTS
bra_D60C:
; if night
- - - - - - 0x03D61C 0F:D60C: A2 8F     LDX #con_chr_bank_spr + $8F
- - - - - - 0x03D61E 0F:D60E: 60        RTS



sub_D71F_спрайтовый_движок:
C - - - - - 0x03D72F 0F:D71F: A9 3F     LDA #$3F
C - - - - - 0x03D731 0F:D721: 85 0A     STA ram_000A    ; кол-во спрайтов
C - - - - - 0x03D733 0F:D723: A9 00     LDA #$00
C - - - - - 0x03D735 0F:D725: 85 05     STA ram_0005    ; индекс объекта
C - - - - - 0x03D737 0F:D727: A5 2F     LDA ram_индекс_oam
C - - - - - 0x03D739 0F:D729: 69 34     ADC #$34
C - - - - - 0x03D73B 0F:D72B: 85 2F     STA ram_индекс_oam
bra_D72D_loop:
C - - - - - 0x03D73D 0F:D72D: A6 05     LDX ram_0005    ; индекс объекта
C - - - - - 0x03D73F 0F:D72F: E0 10     CPX #$10
C - - - - - 0x03D741 0F:D731: B0 5F     BCS bra_D792_выход
C - - - - - 0x03D743 0F:D733: A5 0A     LDA ram_000A    ; кол-во спрайтов
C - - - - - 0x03D745 0F:D735: 30 6B     BMI bra_D7A2_RTS
C - - - - - 0x03D747 0F:D737: BD 00 04  LDA ram_obj_anim_id,X ; 0400 0401 0402 0403 0404 0405 0406 0407 0408 0409 040A 040B 040C 040D 040E 040F 
C - - - - - 0x03D74A 0F:D73A: F0 52     BEQ bra_D78E
C - - - - - 0x03D74C 0F:D73C: BC 30 04  LDY ram_obj_pos_X_hi,X ; 0430 0431 0432 0433 0434 0435 0436 0437 0439 043A 043B 043C 043D 043E 043F 
C - - - - - 0x03D74F 0F:D73F: D0 4D     BNE bra_D78E
C - - - - - 0x03D751 0F:D741: A8        TAY ; обновить N
C - - - - - 0x03D752 0F:D742: 30 03     BMI bra_D747
C - - - - - 0x03D754 0F:D744: 20 EB F5  JSR sub_F5EB_swap_prg_18
bra_D747:
C - - - - - 0x03D757 0F:D747: BD 00 04  LDA ram_obj_anim_id,X ; 0400 0401 0402 0403 0404 0405 0406 0407 0409 040A 040B 040C 040D 040E 040F 
C - - - - - 0x03D75A 0F:D74A: 0A        ASL
C - - - - - 0x03D75B 0F:D74B: A9 00     LDA #$00
C - - - - - 0x03D75D 0F:D74D: 90 0C     BCC bra_D75B
C - - - - - 0x03D75F 0F:D74F: 8A        TXA
C - - - - - 0x03D760 0F:D750: C9 06     CMP #$06
C - - - - - 0x03D762 0F:D752: D0 03     BNE bra_D757
C - - - - - 0x03D764 0F:D754: AD 26 05  LDA ram_obj_state_hi + $06
bra_D757:
C - - - - - 0x03D767 0F:D757: 4A        LSR
C - - - - - 0x03D768 0F:D758: 6A        ROR
C - - - - - 0x03D769 0F:D759: 29 80     AND #$80
bra_D75B:
C - - - - - 0x03D76B 0F:D75B: 85 12     STA ram_0012
C - - - - - 0x03D76D 0F:D75D: BC 00 05  LDY ram_0500_obj,X ; 0500 0501 0502 0503 0504 0505 0506 0507 0509 050A 050B 050C 050D 050E 050F 
C - - - - - 0x03D770 0F:D760: 84 00     STY ram_0000
C - - - - - 0x03D772 0F:D762: BC 10 04  LDY ram_obj_pos_Y_lo,X ; 0410 0411 0412 0413 0414 0415 0416 0417 0419 041A 041B 041C 041D 041E 041F 
C - - - - - 0x03D775 0F:D765: E0 02     CPX #$02
C - - - - - 0x03D777 0F:D767: B0 09     BCS bra_D772
C - - - - - 0x03D779 0F:D769: C0 B0     CPY #con_координата_пола
C - - - - - 0x03D77B 0F:D76B: 90 05     BCC bra_D772
C - - - - - 0x03D77D 0F:D76D: 98        TYA
C - - - - - 0x03D77E 0F:D76E: 18        CLC
C - - - - - 0x03D77F 0F:D76F: 65 86     ADC ram_0086
C - - - - - 0x03D781 0F:D771: A8        TAY
bra_D772:
C - - - - - 0x03D782 0F:D772: 84 01     STY ram_0001
C - - - - - 0x03D784 0F:D774: BC 40 04  LDY ram_obj_pos_X_lo,X ; 0440 0441 0442 0443 0444 0445 0446 0447 0449 044A 044B 044C 044D 044E 044F 
C - - - - - 0x03D787 0F:D777: 84 02     STY ram_0002
C - - - - - 0x03D789 0F:D779: BC 10 05  LDY ram_obj_flip,X ; 0510 0511 0512 0513 0514 0515 0516 0517 0519 051A 051B 051C 051D 051E 051F 
C - - - - - 0x03D78C 0F:D77C: 84 06     STY ram_0006
C - - - - - 0x03D78E 0F:D77E: BD 00 04  LDA ram_obj_anim_id,X ; 0400 0401 0402 0403 0404 0405 0406 0407 0409 040A 040B 040C 040D 040E 040F 
C - - - - - 0x03D791 0F:D781: 20 A3 D7  JSR sub_D7A3
C - - - - - 0x03D794 0F:D784: A6 05     LDX ram_0005    ; индекс объекта
C - - - - - 0x03D796 0F:D786: BD 00 04  LDA ram_obj_anim_id,X ; 0400 0401 0402 0403 0404 0405 0406 0407 0409 040A 040B 040C 040D 040E 040F 
C - - - - - 0x03D799 0F:D789: 30 03     BMI bra_D78E
C - - - - - 0x03D79B 0F:D78B: 20 17 F6  JSR sub_F617_restore_prg
bra_D78E:
C - - - - - 0x03D79E 0F:D78E: E6 05     INC ram_0005    ; индекс объекта
C - - - - - 0x03D7A0 0F:D790: D0 9B     BNE bra_D72D_loop    ; jmp
bra_D792_выход:
C - - - - - 0x03D7A2 0F:D792: A6 2F     LDX ram_индекс_oam
bra_D794_loop:
C - - - - - 0x03D7A4 0F:D794: A9 F4     LDA #$F4
C - - - - - 0x03D7A6 0F:D796: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x03D7A9 0F:D799: 8A        TXA
C - - - - - 0x03D7AA 0F:D79A: 18        CLC
C - - - - - 0x03D7AB 0F:D79B: 69 1C     ADC #$1C
C - - - - - 0x03D7AD 0F:D79D: AA        TAX
C - - - - - 0x03D7AE 0F:D79E: C6 0A     DEC ram_000A    ; кол-во спрайтов
C - - - - - 0x03D7B0 0F:D7A0: 10 F2     BPL bra_D794_loop
bra_D7A2_RTS:
C - - - - - 0x03D7B2 0F:D7A2: 60        RTS



sub_D7A3:
C - - - - - 0x03D7B3 0F:D7A3: 0A        ASL
C - - - - - 0x03D7B4 0F:D7A4: A8        TAY
C - - - - - 0x03D7B5 0F:D7A5: 90 2D     BCC bra_D7D4_объект
C - - - - - 0x03D7B7 0F:D7A7: E0 06     CPX #$06
C - - - - - 0x03D7B9 0F:D7A9: D0 08     BNE bra_D7B3_перс
; if мяч?
C - - - - - 0x03D7BB 0F:D7AB: 98        TYA
C - - - - - 0x03D7BC 0F:D7AC: 48        PHA
C - - - - - 0x03D7BD 0F:D7AD: AD 26 05  LDA ram_obj_state_hi + $06
C - - - - - 0x03D7C0 0F:D7B0: 4C B6 D7  JMP loc_D7B6
bra_D7B3_перс:
; if любой из персов
C - - - - - 0x03D7C3 0F:D7B3: 98        TYA
C - - - - - 0x03D7C4 0F:D7B4: 48        PHA
C - - - - - 0x03D7C5 0F:D7B5: 8A        TXA
loc_D7B6:
C D 2 - - - 0x03D7C6 0F:D7B6: 29 01     AND #$01
C - - - - - 0x03D7C8 0F:D7B8: AA        TAX
C - - - - - 0x03D7C9 0F:D7B9: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
C - - - - - 0x03D7CC 0F:D7BC: 0A        ASL
C - - - - - 0x03D7CD 0F:D7BD: A8        TAY
C - - - - - 0x03D7CE 0F:D7BE: B9 7E D8  LDA tbl_D87E_спрайты_персов,Y
C - - - - - 0x03D7D1 0F:D7C1: 85 10     STA ram_0010
C - - - - - 0x03D7D3 0F:D7C3: B9 7F D8  LDA tbl_D87E_спрайты_персов + $01,Y
C - - - - - 0x03D7D6 0F:D7C6: 85 11     STA ram_0011
C - - - - - 0x03D7D8 0F:D7C8: 68        PLA
C - - - - - 0x03D7D9 0F:D7C9: A8        TAY
C - - - - - 0x03D7DA 0F:D7CA: B1 10     LDA (ram_0010),Y
C - - - - - 0x03D7DC 0F:D7CC: 85 08     STA ram_0008
C - - - - - 0x03D7DE 0F:D7CE: C8        INY
C - - - - - 0x03D7DF 0F:D7CF: B1 10     LDA (ram_0010),Y
C - - - - - 0x03D7E1 0F:D7D1: 4C DC D7  JMP loc_D7DC
bra_D7D4_объект:
C - - - - - 0x03D7E4 0F:D7D4: B9 33 82  LDA tbl_0x030245_спрайты_объектов - $02,Y
C - - - - - 0x03D7E7 0F:D7D7: 85 08     STA ram_0008
C - - - - - 0x03D7E9 0F:D7D9: B9 34 82  LDA tbl_0x030245_спрайты_объектов - $01,Y
loc_D7DC:
C D 2 - - - 0x03D7EC 0F:D7DC: 85 09     STA ram_0009
C - - - - - 0x03D7EE 0F:D7DE: A5 06     LDA ram_0006
C - - - - - 0x03D7F0 0F:D7E0: 29 C0     AND #$C0
C - - - - - 0x03D7F2 0F:D7E2: 85 06     STA ram_0006
C - - - - - 0x03D7F4 0F:D7E4: 0A        ASL
C - - - - - 0x03D7F5 0F:D7E5: 85 07     STA ram_0007
C - - - - - 0x03D7F7 0F:D7E7: A0 00     LDY #$00
C - - - - - 0x03D7F9 0F:D7E9: B1 08     LDA (ram_0008),Y
C - - - - - 0x03D7FB 0F:D7EB: F0 7F     BEQ bra_D86C_RTS
C - - - - - 0x03D7FD 0F:D7ED: 29 7F     AND #$7F
C - - - - - 0x03D7FF 0F:D7EF: 85 03     STA ram_0003
C - - - - - 0x03D801 0F:D7F1: A6 2F     LDX ram_индекс_oam
bra_D7F3_loop:
C D 2 - - - 0x03D803 0F:D7F3: C8        INY
C - - - - - 0x03D804 0F:D7F4: B1 08     LDA (ram_0008),Y
C - - - - - 0x03D80B 0F:D7FB: 24 06     BIT ram_0006
C - - - - - 0x03D80D 0F:D7FD: 10 06     BPL bra_D805
C - - - - - 0x03D80F 0F:D7FF: 49 FF     EOR #$FF
C - - - - - 0x03D811 0F:D801: 38        SEC
C - - - - - 0x03D812 0F:D802: E9 11     SBC #$11
bra_D805:
C - - - - - 0x03D815 0F:D805: 0A        ASL
C - - - - - 0x03D816 0F:D806: 90 07     BCC bra_D80F
C - - - - - 0x03D818 0F:D808: 6A        ROR
C - - - - - 0x03D819 0F:D809: 65 01     ADC ram_0001
C - - - - - 0x03D81B 0F:D80B: B0 09     BCS bra_D816
C - - - - - 0x03D81D 0F:D80D: 90 05     BCC bra_D814    ; jmp
bra_D80F:
C - - - - - 0x03D81F 0F:D80F: 6A        ROR
C - - - - - 0x03D820 0F:D810: 65 01     ADC ram_0001
C - - - - - 0x03D822 0F:D812: 90 02     BCC bra_D816
bra_D814:
C - - - - - 0x03D824 0F:D814: A9 F4     LDA #$F4
bra_D816:
C - - - - - 0x03D826 0F:D816: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x03D829 0F:D819: C8        INY
C - - - - - 0x03D82A 0F:D81A: B1 08     LDA (ram_0008),Y
C - - - - - 0x03D82C 0F:D81C: 05 12     ORA ram_0012
C - - - - - 0x03D82E 0F:D81E: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x03D831 0F:D821: C8        INY
C - - - - - 0x03D832 0F:D822: A5 00     LDA ram_0000
C - - - - - 0x03D834 0F:D824: 10 0D     BPL bra_D833
C - - - - - 0x03D836 0F:D826: 29 23     AND #$23
C - - - - - 0x03D838 0F:D828: 85 0B     STA ram_000B
C - - - - - 0x03D83A 0F:D82A: B1 08     LDA (ram_0008),Y
C - - - - - 0x03D83C 0F:D82C: 29 FC     AND #$FC
C - - - - - 0x03D83E 0F:D82E: 05 0B     ORA ram_000B
C - - - - - 0x03D840 0F:D830: 4C 35 D8  JMP loc_D835
bra_D833:
C - - - - - 0x03D843 0F:D833: B1 08     LDA (ram_0008),Y
loc_D835:
C D 2 - - - 0x03D845 0F:D835: 45 06     EOR ram_0006
C - - - - - 0x03D847 0F:D837: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x03D84A 0F:D83A: C8        INY
C - - - - - 0x03D84B 0F:D83B: B1 08     LDA (ram_0008),Y
C - - - - - 0x03D84D 0F:D83D: 24 07     BIT ram_0007
C - - - - - 0x03D84F 0F:D83F: 10 05     BPL bra_D846
C - - - - - 0x03D851 0F:D841: 49 FF     EOR #$FF
C - - - - - 0x03D853 0F:D843: 38        SEC
C - - - - - 0x03D854 0F:D844: E9 09     SBC #$09
bra_D846:
C - - - - - 0x03D856 0F:D846: 0A        ASL
C - - - - - 0x03D857 0F:D847: 90 07     BCC bra_D850
C - - - - - 0x03D859 0F:D849: 6A        ROR
C - - - - - 0x03D85A 0F:D84A: 65 02     ADC ram_0002
C - - - - - 0x03D85C 0F:D84C: B0 0C     BCS bra_D85A
C - - - - - 0x03D85E 0F:D84E: 90 05     BCC bra_D855    ; jmp
bra_D850:
C - - - - - 0x03D860 0F:D850: 6A        ROR
C - - - - - 0x03D861 0F:D851: 65 02     ADC ram_0002
C - - - - - 0x03D863 0F:D853: 90 05     BCC bra_D85A
bra_D855:
C - - - - - 0x03D865 0F:D855: A9 F4     LDA #$F4
C - - - - - 0x03D867 0F:D857: 9D 00 02  STA ram_spr_Y,X
bra_D85A:
C - - - - - 0x03D86A 0F:D85A: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x03D86D 0F:D85D: 8A        TXA
C - - - - - 0x03D86E 0F:D85E: 18        CLC
C - - - - - 0x03D86F 0F:D85F: 69 1C     ADC #$1C
C - - - - - 0x03D871 0F:D861: 85 2F     STA ram_индекс_oam
C - - - - - 0x03D873 0F:D863: AA        TAX
C - - - - - 0x03D874 0F:D864: C6 0A     DEC ram_000A    ; кол-во спрайтов
C - - - - - 0x03D876 0F:D866: 30 04     BMI bra_D86C_RTS
C - - - - - 0x03D878 0F:D868: C6 03     DEC ram_0003
C - - - - - 0x03D87A 0F:D86A: D0 87     BNE bra_D7F3_loop
bra_D86C_RTS:
C - - - - - 0x03D87C 0F:D86C: 60        RTS



tbl_D87E_спрайты_персов:
- D 2 - - - 0x03D88E 0F:D87E: 01 80     .word _off000_0x028011_00_leo ; con_fighter_leo
- D 2 - - - 0x03D890 0F:D880: 01 80     .word _off000_0x028011_01_raph ; con_fighter_raph
- D 2 - - - 0x03D892 0F:D882: 01 80     .word _off000_0x028011_02_mike ; con_fighter_mike
- D 2 - - - 0x03D894 0F:D884: 01 80     .word _off000_0x028011_03_don ; con_fighter_don
- D 2 - - - 0x03D896 0F:D886: 13 8E     .word _off000_0x028E23_04_casey ; con_fighter_casey
- D 2 - - - 0x03D898 0F:D888: 52 9B     .word _off000_0x029B62_05_hot ; con_fighter_hot
- D 2 - - - 0x03D89A 0F:D88A: C5 AE     .word _off000_0x02AED5_06_shred ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .word _off000_0x028011_07 ; con_fighter___leo
                                        .word _off000_0x028011_08 ; con_fighter___raph
                                        .word _off000_0x028011_09 ; con_fighter___mike
                                        .word _off000_0x028011_0A ; con_fighter___don
                                        .word _off000_0x028E23_0B ; con_fighter___casey
                                        .word _off000_0x029B62_0C ; con_fighter___hot
                                        .word _off000_0x02AED5_0D ; con_fighter___shred
                                    .endif



sub_D900_деление_16бит_на_16бит:
; ram_0018 = делимое lo
; ram_0019 = делимое hi
; A = делитель lo
; Y = делитель hi (по умолчанию 00)
; ram_0018 = частное lo
; ram_0019 = частное hi
C - - - - - 0x03D910 0F:D900: 85 1A     STA ram_001A
                                        LDY #$00
C - - - - - 0x03D912 0F:D902: 84 1B     STY ram_001B
C - - - - - 0x03D914 0F:D904: A9 00     LDA #$00
C - - - - - 0x03D916 0F:D906: 85 1C     STA ram_001C
C - - - - - 0x03D918 0F:D908: 85 1D     STA ram_001D
C - - - - - 0x03D91A 0F:D90A: A0 10     LDY #$10
bra_D90C_loop:
C - - - - - 0x03D91C 0F:D90C: 06 18     ASL ram_0018
C - - - - - 0x03D91E 0F:D90E: 26 19     ROL ram_0019
C - - - - - 0x03D920 0F:D910: 26 1C     ROL ram_001C
C - - - - - 0x03D922 0F:D912: 26 1D     ROL ram_001D
C - - - - - 0x03D924 0F:D914: A5 1D     LDA ram_001D
C - - - - - 0x03D926 0F:D916: C5 1B     CMP ram_001B
C - - - - - 0x03D928 0F:D918: D0 04     BNE bra_D91E
C - - - - - 0x03D92A 0F:D91A: A5 1C     LDA ram_001C
C - - - - - 0x03D92C 0F:D91C: C5 1A     CMP ram_001A
bra_D91E:
C - - - - - 0x03D92E 0F:D91E: 90 0E     BCC bra_D92E
C - - - - - 0x03D930 0F:D920: A5 1C     LDA ram_001C
C - - - - - 0x03D932 0F:D922: E5 1A     SBC ram_001A
C - - - - - 0x03D934 0F:D924: 85 1C     STA ram_001C
C - - - - - 0x03D936 0F:D926: A5 1D     LDA ram_001D
C - - - - - 0x03D938 0F:D928: E5 1B     SBC ram_001B
C - - - - - 0x03D93A 0F:D92A: 85 1D     STA ram_001D
C - - - - - 0x03D93C 0F:D92C: E6 18     INC ram_0018
bra_D92E:
C - - - - - 0x03D93E 0F:D92E: 88        DEY
C - - - - - 0x03D93F 0F:D92F: D0 DB     BNE bra_D90C_loop
C - - - - - 0x03D941 0F:D931: 60        RTS



sub_DABE_удалить_все_объекты:
sub_0x03DACE_удалить_все_объекты:   ; на выходе иногда требуется A = 00
C - - - - - 0x03DACE 0F:DABE: A2 0F     LDX #$0F
bra_DAC0_loop:
C - - - - - 0x03DAD0 0F:DAC0: 20 D3 DA  JSR sub_DAD3_удалить_объект
C - - - - - 0x03DAD3 0F:DAC3: CA        DEX
C - - - - - 0x03DAD4 0F:DAC4: 10 FA     BPL bra_DAC0_loop
C - - - - - 0x03DAD6 0F:DAC6: 60        RTS



sub_DAC7_удалить_объект_сохранив_XY:
sub_0x03DAD7_удалить_объект_сохранив_XY:
C - - - - - 0x03DAD7 0F:DAC7: 8A        TXA
C - - - - - 0x03DAD8 0F:DAC8: 48        PHA
C - - - - - 0x03DAD9 0F:DAC9: 98        TYA
C - - - - - 0x03DADA 0F:DACA: AA        TAX
C - - - - - 0x03DADB 0F:DACB: 20 D3 DA  JSR sub_DAD3_удалить_объект
C - - - - - 0x03DADE 0F:DACE: 8A        TXA
C - - - - - 0x03DADF 0F:DACF: A8        TAY
C - - - - - 0x03DAE0 0F:DAD0: 68        PLA
C - - - - - 0x03DAE1 0F:DAD1: AA        TAX
C - - - - - 0x03DAE2 0F:DAD2: 60        RTS



sub_DAD3_удалить_объект:    ; на выходе иногда требуется A = 00
loc_DAD3_удалить_объект:
sub_0x03DAE3_удалить_объект:
loc_0x03DAE3_удалить_объект:
; X = индекс объекта
C D 2 - - - 0x03DAE3 0F:DAD3: A9 00     LDA #$00
C - - - - - 0x03DAE5 0F:DAD5: 9D 50 05  STA ram_obj_id,X
C - - - - - 0x03DAEA 0F:DADA: 9D 30 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x03DAED 0F:DADD: 9D 40 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x03DAF0 0F:DAE0: 9D 10 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x03DAF3 0F:DAE3: 9D 50 04  STA ram_obj_spd_X_fr,X
C - - - - - 0x03DAF6 0F:DAE6: 9D 20 04  STA ram_obj_spd_Z_fr,X
C - - - - - 0x03DAF9 0F:DAE9: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x03DAFC 0F:DAEC: 9D 00 05  STA ram_0500_obj,X
C - - - - - 0x03DAFF 0F:DAEF: 9D 10 05  STA ram_obj_flip,X
C - - - - - 0x03DB02 0F:DAF2: 9D 20 05  STA ram_obj_state_hi,X  ; con_plr_state_на_земле
C - - - - - 0x03DB05 0F:DAF5: 9D 30 05  STA ram_0530_obj_state,X
C - - - - - 0x03DB08 0F:DAF8: 9D 40 05  STA ram_obj_state_lo,X
C - - - - - 0x03DB0B 0F:DAFB: 9D 60 05  STA ram_obj_timer,X
C - - - - - 0x03DB0E 0F:DAFE: 9D 70 05  STA ram_0570_obj,X
C - - - - - 0x03DB11 0F:DB01: 9D 80 05  STA ram_0580_obj,X
C - - - - - 0x03DB17 0F:DB07: 9D A0 05  STA ram_05A0_obj_флаги_мяча,X
C - - - - - 0x03DB1A 0F:DB0A: 9D B0 05  STA ram_05B0_obj_damage,X
C - - - - - 0x03DB1D 0F:DB0D: 9D C0 05  STA ram_obj_anim_timer,X
C - - - - - 0x03DB20 0F:DB10: 9D D0 05  STA ram_obj_anim_cnt,X
C - - - - - 0x03DB23 0F:DB13: 9D E0 05  STA ram_05E0_obj,X
C - - - - - 0x03DB26 0F:DB16: 9D F0 05  STA ram_05F0_obj,X
C - - - - - 0x03DB29 0F:DB19: 9D A0 04  STA ram_obj_spd_Y_hi,X
C - - - - - 0x03DB2C 0F:DB1C: 9D B0 04  STA ram_obj_spd_Y_lo,X
C - - - - - 0x03DB2F 0F:DB1F: 9D C0 04  STA ram_obj_hit_state,X
C - - - - - 0x03DB32 0F:DB22: 9D D0 04  STA ram_04D0_obj,X
C - - - - - 0x03DB35 0F:DB25: 9D E0 04  STA ram_04E0_obj,X
C - - - - - 0x03DB38 0F:DB28: 9D F0 04  STA ram_04F0_obj,X
C - - - - - 0x03E940 0F:E930: E0 02     CPX #$02
C - - - - - 0x03E942 0F:E932: B0 05     BCS bra_E939
C - - - - - 0x03E944 0F:E934: AC 4F 01  LDY ram_014F    ; ram_tournament_fighter + $03 ???
C - - - - - 0x03E947 0F:E937: 30 03     BMI bra_E93C
bra_E939:
C - - - - - 0x03E949 0F:E939: 9D 90 05  STA ram_obj_приоритет_удара,X ; 0590 0591 0592 0593 0594 0595 0596 0597 0598 0599 059A 059B 059C 059D 059E 059F 
bra_E93C:
sub_D067_очистить_spd_X_и_spd_Z:
sub_0x03DB48_очистить_spd_X_и_spd_Z:
loc_0x03DB48_очистить_spd_X_и_spd_Z:
; X = индекс объекта
                                        LDA #$00
C - - - - - 0x03DB3B 0F:DB2B: 9D 60 04  STA ram_obj_spd_Z_hi,X
C - - - - - 0x03DB3E 0F:DB2E: 9D 70 04  STA ram_obj_spd_Z_lo,X
loc_0x03DB4C_очистить_spd_X:
sub_0x03DB4C_очистить_spd_X:
; X = индекс объекта
                                        LDA #$00
C - - - - - 0x03DB41 0F:DB31: 9D 80 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x03DB44 0F:DB34: 9D 90 04  STA ram_obj_spd_X_lo,X
C - - - - - 0x03DB47 0F:DB37: 60        RTS



sub_D073_очистить_spd_Z:
sub_0x03D083_очистить_spd_Z:
loc_0x03D083_очистить_spd_Z:
; X = индекс объекта
C D 2 - - - 0x03D083 0F:D073: A9 00     LDA #$00
C - - - - - 0x03D085 0F:D075: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 0463 0464 0465 0466 0467 0469 046B 
C - - - - - 0x03D088 0F:D078: 9D 70 04  STA ram_obj_spd_Z_lo,X ; 0470 0471 0473 0474 0475 0476 0477 0479 047B 
C - - - - - 0x03D08B 0F:D07B: 60        RTS



sub_0x03DB59_добавить_spd_X_к_pos_X___spd_Z_к_pos_Y:
; X = индекс объекта
C - - - - - 0x03DB59 0F:DB49: 20 65 DB  JSR sub_DB65_добавить_spd_X_к_pos_X
sub_DB4C_добавить_spd_Z_к_pos_Y:
sub_0x03DB5C_добавить_spd_Z_к_pos_Y:
loc_0x03DB5C_добавить_spd_Z_к_pos_Y:
; X = индекс объекта
C - - - - - 0x03DB5E 0F:DB4E: 18        CLC
C - - - - - 0x03DB5F 0F:DB4F: BD 70 04  LDA ram_obj_spd_Z_lo,X ; 0470 0471 0473 0475 0476 0477 0479 047B 
C - - - - - 0x03DB62 0F:DB52: 7D 20 04  ADC ram_obj_spd_Z_fr,X ; 0420 0421 0423 0425 0426 0427 0429 042B 
C - - - - - 0x03DB65 0F:DB55: 9D 20 04  STA ram_obj_spd_Z_fr,X ; 0420 0421 0423 0425 0426 0427 0429 042B 
C - - - - - 0x03DB68 0F:DB58: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 0463 0465 0466 0467 0469 046B 
C - - - - - 0x03DB6E 0F:DB5E: 7D 10 04  ADC ram_obj_pos_Y_lo,X ; 0410 0411 0413 0415 0416 0417 0419 041B 
C - - - - - 0x03DB71 0F:DB61: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 0413 0415 0416 0417 0419 041B 
C - - - - - 0x03DB74 0F:DB64: 60        RTS



sub_DB65_добавить_spd_X_к_pos_X:
sub_0x03DB75_добавить_spd_X_к_pos_X:
; X = индекс объекта
C - - - - - 0x03DB75 0F:DB65: A0 00     LDY #$00
C - - - - - 0x03DB77 0F:DB67: 18        CLC
C - - - - - 0x03DB78 0F:DB68: BD 90 04  LDA ram_obj_spd_X_lo,X ; 0490 0491 0493 0494 0495 0496 0497 0499 049B 
C - - - - - 0x03DB7B 0F:DB6B: 7D 50 04  ADC ram_obj_spd_X_fr,X ; 0450 0451 0453 0454 0455 0456 0457 0459 045B 
C - - - - - 0x03DB7E 0F:DB6E: 9D 50 04  STA ram_obj_spd_X_fr,X ; 0450 0451 0453 0454 0455 0456 0457 0459 045B 
C - - - - - 0x03DB81 0F:DB71: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 0483 0484 0485 0486 0487 0489 048B 
C - - - - - 0x03DB84 0F:DB74: 10 01     BPL bra_DB77
C - - - - - 0x03DB86 0F:DB76: 88        DEY ; FF
bra_DB77:
C - - - - - 0x03DB87 0F:DB77: 7D 40 04  ADC ram_obj_pos_X_lo,X ; 0440 0441 0443 0444 0445 0446 0447 0449 044B 
C - - - - - 0x03DB8A 0F:DB7A: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 0443 0444 0445 0446 0447 0449 044B 
C - - - - - 0x03DB8D 0F:DB7D: 98        TYA
C - - - - - 0x03DB8E 0F:DB7E: 7D 30 04  ADC ram_obj_pos_X_hi,X ; 0430 0431 0433 0434 0435 0436 0437 0439 043B 
C - - - - - 0x03DB91 0F:DB81: 9D 30 04  STA ram_obj_pos_X_hi,X ; 0430 0431 0433 0434 0435 0436 0437 0439 043B 
C - - - - - 0x03DB94 0F:DB84: 60        RTS



sub_0x03DBC5_скопировать_данные_объекта_X_в_Y:
; bzk optimize, переместить в банк 12
C - - - - - 0x03DBC5 0F:DBB5: BD 50 04  LDA ram_obj_spd_X_fr,X ; 0450 0451 0452 0453 0454 0455 0456 
C - - - - - 0x03DBC8 0F:DBB8: 99 50 04  STA ram_obj_spd_X_fr,Y ; 045A 045B 045C 045D 
C - - - - - 0x03DBCB 0F:DBBB: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 0442 0443 0444 0445 0446 
C - - - - - 0x03DBCE 0F:DBBE: 99 40 04  STA ram_obj_pos_X_lo,Y ; 044A 044B 044C 044D 
C - - - - - 0x03DBD1 0F:DBC1: BD 30 04  LDA ram_obj_pos_X_hi,X ; 0430 0431 0432 0433 0434 0435 0436 
C - - - - - 0x03DBD4 0F:DBC4: 99 30 04  STA ram_obj_pos_X_hi,Y ; 043A 043B 043C 043D 
C - - - - - 0x03DBD7 0F:DBC7: BD 20 04  LDA ram_obj_spd_Z_fr,X ; 0420 0421 0422 0423 0424 0425 0426 
C - - - - - 0x03DBDA 0F:DBCA: 99 20 04  STA ram_obj_spd_Z_fr,Y ; 042A 042B 042C 042D 
C - - - - - 0x03DBDD 0F:DBCD: BD 10 04  LDA ram_obj_pos_Y_lo,X ; 0410 0411 0412 0413 0414 0415 0416 
C - - - - - 0x03DBE0 0F:DBD0: 99 10 04  STA ram_obj_pos_Y_lo,Y ; 041A 041B 041C 041D 
C - - - - - 0x03DBE3 0F:DBD3: 60        RTS



loc_DC04_запись_1й_пары_chr_spr:
sub_0x03DC14_запись_1й_пары_chr_spr:
C D 2 - - - 0x03DC14 0F:DC04: B9 29 DC  LDA tbl_DC29_chr_pair,Y
C - - - - - 0x03DC17 0F:DC07: 85 34     STA ram_chr_bank_spr
C - - - - - 0x03DC19 0F:DC09: B9 2A DC  LDA tbl_DC29_chr_pair + $01,Y
C - - - - - 0x03DC1C 0F:DC0C: 85 35     STA ram_chr_bank_spr + $01
C - - - - - 0x03DC1E 0F:DC0E: 60        RTS



sub_0x03DC1F_запись_2й_пары_chr_spr:
; Y = 0E
C - - - - - 0x03DC1F 0F:DC0F: B9 29 DC  LDA tbl_DC29_chr_pair,Y
C - - - - - 0x03DC22 0F:DC12: 85 36     STA ram_chr_bank_spr + $02
C - - - - - 0x03DC24 0F:DC14: B9 2A DC  LDA tbl_DC29_chr_pair + $01,Y
C - - - - - 0x03DC27 0F:DC17: 85 37     STA ram_chr_bank_spr + $03
C - - - - - 0x03DC29 0F:DC19: 60        RTS



loc_DC25_запись_пары_chr_bg_06:
sub_DC25_запись_пары_chr_bg_06:
sub_0x03DC35_запись_пары_chr_bg_06:
C D 2 - - - 0x03DC35 0F:DC25: A0 06     LDY #con_chr_pair_06
sub_DC1A_запись_пары_chr_bg:
sub_0x03DC2A_запись_пары_chr_bg:
C - - - - - 0x03DC2A 0F:DC1A: B9 29 DC  LDA tbl_DC29_chr_pair,Y
C - - - - - 0x03DC2D 0F:DC1D: 85 32     STA ram_chr_bank_bg
C - - - - - 0x03DC2F 0F:DC1F: B9 2A DC  LDA tbl_DC29_chr_pair + $01,Y
C - - - - - 0x03DC32 0F:DC22: 85 33     STA ram_chr_bank_bg + $01
C - - - - - 0x03DC34 0F:DC24: 60        RTS



tbl_DC29_chr_pair:
; con_chr_pair
- - - - - - 0x03DC39 0F:DC29: 0D        .byte con_chr_bank + $0D, con_chr_bank + $09   ; 00 unused, индекс не существует
- D 2 - - - 0x03DC3B 0F:DC2B: 56        .byte con_chr_bank + $56, con_chr_bank + $54   ; 02
- D 2 - - - 0x03DC3D 0F:DC2D: 74        .byte con_chr_bank + $74, con_chr_bank + $58   ; 04
- D 2 - - - 0x03DC3F 0F:DC2F: 7C        .byte con_chr_bank + $7C, con_chr_bank + $7E   ; 06
- D 2 - - - 0x03DC41 0F:DC31: 50        .byte con_chr_bank + $50, con_chr_bank + $51   ; 08
- D 2 - - - 0x03DC43 0F:DC33: 48        .byte con_chr_bank + $48, con_chr_bank + $4A   ; 0A
- D 2 - - - 0x03DC45 0F:DC35: 10        .byte con_chr_bank + $10, con_chr_bank + $12   ; 0C
- D 2 - - - 0x03DC47 0F:DC37: 52        .byte con_chr_bank + $52, con_chr_bank + $53   ; 0E
- - - - - - 0x03DC49 0F:DC39: 5C        .byte con_chr_bank + $5C, con_chr_bank + $5E   ; 10 unused, индекс не существует
- D 2 - - - 0x03DC4B 0F:DC3B: 5A        .byte con_chr_bank + $5A, con_chr_bank + $58   ; 12
- D 2 - - - 0x03DC4D 0F:DC3D: 70        .byte con_chr_bank + $70, con_chr_bank + $76   ; 14
- D 2 - - - 0x03DC4F 0F:DC3F: 22        .byte con_chr_bank + $22, con_chr_bank + $24   ; 16
- D 2 - - - 0x03DC51 0F:DC41: 26        .byte con_chr_bank + $26, con_chr_bank + $27   ; 18
- D 2 - - - 0x03DC53 0F:DC43: 57        .byte con_chr_bank + $57, con_chr_bank + $55   ; 1A
- D 2 - - - 0x03DC55 0F:DC45: 7C        .byte con_chr_bank + $7C, con_chr_bank + $72   ; 1C
- D 2 - - - 0x03DC57 0F:DC47: 4C        .byte con_chr_bank + $4C, con_chr_bank + $4E   ; 1E
- D 2 - - - 0x03DC59 0F:DC49: 36        .byte con_chr_bank + $36, con_chr_bank + $34   ; 20



loc_DC54_добавить_A_FF_к_spd_Z:
sub_0x03DC64_добавить_A_FF_к_spd_Z:
loc_0x03DC64_добавить_A_FF_к_spd_Z:
C D 2 - - - 0x03DC64 0F:DC54: A0 FF     LDY #$FF
C - - - - - 0x03DC66 0F:DC56: D0 02     BNE bra_DC5A    ; jmp



bra_DC58:
loc_DC58_добавить_A_00_к_spd_Z:
sub_0x03DC68_добавить_A_00_к_spd_Z:
loc_0x03DC68_добавить_A_00_к_spd_Z:
C D 2 - - - 0x03DC68 0F:DC58: A0 00     LDY #$00
bra_DC5A:
C - - - - - 0x03DC6A 0F:DC5A: 18        CLC
C - - - - - 0x03DC6B 0F:DC5B: 7D 70 04  ADC ram_obj_spd_Z_lo,X ; 0470 0471 0473 0475 0476 0477 0479 047B 
C - - - - - 0x03DC6E 0F:DC5E: 9D 70 04  STA ram_obj_spd_Z_lo,X ; 0470 0471 0473 0475 0476 0477 0479 047B 
C - - - - - 0x03DC71 0F:DC61: 98        TYA
C - - - - - 0x03DC72 0F:DC62: 7D 60 04  ADC ram_obj_spd_Z_hi,X ; 0460 0461 0463 0465 0466 0467 0469 046B 
C - - - - - 0x03DC75 0F:DC65: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0460 0461 0463 0465 0466 0467 0469 046B 
C - - - - - 0x03DC78 0F:DC68: 60        RTS



sub_0x03DC79:
C - - - - - 0x03DC79 0F:DC69: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 0463 0465 0466 0467 0469 046B 
C - - - - - 0x03DC7C 0F:DC6C: 30 07     BMI bra_DC75
C - - - - - 0x03DC7E 0F:DC6E: A9 AF     LDA #con_координата_пола - $01
C - - - - - 0x03DC80 0F:DC70: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0410 0411 0413 0415 0416 0417 0419 041B 
C - - - - - 0x03DC83 0F:DC73: 90 0F     BCC bra_DC84
bra_DC75:
C - - - - - 0x03DC85 0F:DC75: 20 92 DC  JSR sub_DC92_добавить_к_spd_Z_в_зависимости_от_опции_скорости
C - - - - - 0x03DC88 0F:DC78: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 0463 0465 0466 0467 0469 046B 
C - - - - - 0x03DC8B 0F:DC7B: 30 13     BMI bra_DC90
C - - - - - 0x03DC8D 0F:DC7D: A9 AF     LDA #con_координата_пола - $01
C - - - - - 0x03DC8F 0F:DC7F: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0410 0411 0413 0415 0416 0417 0419 041B 
C - - - - - 0x03DC92 0F:DC82: B0 0C     BCS bra_DC90
bra_DC84:
C - - - - - 0x03DC94 0F:DC84: A9 B0     LDA #con_координата_пола
C - - - - - 0x03DC96 0F:DC86: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 0413 0415 0416 0417 0419 041B 
C - - - - - 0x03DC99 0F:DC89: A9 00     LDA #< $0000
C - - - - - 0x03DC9B 0F:DC8B: 20 D3 DC  STA ram_obj_spd_Z_lo,X ; 0460 0461 0463 0465 0466 0467 0469 046B 
                                        LDA #> $0000
                                        STA ram_obj_spd_Z_hi,X ; 0470 0471 0473 0475 0476 0477 0479 047B 
C - - - - - 0x03DC9E 0F:DC8E: 38        SEC
C - - - - - 0x03DC9F 0F:DC8F: 60        RTS
bra_DC90:
C - - - - - 0x03DCA0 0F:DC90: 18        CLC
C - - - - - 0x03DCA1 0F:DC91: 60        RTS



sub_DC92_добавить_к_spd_Z_в_зависимости_от_опции_скорости:
sub_0x03DCA2_добавить_к_spd_Z_в_зависимости_от_опции_скорости:
C - - - - - 0x03DCA2 0F:DC92: AD 26 01  LDA ram_option_speed
C - - - - - 0x03DCA5 0F:DC95: F0 04     BEQ bra_DC9B
C - - - - - 0x03DCA7 0F:DC97: A9 80     LDA #$80
C - - - - - 0x03DCA9 0F:DC99: D0 BD     BNE bra_DC58    ; jmp
bra_DC9B:
C - - - - - 0x03DCAB 0F:DC9B: A9 50     LDA #$50
C - - - - - 0x03DCAD 0F:DC9D: D0 B9     BNE bra_DC58    ; jmp



sub_0x03DCC1_добавить_A_Y_к_spdX:
; A = spd_X_lo
; Y = spd_X_hi
; bzk optimize, переместить в банк 16
C - - - - - 0x03DCC1 0F:DCB1: 18        CLC
C - - - - - 0x03DCC2 0F:DCB2: 7D 90 04  ADC ram_obj_spd_X_lo,X ; 0496 
C - - - - - 0x03DCC5 0F:DCB5: 9D 90 04  STA ram_obj_spd_X_lo,X ; 0496 
C - - - - - 0x03DCC8 0F:DCB8: 98        TYA
C - - - - - 0x03DCC9 0F:DCB9: 7D 80 04  ADC ram_obj_spd_X_hi,X ; 0486 
C - - - - - 0x03DCCC 0F:DCBC: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0486 
C - - - - - 0x03DCCF 0F:DCBF: 60        RTS



sub_0x03DCE6_запись_spd_Z:
; bzk optimize, добавить все значения как lo и hi
; bzk optimize, подготовить правильный Y на вход без AND F0 (если необрезанный Y больше нигде нужен)
; bzk optimize, переместить в банк 12
C - - - - - 0x03DCE6 0F:DCD6: 9D 60 04  STA ram_obj_spd_Z_hi,X ; 0481 
C - - - - - 0x03DCE9 0F:DCD9: 98        TYA
C - - - - - 0x03DCEA 0F:DCDA: 29 F0     AND #$F0
C - - - - - 0x03DCEC 0F:DCDC: 9D 70 04  STA ram_obj_spd_Z_lo,X ; 0491 
C - - - - - 0x03DCEF 0F:DCDF: 60        RTS



sub_0x03DCFD_ограничить_pos_Y_во_время_падения:
; bzk optimize, переместить в банк 12
C - - - - - 0x03DCFD 0F:DCED: A9 B0     LDA #con_координата_пола
C - - - - - 0x03DCFF 0F:DCEF: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x03DD02 0F:DCF2: B0 03     BCS bra_DCF7_RTS
; if игрок касается пола
C - - - - - 0x03DD04 0F:DCF4: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
bra_DCF7_RTS:
C - - - - - 0x03DD07 0F:DCF7: 60        RTS



sub_0x03DD0A:
; bzk optimize, переместить в банк 12
C - - - - - 0x03DD0A 0F:DCFA: A5 2A     LDA ram_002A
C - - - - - 0x03DD0C 0F:DCFC: 29 03     AND #$03
C - - - - - 0x03DD0E 0F:DCFE: 09 80     ORA #$80
C - - - - - 0x03DD10 0F:DD00: 9D 00 05  STA ram_0500_obj,X ; 0506 
C - - - - - 0x03DD13 0F:DD03: 60        RTS



sub_0x03DD14_повернуть_прилетающего_сплинтера_в_нужную_сторону_по_горизонтали:
; bzk optimize, переместить в банк 12
C - - - - - 0x03DD14 0F:DD04: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0447 
C - - - - - 0x03DD17 0F:DD07: 4A        LSR
C - - - - - 0x03DD18 0F:DD08: 29 40     AND #$40
C - - - - - 0x03DD1A 0F:DD0A: 85 00     STA ram_0000
C - - - - - 0x03DD1C 0F:DD0C: BD 10 05  LDA ram_obj_flip,X ; 0517 
C - - - - - 0x03DD1F 0F:DD0F: 29 BF     AND #$40 ^ $FF
C D 2 - - - 0x03DD6F 0F:DD5F: 05 00     ORA ram_0000
C - - - - - 0x03DD71 0F:DD61: 9D 10 05  STA ram_obj_flip,X ; 0517 
C - - - - - 0x03DD74 0F:DD64: 60        RTS



sub_DD65_повернуть_объект_в_противоположную_сторону_по_горизонтали:
sub_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали:
loc_0x03DD75_повернуть_объект_в_противоположную_сторону_по_горизонтали:
; X = индекс объекта (персы или мяч)
C D 2 - - - 0x03DD75 0F:DD65: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 0516 
C - - - - - 0x03DD78 0F:DD68: 49 40     EOR #$40
C - - - - - 0x03DD7A 0F:DD6A: 9D 10 05  STA ram_obj_flip,X ; 0510 0511 0516 
C - - - - - 0x03DD7D 0F:DD6D: 60        RTS



sub_0x03DD96:
; bzk optimize, переместить в банк 12
C - - - - - 0x03DD96 0F:DD86: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 0482 
; bzk bug? почему ссылка на 057F?
C - - - - - 0x03DD99 0F:DD89: 59 80 04  EOR ram_obj_spd_X_hi,Y ; 0480 0481 057F 
C - - - - - 0x03DD9C 0F:DD8C: 30 1A     BMI bra_DDA8
C - - - - - 0x03DD9E 0F:DD8E: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x03DDA1 0F:DD91: D9 80 04  CMP ram_obj_spd_X_hi,Y ; 0480 0481 
C - - - - - 0x03DDA4 0F:DD94: D0 06     BNE bra_DD9C
C - - - - - 0x03DDA6 0F:DD96: BD 90 04  LDA ram_obj_spd_X_lo,X ; 0490 0491 
C - - - - - 0x03DDA9 0F:DD99: D9 90 04  CMP ram_obj_spd_X_lo,Y ; 0490 0491 
bra_DD9C:
C - - - - - 0x03DDAC 0F:DD9C: BD 80 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x03DDAF 0F:DD9F: 10 04     BPL bra_DDA5
C - - - - - 0x03DDB1 0F:DDA1: 6A        ROR
C - - - - - 0x03DDB2 0F:DDA2: 49 80     EOR #$80
C - - - - - 0x03DDB4 0F:DDA4: 2A        ROL
bra_DDA5:
C - - - - - 0x03DDB5 0F:DDA5: A9 00     LDA #$00
C - - - - - 0x03DDB7 0F:DDA7: 60        RTS
bra_DDA8:
C - - - - - 0x03DDB8 0F:DDA8: A9 80     LDA #$80
C - - - - - 0x03DDBA 0F:DDAA: 60        RTS



sub_0x03DDF9_запись_сидячего_состояния_персу:
loc_0x03DDF9_запись_сидячего_состояния_персу:
; bzk optimize, переместить в банк 12
C D 2 - - - 0x03DDF9 0F:DDE9: A9 07     LDA #con_plr_state_сидит
C - - - - - 0x03DDFB 0F:DDEB: 9D 20 05  STA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x03DDFE 0F:DDEE: A9 01     LDA #$01
C - - - - - 0x03DE00 0F:DDF0: 9D 40 05  STA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x03DE03 0F:DDF3: A9 00     LDA #$00
C - - - - - 0x03DE05 0F:DDF5: 9D 7A 06  STA ram_067A_plr,X ; 067A 067B 
C - - - - - 0x03DE08 0F:DDF8: 9D 60 05  STA ram_obj_timer,X ; 0560 0561 
C - - - - - 0x03DE0B 0F:DDFB: 60        RTS



sub_0x03DE0C_выбор_палитры_перса_с_сохранением_X:
C - - - - - 0x03DE0C 0F:DDFC: 8A        TXA
C - - - - - 0x03DE0D 0F:DDFD: 48        PHA
C - - - - - 0x03DE0E 0F:DDFE: 09 04     ORA #$04
C - - - - - 0x03DE10 0F:DE00: AA        TAX
C - - - - - 0x03DE11 0F:DE01: B5 9E     LDA ram_plr_id - $04,X ; 00A2 00A3 
; tip_индекс_буфера_палитры + $04
; tip_индекс_буфера_палитры + $05
C - - - - - 0x03DE13 0F:DE03: 20 2A E3  JSR sub_E32A_выбрать_палитру_персу
C - - - - - 0x03DE16 0F:DE06: 68        PLA
C - - - - - 0x03DE17 0F:DE07: AA        TAX
C - - - - - 0x03DE18 0F:DE08: 60        RTS



sub_DE09_очистить_очки_обоих_игроков:
sub_0x03DE19_очистить_очки_обоих_игроков:
loc_0x03DE19_очистить_очки_обоих_игроков:
C D 2 - - - 0x03DE19 0F:DE09: 20 16 DE  JSR sub_DE16_очистить_очки_p1
C - - - - - 0x03DE1C 0F:DE0C: A2 03     LDX #$03
C - - - - - 0x03DE1E 0F:DE0E: A9 00     LDA #$00
bra_DE10_loop:
C - - - - - 0x03DE20 0F:DE10: 95 AE     STA ram_p1_score,X
C - - - - - 0x03DE22 0F:DE12: CA        DEX
C - - - - - 0x03DE23 0F:DE13: 10 FB     BPL bra_DE10_loop
C - - - - - 0x03DE25 0F:DE15: 60        RTS



sub_DE16_очистить_очки_p1:
loc_DE16_очистить_очки_p1:
C - - - - - 0x03DE26 0F:DE16: A2 03     LDX #$03
C - - - - - 0x03DE28 0F:DE18: A9 00     LDA #$00
bra_DE1A_loop:
C - - - - - 0x03DE2A 0F:DE1A: 95 B2     STA ram_p2_score,X
C - - - - - 0x03DE2C 0F:DE1C: CA        DEX
C - - - - - 0x03DE2D 0F:DE1D: 10 FB     BPL bra_DE1A_loop
C - - - - - 0x03DE2F 0F:DE1F: 60        RTS



sub_DE20_удалить_объекты_перса:
sub_0x03DE30_удалить_объекты_перса:
loc_0x03DE30_удалить_объекты_перса:
C D 2 - - - 0x03DE30 0F:DE20: 8A        TXA
C - - - - - 0x03DE31 0F:DE21: 29 01     AND #$01
C - - - - - 0x03DE33 0F:DE23: 18        CLC
C - - - - - 0x03DE34 0F:DE24: 69 02     ADC #$02
C - - - - - 0x03DE36 0F:DE26: A8        TAY
bra_DE27_loop:
C - - - - - 0x03DE37 0F:DE27: 20 C7 DA  JSR sub_DAC7_удалить_объект_сохранив_XY
C - - - - - 0x03DE3A 0F:DE2A: C8        INY
C - - - - - 0x03DE3B 0F:DE2B: C8        INY
C - - - - - 0x03DE3C 0F:DE2C: C0 0E     CPY #$0E
C - - - - - 0x03DE3E 0F:DE2E: B0 0B     BCS bra_DE3B_RTS
C - - - - - 0x03DE40 0F:DE30: 98        TYA
C - - - - - 0x03DE41 0F:DE31: 29 FE     AND #$FE
C - - - - - 0x03DE43 0F:DE33: C9 06     CMP #$06
C - - - - - 0x03DE45 0F:DE35: D0 F0     BNE bra_DE27_loop
C - - - - - 0x03DE47 0F:DE37: C8        INY
C - - - - - 0x03DE48 0F:DE38: C8        INY
C - - - - - 0x03DE49 0F:DE39: D0 EC     BNE bra_DE27_loop   ; jmp
bra_DE3B_RTS:
C - - - - - 0x03DE4B 0F:DE3B: 60        RTS



sub_0x03DE4C_корректировка_урона_с_учетом_прочности_перса:
C - - - - - 0x03DE4C 0F:DE3C: A0 00     LDY #$00
C - - - - - 0x03DE4E 0F:DE3E: 84 19     STY ram_0019
; * 10
C - - - - - 0x03DE50 0F:DE40: 0A        ASL
C - - - - - 0x03DE51 0F:DE41: 26 19     ROL ram_0019
C - - - - - 0x03DE53 0F:DE43: 0A        ASL
C - - - - - 0x03DE54 0F:DE44: 26 19     ROL ram_0019
C - - - - - 0x03DE56 0F:DE46: 0A        ASL
C - - - - - 0x03DE57 0F:DE47: 26 19     ROL ram_0019
C - - - - - 0x03DE59 0F:DE49: 0A        ASL
C - - - - - 0x03DE5A 0F:DE4A: 26 19     ROL ram_0019    ; делимое hi
C - - - - - 0x03DE5C 0F:DE4C: 85 18     STA ram_0018    ; делимое lo
C - - - - - 0x03DE5E 0F:DE4E: B5 A0     LDA ram_strength,X
C - - - - - 0x03DE60 0F:DE50: 0A        ASL
C - - - - - 0x03DE61 0F:DE51: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x03DE64 0F:DE54: 18        CLC
C - - - - - 0x03DE65 0F:DE55: 79 34 F1  ADC tbl_F134_прочность_персов,Y
C - - - - - 0x03DE68 0F:DE58: BC 20 05  LDY ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x03DE6B 0F:DE5B: C0 0A     CPY #con_plr_state_брошен_соперником
C - - - - - 0x03DE6D 0F:DE5D: D0 08     BNE bra_DE67
C - - - - - 0x03DE6F 0F:DE5F: 48        LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x03DE70 0F:DE60: 20 E7 F5  CLC
C - - - - - 0x03DE73 0F:DE63: 4C 00 AB  ADC tbl_F13B_дополнительная_прочность_персов_на_броски,Y
bra_DE67:
C - - - - - 0x03DE79 0F:DE69: 20 00 D9  JSR sub_D900_деление_16бит_на_16бит
C - - - - - 0x03DE7C 0F:DE6C: A5 18     LDA ram_0018    ; частное lo
C - - - - - 0x03DE7E 0F:DE6E: D0 02     BNE bra_DE72_RTS
C - - - - - 0x03DE80 0F:DE70: A9 03     LDA #$03
bra_DE72_RTS:
C - - - - - 0x03DE82 0F:DE72: 60        RTS



tbl_F134_прочность_персов:
; базовая strength персов, суммируется с ram_strength
- D 3 - - - 0x03F144 0F:F134: 14        .byte $14   ; 00 con_fighter_leo
- D 3 - - - 0x03F145 0F:F135: 13        .byte $13   ; 01 con_fighter_raph
- D 3 - - - 0x03F146 0F:F136: 12        .byte $12   ; 02 con_fighter_mike
- D 3 - - - 0x03F147 0F:F137: 13        .byte $13   ; 03 con_fighter_don
- D 3 - - - 0x03F148 0F:F138: 0F        .byte $0F   ; 04 con_fighter_casey
- D 3 - - - 0x03F149 0F:F139: 1F        .byte $1F   ; 05 con_fighter_hot
- D 3 - - - 0x03F14A 0F:F13A: 1A        .byte $1A   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $14   ; 07 con_fighter___leo
                                        .byte $13   ; 08 con_fighter___raph
                                        .byte $12   ; 09 con_fighter___mike
                                        .byte $13   ; 0A con_fighter___don
                                        .byte $0F   ; 0B con_fighter___casey
                                        .byte $1F   ; 0C con_fighter___hot
                                        .byte $1A   ; 0D con_fighter___shred
                                    .endif



tbl_F13B_дополнительная_прочность_персов_на_броски:
                                        .byte $03   ; 00 con_fighter_leo
                                        .byte $03   ; 01 con_fighter_raph
                                        .byte $03   ; 02 con_fighter_mike
                                        .byte $03   ; 03 con_fighter_don
                                        .byte $01   ; 04 con_fighter_casey
                                        .byte $FF   ; 05 con_fighter_hot
                                        .byte $01   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $03   ; 07 con_fighter___leo
                                        .byte $03   ; 08 con_fighter___raph
                                        .byte $03   ; 09 con_fighter___mike
                                        .byte $03   ; 0A con_fighter___don
                                        .byte $01   ; 0B con_fighter___casey
                                        .byte $FF   ; 0C con_fighter___hot
                                        .byte $01   ; 0D con_fighter___shred
                                    .endif



sub_0x03DE87:
C - - - - - 0x03DE87 0F:DE77: 20 A2 DE  JSR sub_DEA2
loc_DE7A:
C D 2 - - - 0x03DE8A 0F:DE7A: B0 3D     BCS bra_DEB9_RTS
C - - - - - 0x03DE8C 0F:DE7C: 68        PLA
C - - - - - 0x03DE8D 0F:DE7D: 68        PLA
loc_0x03DE8E:
C - - - - - 0x03DE8E 0F:DE7E: A9 04     LDA #$04
C - - - - - 0x03DE90 0F:DE80: 9D 30 05  STA ram_0530_obj_state,X ; 0530 0531 
C - - - - - 0x03DE93 0F:DE83: A9 80     LDA #$80
C - - - - - 0x03DE95 0F:DE85: 9D 80 05  STA ram_0580_obj,X ; 0580 0581 
C - - - - - 0x03DE98 0F:DE88: 0A        LDA #$00 ; con_plr_state_на_земле
C - - - - - 0x03DE99 0F:DE89: 9D 20 05  STA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x03DE9C 0F:DE8C: 9D 40 05  STA ram_obj_state_lo,X ; 0540 0541 
C - - - - - 0x03DE9F 0F:DE8F: 8D 0E 04  STA ram_obj_anim_id + $0E
C - - - - - 0x03DEA2 0F:DE92: 8D 0F 04  STA ram_obj_anim_id + $0F
C - - - - - 0x03DEA5 0F:DE95: A5 00     LDA ram_0000
C - - - - - 0x03DEA7 0F:DE97: 9D E0 04  STA ram_04E0_obj,X ; 04E0 04E1 
C - - - - - 0x03DEAD 0F:DE9D: A9 1C     LDA #con_075C_1C
C - - - - - 0x03DEAF 0F:DE9F: 4C 94 F6  JMP loc_F68B_выключить_звуки_и_записать_новый



sub_DEA2:
sub_0x03DEB2:
C - - - - - 0x03DEB2 0F:DEA2: 18        CLC
C - - - - - 0x03DEB3 0F:DEA3: 7D 45 06  ADC ram_plr_damage,X ; 0645 0646 
C - - - - - 0x03DEB6 0F:DEA6: 9D 45 06  STA ram_plr_damage,X ; 0645 0646 
bra_DEA9_casey:
; con_fighter_casey
; con_fighter___casey
C - - - - - 0x03DEB9 0F:DEA9: A9 00     LDA #$00
bra_DEAB:
C - - - - - 0x03DEBB 0F:DEAB: 85 00     STA ram_0000
C - - - - - 0x03DEBD 0F:DEAD: A9 00     LDA #$00
C - - - - - 0x03DEBF 0F:DEAF: 9D F0 05  STA ram_05F0_obj,X ; 05F0 05F1 
C - - - - - 0x03DEC2 0F:DEB2: 38        SEC
C - - - - - 0x03DEC3 0F:DEB3: BD 90 05  LDA ram_plr_hp_lo,X ; 0590 0591 
C - - - - - 0x03DEC6 0F:DEB6: FD 45 06  SBC ram_plr_damage,X ; 0645 0646 
bra_DEB9_RTS:
C - - - - - 0x03DEC9 0F:DEB9: 60        RTS



sub_0x03DECA:
C - - - - - 0x03DECA 0F:DEBA: 20 C0 DE  JSR sub_DEC0
C - - - - - 0x03DECD 0F:DEBD: 4C 7A DE  JMP loc_DE7A    ; возможен PLA PLA



sub_DEC0:
C - - - - - 0x03DED0 0F:DEC0: 18        CLC
C - - - - - 0x03DED1 0F:DEC1: 7D 45 06  ADC ram_plr_damage,X ; 0645 0646 
C - - - - - 0x03DED4 0F:DEC4: 9D 45 06  STA ram_plr_damage,X ; 0645 0646 
C - - - - - 0x03DED7 0F:DEC7: A4 A9     LDY ram_global_obj_index
C - - - - - 0x03DED9 0F:DEC9: B9 50 05  LDA ram_obj_id,Y ; 0550 0551 
                                    .if con_новые_персы = $00
C - - - - - 0x03DEDC 0F:DECC: C9 04     CMP #con_fighter_casey
C - - - - - 0x03DEDE 0F:DECE: F0 D9     BEQ bra_DEA9_casey
                                    .else
                                        CMP #con_fighter_casey
                                        BEQ bra_DEA9_casey
                                        CMP #con_fighter___casey
                                        BEQ bra_DEA9_casey
                                    .endif
C - - - - - 0x03DEE0 0F:DED0: A9 80     LDA #$80
C - - - - - 0x03DEE2 0F:DED2: D0 D7     BNE bra_DEAB    ; jmp



sub_0x03DEE4:
C - - - - - 0x03DEE4 0F:DED4: 48        PHA
C - - - - - 0x03DEE5 0F:DED5: 8A        TXA
C - - - - - 0x03DEE6 0F:DED6: 29 01     AND #$01
C - - - - - 0x03DEE8 0F:DED8: A8        TAY
C - - - - - 0x03DEE9 0F:DED9: B9 40 04  LDA ram_obj_pos_X_lo,Y ; 0440 0441 
C - - - - - 0x03DEEC 0F:DEDC: 99 4C 04  STA ram_obj_pos_X_lo + $0C,Y ; 044C 044D 
C - - - - - 0x03DEEF 0F:DEDF: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x03DEF2 0F:DEE2: 99 1C 04  STA ram_obj_pos_Y_lo + $0C,Y ; 041C 041D 
C - - - - - 0x03DEF5 0F:DEE5: B9 10 05  LDA ram_obj_flip,Y ; 0510 0511 
C - - - - - 0x03DEF8 0F:DEE8: 99 1C 05  STA ram_obj_flip + $0C,Y ; 051C 051D 
C - - - - - 0x03DEFB 0F:DEEB: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 0524 0525 
C - - - - - 0x03DEFE 0F:DEEE: C9 03     CMP #$03
C - - - - - 0x03DF00 0F:DEF0: D0 04     BNE bra_DEF6
- - - - - - 0x03DF02 0F:DEF2: 68        PLA
- - - - - - 0x03DF03 0F:DEF3: A9 00     LDA #$00
- - - - - - 0x03DF05 0F:DEF5: 48        PHA
bra_DEF6:
C - - - - - 0x03DF06 0F:DEF6: 68        PLA
C - - - - - 0x03DF07 0F:DEF7: 99 0C 04  STA ram_obj_anim_id + $0C,Y ; 040C 040D 
C - - - - - 0x03DF0A 0F:DEFA: 60        RTS



sub_0x03DF0B:
C - - - - - 0x03DF0B 0F:DEFB: A9 E8     LDA #$E8
C - - - - - 0x03DF0D 0F:DEFD: DD 40 04  CMP ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x03DF10 0F:DF00: 90 07     BCC bra_DF09
C - - - - - 0x03DF12 0F:DF02: A9 18     LDA #$18
C - - - - - 0x03DF14 0F:DF04: DD 40 04  CMP ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x03DF17 0F:DF07: 90 03     BCC bra_DF0C_RTS
bra_DF09:
C - - - - - 0x03DF19 0F:DF09: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 
bra_DF0C_RTS:
C - - - - - 0x03DF1C 0F:DF0C: 60        RTS



sub_0x03DF1D:
C - - - - - 0x03DF1D 0F:DF0D: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0411 0417 
C - - - - - 0x03DF20 0F:DF10: 98        TYA
C - - - - - 0x03DF21 0F:DF11: 90 03     BCC bra_DF16
C - - - - - 0x03DF23 0F:DF13: 4C 58 DC  JMP loc_DC58_добавить_A_00_к_spd_Z
bra_DF16:
C - - - - - 0x03DF26 0F:DF16: 20 FC D1  JSR sub_D1FC_EOR
C - - - - - 0x03DF29 0F:DF19: 4C 54 DC  JMP loc_DC54_добавить_A_FF_к_spd_Z



tbl_0x03DF2C_рейндж_броска:
; расстояния хвата для броска
- D 2 - - - 0x03DF2C 0F:DF1C: 07        .byte $07   ; 00 con_fighter_leo
- D 2 - - - 0x03DF2D 0F:DF1D: 06        .byte $06   ; 01 con_fighter_raph
- D 2 - - - 0x03DF2E 0F:DF1E: 08        .byte $08   ; 02 con_fighter_mike
- D 2 - - - 0x03DF2F 0F:DF1F: 07        .byte $07   ; 03 con_fighter_don
- D 2 - - - 0x03DF30 0F:DF20: 09        .byte $09   ; 04 con_fighter_casey
- D 2 - - - 0x03DF31 0F:DF21: 07        .byte $07   ; 05 con_fighter_hot
- D 2 - - - 0x03DF32 0F:DF22: 08        .byte $08   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $07   ; 07 con_fighter___leo
                                        .byte $06   ; 08 con_fighter___raph
                                        .byte $08   ; 09 con_fighter___mike
                                        .byte $07   ; 0A con_fighter___don
                                        .byte $09   ; 0B con_fighter___casey
                                        .byte $07   ; 0C con_fighter___hot
                                        .byte $08   ; 0D con_fighter___shred
                                    .endif



sub_0x03DF33:
C - - - - - 0x03DF33 0F:DF23: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x03DF36 0F:DF26: B9 41 DF  LDA tbl_DF41,Y
C - - - - - 0x03DF39 0F:DF29: A8        TAY
C - - - - - 0x03DF3A 0F:DF2A: 20 4F DF  JSR sub_DF4F
C - - - - - 0x03DF3D 0F:DF2D: BD C0 05  LDA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x03DF40 0F:DF30: 10 0E     BPL bra_DF40_RTS
C - - - - - 0x03DF42 0F:DF32: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x03DF45 0F:DF35: B9 48 DF  LDA tbl_DF48,Y
sub_DF38:
loc_DF38:
sub_0x03DF48:
loc_0x03DF48:
C D 2 - - - 0x03DF48 0F:DF38: 9D D0 05  STA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x03DF4B 0F:DF3B: A9 00     LDA #$00
C - - - - - 0x03DF4D 0F:DF3D: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
bra_DF40_RTS:
C - - - - - 0x03DF50 0F:DF40: 60        RTS



tbl_DF41:
- D 2 - - - 0x03DF51 0F:DF41: 0E        .byte con_DFE6_0E   ; 00 con_fighter_leo
- D 2 - - - 0x03DF52 0F:DF42: 0E        .byte con_DFE6_0E   ; 01 con_fighter_raph
- D 2 - - - 0x03DF53 0F:DF43: 0E        .byte con_DFE6_0E   ; 02 con_fighter_mike
- D 2 - - - 0x03DF54 0F:DF44: 0E        .byte con_DFE6_0E   ; 03 con_fighter_don
- D 2 - - - 0x03DF55 0F:DF45: 0F        .byte con_DFE6_0F   ; 04 con_fighter_casey
- D 2 - - - 0x03DF56 0F:DF46: 10        .byte con_DFE6_10   ; 05 con_fighter_hot
- D 2 - - - 0x03DF57 0F:DF47: 11        .byte con_DFE6_11   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_DFE6_0E   ; 07 con_fighter___leo
                                        .byte con_DFE6_0E   ; 08 con_fighter___raph
                                        .byte con_DFE6_0E   ; 09 con_fighter___mike
                                        .byte con_DFE6_0E   ; 0A con_fighter___don
                                        .byte con_DFE6_0F   ; 0B con_fighter___casey
                                        .byte con_DFE6_10   ; 0C con_fighter___hot
                                        .byte con_DFE6_11   ; 0D con_fighter___shred
                                    .endif

tbl_DF48:
- D 2 - - - 0x03DF58 0F:DF48: 04        .byte $04   ; 00 con_fighter_leo
- D 2 - - - 0x03DF59 0F:DF49: 04        .byte $04   ; 01 con_fighter_raph
- D 2 - - - 0x03DF5A 0F:DF4A: 04        .byte $04   ; 02 con_fighter_mike
- D 2 - - - 0x03DF5B 0F:DF4B: 04        .byte $04   ; 03 con_fighter_don
- D 2 - - - 0x03DF5C 0F:DF4C: 02        .byte $02   ; 04 con_fighter_casey
- D 2 - - - 0x03DF5D 0F:DF4D: 04        .byte $04   ; 05 con_fighter_hot
- D 2 - - - 0x03DF5E 0F:DF4E: 04        .byte $04   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $04   ; 07 con_fighter___leo
                                        .byte $04   ; 08 con_fighter___raph
                                        .byte $04   ; 09 con_fighter___mike
                                        .byte $04   ; 0A con_fighter___don
                                        .byte $02   ; 0B con_fighter___casey
                                        .byte $04   ; 0C con_fighter___hot
                                        .byte $04   ; 0D con_fighter___shred
                                    .endif



sub_DF4F:
sub_0x03DF5F:
loc_0x03DF5F:
C D 2 - - - 0x03DF5F 0F:DF4F: 84 00     STY ram_0000
C - - - - - 0x03DF61 0F:DF51: DE C0 05  DEC ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x03DF64 0F:DF54: 10 2F     BPL bra_DF85
C - - - - - 0x03DF66 0F:DF56: BD D0 05  LDA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x03DF69 0F:DF59: F0 2A     BEQ bra_DF85
loc_DF5B_loop:
C D 2 - - - 0x03DF6B 0F:DF5B: DE D0 05  DEC ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x03DF6E 0F:DF5E: BD D0 05  LDA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x03DF71 0F:DF61: 0A        ASL
C - - - - - 0x03DF72 0F:DF62: 79 E6 DF  ADC tbl_DFE6,Y
C - - - - - 0x03DF75 0F:DF65: A8        TAY
C - - - - - 0x03DF76 0F:DF66: B9 01 E0  LDA tbl_E000 + $01,Y
C - - - - - 0x03DF79 0F:DF69: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x03DF7C 0F:DF6C: A5 00     LDA ram_0000
C - - - - - 0x03DF7E 0F:DF6E: C9 04     CMP #$04
C - - - - - 0x03DF80 0F:DF70: 90 04     BCC bra_DF76
C - - - - - 0x03DF82 0F:DF72: C9 0B     CMP #$0B
C - - - - - 0x03DF84 0F:DF74: 90 0F     BCC bra_DF85
bra_DF76:
C - - - - - 0x03DF86 0F:DF76: AC 26 01  LDY ram_option_speed
C - - - - - 0x03DF89 0F:DF79: F0 0A     BEQ bra_DF85
; если скорость turbo, уменьшить значение в 1.5 раза
C - - - - - 0x03DF8B 0F:DF7B: 85 01     STA ram_0001
C - - - - - 0x03DF8D 0F:DF7D: 46 01     LSR ram_0001
C - - - - - 0x03DF8F 0F:DF7F: 38        SEC
C - - - - - 0x03DF90 0F:DF80: E5 01     SBC ram_0001
C - - - - - 0x03DF92 0F:DF82: 9D C0 05  STA ram_obj_anim_timer,X ; 05C0 05C1 
bra_DF85:
C - - - - - 0x03DF95 0F:DF85: A4 00     LDY ram_0000
C - - - - - 0x03DF97 0F:DF87: BD D0 05  LDA ram_obj_anim_cnt,X ; 05D0 05D1 
C - - - - - 0x03DF9A 0F:DF8A: 0A        ASL
C - - - - - 0x03DF9B 0F:DF8B: 79 E6 DF  ADC tbl_DFE6,Y
C - - - - - 0x03DF9E 0F:DF8E: A8        TAY
C - - - - - 0x03DF9F 0F:DF8F: B9 00 E0  LDA tbl_E000,Y
C - - - - - 0x03DFA2 0F:DF92: F0 04     BEQ bra_DF98
C D 2 - - - 0x03DFA4 0F:DF94: 9D 00 04  STA ram_obj_anim_id,X ; 0400 0401 
C - - - - - 0x03DFA7 0F:DF97: 60        RTS
bra_DF98:
C - - - - - 0x03DFA8 0F:DF98: B9 01 E0  LDA tbl_E000 + $01,Y
C - - - - - 0x03DFAB 0F:DF9B: 20 90 F6  JSR sub_F690_записать_звук_сохранив_X_Y
C - - - - - 0x03DFAE 0F:DF9E: A4 00     LDY ram_0000
C - - - - - 0x03DFB0 0F:DFA0: 4C 5B DF  JMP loc_DF5B_loop



sub_DFA3:
sub_0x03DFB3:
C - - - - - 0x03DFB3 0F:DFA3: 20 A9 DF  JSR sub_DFA9
C - - - - - 0x03DFB6 0F:DFA6: 4C 51 F7  JMP loc_F751



sub_DFA9:
C - - - - - 0x03DFB9 0F:DFA9: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x03DFBC 0F:DFAC: B9 00 E1  LDA tbl_E100,Y
C - - - - - 0x03DFBF 0F:DFAF: 20 38 DF  JSR sub_DF38
C - - - - - 0x03DFC2 0F:DFB2: A9 00     LDA #$00
C - - - - - 0x03DFC4 0F:DFB4: 8D 0D 04  STA ram_obj_anim_id + $0C + $01
C - - - - - 0x03DFC7 0F:DFB7: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x03DFC9 0F:DFB9: C9 10     CMP #$10
C - - - - - 0x03DFCB 0F:DFBB: B0 1F     BCS bra_DFDC_RTS
C - - - - - 0x03DFCD 0F:DFBD: 8A        TXA
C - - - - - 0x03DFCE 0F:DFBE: 48        PHA
C - - - - - 0x03DFCF 0F:DFBF: A9 01     LDA #$01
C - - - - - 0x03DFD1 0F:DFC1: 85 18     STA ram_0018
bra_DFC3_loop:
C - - - - - 0x03DFD3 0F:DFC3: A6 18     LDX ram_0018
C - - - - - 0x03DFD5 0F:DFC5: 8A        TXA
C - - - - - 0x03DFD6 0F:DFC6: 09 80     ORA #$80
C - - - - - 0x03DFD8 0F:DFC8: 9D 00 05  STA ram_0500_obj,X ; 0500 0501 
C - - - - - 0x03DFDB 0F:DFCB: 8A        TXA
C - - - - - 0x03DFDC 0F:DFCC: 18        CLC
C - - - - - 0x03DFDD 0F:DFCD: 69 04     ADC #$04
C - - - - - 0x03DFDF 0F:DFCF: AA        TAX
C - - - - - 0x03DFE0 0F:DFD0: BD 4C 05  LDA ram_obj_id - $04,X ; 0550 0551 
; tip_индекс_буфера_палитры + $04
; tip_индекс_буфера_палитры + $05
C - - - - - 0x03DFE3 0F:DFD3: 20 2A E3  JSR sub_E32A_выбрать_палитру_персу
C - - - - - 0x03DFE6 0F:DFD6: C6 18     DEC ram_0018
C - - - - - 0x03DFE8 0F:DFD8: 10 E9     BPL bra_DFC3_loop
C - - - - - 0x03DFEA 0F:DFDA: 68        PLA
C - - - - - 0x03DFEB 0F:DFDB: AA        TAX
bra_DFDC_RTS:
C - - - - - 0x03DFEC 0F:DFDC: 60        RTS



sub_DFDD:
C - - - - - 0x03DFED 0F:DFDD: BC 50 05  LDY ram_obj_id,X ; 0550 0551 
C - - - - - 0x03DFF0 0F:DFE0: B9 07 E1  LDA tbl_E107,Y
C - - - - - 0x03DFF3 0F:DFE3: 4C 38 DF  JMP loc_DF38



tbl_DFE6:
; смотреть con_DFE6
- D 2 - - - 0x03DFF6 0F:DFE6: 00        .byte off_E000_00 - tbl_E001
- D 2 - - - 0x03DFF7 0F:DFE7: 06        .byte off_E006_01 - tbl_E001
- D 2 - - - 0x03DFF8 0F:DFE8: 12        .byte off_E012_02 - tbl_E001
- D 2 - - - 0x03DFF9 0F:DFE9: 1E        .byte off_E01E_03 - tbl_E001
- D 2 - - - 0x03DFFA 0F:DFEA: 26        .byte off_E026_04 - tbl_E001
- D 2 - - - 0x03DFFB 0F:DFEB: 3A        .byte off_E03A_05 - tbl_E001
- D 2 - - - 0x03DFFC 0F:DFEC: 58        .byte off_E058_06 - tbl_E001
- D 2 - - - 0x03DFFD 0F:DFED: 58        .byte off_E058_07 - tbl_E001
- D 2 - - - 0x03DFFE 0F:DFEE: 6A        .byte off_E06A_08 - tbl_E001
- D 2 - - - 0x03DFFF 0F:DFEF: 76        .byte off_E076_09 - tbl_E001
- D 2 - - - 0x03E000 0F:DFF0: 9C        .byte off_E09C_0A - tbl_E001
- D 2 - - - 0x03E001 0F:DFF1: A6        .byte off_E0A6_0B - tbl_E001
- D 2 - - - 0x03E002 0F:DFF2: AA        .byte off_E0AA_0C - tbl_E001
- D 2 - - - 0x03E003 0F:DFF3: B6        .byte off_E0B6_0D - tbl_E001
- D 2 - - - 0x03E004 0F:DFF4: C2        .byte off_E0C2_0E - tbl_E001
- D 2 - - - 0x03E005 0F:DFF5: CA        .byte off_E0CA_0F - tbl_E001
- D 2 - - - 0x03E006 0F:DFF6: CE        .byte off_E0CE_10 - tbl_E001
- D 2 - - - 0x03E007 0F:DFF7: D6        .byte off_E0D6_11 - tbl_E001
- D 2 - - - 0x03E008 0F:DFF8: DE        .byte off_E0DE_12 - tbl_E001
- D 2 - - - 0x03E009 0F:DFF9: E4        .byte off_E0E4_13 - tbl_E001
- D 2 - - - 0x03E00A 0F:DFFA: E4        .byte off_E0E4_14 - tbl_E001
- - - - - - 0x03E00B 0F:DFFB: E4        .byte off_E0E4_15 - tbl_E001
- D 2 - - - 0x03E00C 0F:DFFC: E4        .byte off_E0E4_16 - tbl_E001
- D 2 - - - 0x03E00D 0F:DFFD: EE        .byte off_E0EE_17 - tbl_E001
- D 2 - - - 0x03E00E 0F:DFFE: F2        .byte off_E0F2_18 - tbl_E001
- D 2 - - - 0x03E00F 0F:DFFF: F8        .byte off_E0F8_19 - tbl_E001



tbl_E000:
tbl_E001:
; todo разобрать, проверить есть ли смежные
off_E000_00:
;                                              +---------- ram_obj_anim_id / флаг для записи звука если 00
;                                              |    +----- ram_obj_anim_timer / номер звука если первый байт 00
;                                              |    |
- D 3 - - - 0x03E010 0F:E000: 99        .byte $99, $04   ; 00
- D 3 - - - 0x03E012 0F:E002: D1        .byte $D1, $06   ; 02
- D 3 - - - 0x03E014 0F:E004: 9D        .byte $9D, $06   ; 04

off_E006_01:
- D 3 - - - 0x03E016 0F:E006: 99        .byte $99, $09   ; 06
- D 3 - - - 0x03E018 0F:E008: D0        .byte $D0, $08   ; 08
- D 3 - - - 0x03E01A 0F:E00A: D4        .byte $D4, $08   ; 0A
- D 3 - - - 0x03E01C 0F:E00C: D5        .byte $D5, $08   ; 0C
- D 3 - - - 0x03E01E 0F:E00E: AE        .byte $AE, $08   ; 0E
- D 3 - - - 0x03E020 0F:E010: A6        .byte $A6, $10   ; 10

off_E012_02:
- D 3 - - - 0x03E022 0F:E012: D1        .byte $D1, $10   ; 12
- D 3 - - - 0x03E024 0F:E014: D1        .byte $D1, $06   ; 14
- D 3 - - - 0x03E026 0F:E016: 9D        .byte $9D, $0A   ; 16
- D 3 - - - 0x03E028 0F:E018: D5        .byte $D5, $06   ; 18
- D 3 - - - 0x03E02A 0F:E01A: D4        .byte $D4, $0A   ; 1A
- D 3 - - - 0x03E02C 0F:E01C: A0        .byte $A0, $04   ; 1C

off_E01E_03:
- - - - - - 0x03E02E 0F:E01E: 9F        .byte $9F, $08   ; 1E
- - - - - - 0x03E030 0F:E020: 9F        .byte $9F, $05   ; 20
- D 3 - - - 0x03E032 0F:E022: 9E        .byte $9E, $05   ; 22
- D 3 - - - 0x03E034 0F:E024: 9D        .byte $9D, $05   ; 24

off_E026_04:
- D 3 - - - 0x03E036 0F:E026: DD        .byte $DD, $08   ; 26
- D 3 - - - 0x03E038 0F:E028: DC        .byte $DC, $08   ; 28
- D 3 - - - 0x03E03A 0F:E02A: DB        .byte $DB, $08   ; 2A
- D 3 - - - 0x03E03C 0F:E02C: 99        .byte $99, $0A   ; 2C
- D 3 - - - 0x03E03E 0F:E02E: D0        .byte $D0, $08   ; 2E
- D 3 - - - 0x03E040 0F:E030: 9D        .byte $9D, $08   ; 30
- D 3 - - - 0x03E042 0F:E032: D5        .byte $D5, $08   ; 32
- D 3 - - - 0x03E044 0F:E034: D4        .byte $D4, $08   ; 34
- D 3 - - - 0x03E046 0F:E036: 00        .byte $00, con_075C_04   ; 36
- D 3 - - - 0x03E048 0F:E038: 99        .byte $99, $08   ; 38

off_E03A_05:
- D 3 - - - 0x03E04A 0F:E03A: DD        .byte $DD, $08   ; 3A
- D 3 - - - 0x03E04C 0F:E03C: 00        .byte $00, con_075C_04   ; 3C
- D 3 - - - 0x03E04E 0F:E03E: DC        .byte $DC, $08   ; 3E
- D 3 - - - 0x03E050 0F:E040: 8D        .byte $8D, $04   ; 40
- D 3 - - - 0x03E052 0F:E042: 00        .byte $00, con_075C_06   ; 42
- D 3 - - - 0x03E054 0F:E044: 8F        .byte $8F, $06   ; 44
- D 3 - - - 0x03E056 0F:E046: 8D        .byte $8D, $04   ; 46
- D 3 - - - 0x03E058 0F:E048: 00        .byte $00, con_075C_06   ; 48
- D 3 - - - 0x03E05A 0F:E04A: 8F        .byte $8F, $06   ; 4A
- D 3 - - - 0x03E05C 0F:E04C: 8D        .byte $8D, $04   ; 4C
- D 3 - - - 0x03E05E 0F:E04E: 00        .byte $00, con_075C_06   ; 4E
- D 3 - - - 0x03E060 0F:E050: 8F        .byte $8F, $06   ; 50
- D 3 - - - 0x03E062 0F:E052: 8D        .byte $8D, $04   ; 52
- D 3 - - - 0x03E064 0F:E054: 00        .byte $00, con_075C_06   ; 54
- D 3 - - - 0x03E066 0F:E056: 8F        .byte $8F, $08   ; 56

off_E058_06:
off_E058_07:
- D 3 - - - 0x03E068 0F:E058: D2        .byte $D2, $10   ; 58
- D 3 - - - 0x03E06A 0F:E05A: 9C        .byte $9C, $08   ; 5A
- D 3 - - - 0x03E06C 0F:E05C: D3        .byte $D3, $10   ; 5C
- D 3 - - - 0x03E06E 0F:E05E: 9C        .byte $9C, $08   ; 5E
- D 3 - - - 0x03E070 0F:E060: D2        .byte $D2, $10   ; 60
- D 3 - - - 0x03E072 0F:E062: 9C        .byte $9C, $08   ; 62
- D 3 - - - 0x03E074 0F:E064: D3        .byte $D3, $10   ; 64
- D 3 - - - 0x03E076 0F:E066: 9C        .byte $9C, $08   ; 66
- D 3 - - - 0x03E078 0F:E068: D2        .byte $D2, $10   ; 68

off_E06A_08:
- D 3 - - - 0x03E07A 0F:E06A: D0        .byte $D0, $08   ; 6A
- D 3 - - - 0x03E07C 0F:E06C: D1        .byte $D1, $08   ; 6C
- D 3 - - - 0x03E07E 0F:E06E: D0        .byte $D0, $08   ; 6E
- D 3 - - - 0x03E080 0F:E070: CF        .byte $CF, $08   ; 70
- D 3 - - - 0x03E082 0F:E072: 00        .byte $00, con_075C_06   ; 72
- D 3 - - - 0x03E084 0F:E074: 8B        .byte $8B, $08   ; 74

off_E076_09:
- - - - - - 0x03E086 0F:E076: BF        .byte $BF, $08   ; 76
- - - - - - 0x03E088 0F:E078: BE        .byte $BE, $08   ; 78
- - - - - - 0x03E08A 0F:E07A: BF        .byte $BF, $08   ; 7A
- D 3 - - - 0x03E08C 0F:E07C: BE        .byte $BE, $08   ; 7C
- D 3 - - - 0x03E08E 0F:E07E: BF        .byte $BF, $08   ; 7E
- D 3 - - - 0x03E090 0F:E080: BE        .byte $BE, $08   ; 80
- D 3 - - - 0x03E092 0F:E082: BF        .byte $BF, $08   ; 82
- D 3 - - - 0x03E094 0F:E084: BE        .byte $BE, $08   ; 84
- D 3 - - - 0x03E096 0F:E086: BD        .byte $BD, $08   ; 86
- D 3 - - - 0x03E098 0F:E088: BE        .byte $BE, $08   ; 88
- D 3 - - - 0x03E09A 0F:E08A: BC        .byte $BC, $08   ; 8A
- D 3 - - - 0x03E09C 0F:E08C: BE        .byte $BE, $08   ; 8C
- D 3 - - - 0x03E09E 0F:E08E: BD        .byte $BD, $08   ; 8E
- D 3 - - - 0x03E0A0 0F:E090: BE        .byte $BE, $08   ; 90
- D 3 - - - 0x03E0A2 0F:E092: BC        .byte $BC, $08   ; 92
- D 3 - - - 0x03E0A4 0F:E094: BE        .byte $BE, $08   ; 94
- D 3 - - - 0x03E0A6 0F:E096: BD        .byte $BD, $08   ; 96
- D 3 - - - 0x03E0A8 0F:E098: BE        .byte $BE, $08   ; 98
- D 3 - - - 0x03E0AA 0F:E09A: BC        .byte $BC, $08   ; 9A

off_E09C_0A:
- D 3 - - - 0x03E0AC 0F:E09C: C7        .byte $C7, $0C   ; 9C
- D 3 - - - 0x03E0AE 0F:E09E: C6        .byte $C6, $0C   ; 9E
- D 3 - - - 0x03E0B0 0F:E0A0: C5        .byte $C5, $0C   ; A0
- D 3 - - - 0x03E0B2 0F:E0A2: 00        .byte $00, con_075C_06   ; A2
- D 3 - - - 0x03E0B4 0F:E0A4: C4        .byte $C4, $0C   ; A4

off_E0A6_0B:
- D 3 - - - 0x03E0B6 0F:E0A6: 9A        .byte $9A, $07   ; A6
- D 3 - - - 0x03E0B8 0F:E0A8: B9        .byte $B9, $04   ; A8

off_E0AA_0C:
- D 3 - - - 0x03E0BA 0F:E0AA: A2        .byte $A2, $06   ; AA
- D 3 - - - 0x03E0BC 0F:E0AC: CA        .byte $CA, $06   ; AC
- D 3 - - - 0x03E0BE 0F:E0AE: A6        .byte $A6, $06   ; AE
- D 3 - - - 0x03E0C0 0F:E0B0: A6        .byte $A6, $06   ; B0
- D 3 - - - 0x03E0C2 0F:E0B2: A7        .byte $A7, $06   ; B2
- D 3 - - - 0x03E0C4 0F:E0B4: A7        .byte $A7, $06   ; B4

off_E0B6_0D:
- D 3 - - - 0x03E0C6 0F:E0B6: C4        .byte $C4, $04   ; B6
- D 3 - - - 0x03E0C8 0F:E0B8: C3        .byte $C3, $04   ; B8
- D 3 - - - 0x03E0CA 0F:E0BA: C2        .byte $C2, $04   ; BA
- D 3 - - - 0x03E0CC 0F:E0BC: C4        .byte $C4, $04   ; BC
- D 3 - - - 0x03E0CE 0F:E0BE: C3        .byte $C3, $04   ; BE
- D 3 - - - 0x03E0D0 0F:E0C0: C2        .byte $C2, $04   ; C0

off_E0C2_0E:
- D 3 - - - 0x03E0D2 0F:E0C2: 88        .byte $88, $06   ; C2
- D 3 - - - 0x03E0D4 0F:E0C4: D1        .byte $D1, $0A   ; C4
- D 3 - - - 0x03E0D6 0F:E0C6: 88        .byte $88, $06   ; C6
- D 3 - - - 0x03E0D8 0F:E0C8: D0        .byte $D0, $0A   ; C8

off_E0CA_0F:
- D 3 - - - 0x03E0DA 0F:E0CA: CD        .byte $CD, $12   ; CA
- D 3 - - - 0x03E0DC 0F:E0CC: CC        .byte $CC, $10   ; CC

off_E0CE_10:
- D 3 - - - 0x03E0DE 0F:E0CE: 8C        .byte $8C, $05   ; CE
- D 3 - - - 0x03E0E0 0F:E0D0: B9        .byte $B9, $0E   ; D0
- D 3 - - - 0x03E0E2 0F:E0D2: 8C        .byte $8C, $05   ; D2
- D 3 - - - 0x03E0E4 0F:E0D4: B8        .byte $B8, $0E   ; D4

off_E0D6_11:
- D 3 - - - 0x03E0E6 0F:E0D6: 82        .byte $82, $06   ; D6
- D 3 - - - 0x03E0E8 0F:E0D8: C9        .byte $C9, $0D   ; D8
- D 3 - - - 0x03E0EA 0F:E0DA: 82        .byte $82, $06   ; DA
- D 3 - - - 0x03E0EC 0F:E0DC: C8        .byte $C8, $0D   ; DC

off_E0DE_12:
- D 3 - - - 0x03E0EE 0F:E0DE: B1        .byte $B1, $10   ; DE
- D 3 - - - 0x03E0F0 0F:E0E0: AA        .byte $AA, $0A   ; E0
- D 3 - - - 0x03E0F2 0F:E0E2: D8        .byte $D8, $0A   ; E2

off_E0E4_13:
off_E0E4_14:
off_E0E4_15:
off_E0E4_16:
- D 3 - - - 0x03E0F4 0F:E0E4: CF        .byte $CF, $10   ; E4
- D 3 - - - 0x03E0F6 0F:E0E6: CE        .byte $CE, $0A   ; E6
- D 3 - - - 0x03E0F8 0F:E0E8: CF        .byte $CF, $0A   ; E8
- D 3 - - - 0x03E0FA 0F:E0EA: CE        .byte $CE, $0A   ; EA
- D 3 - - - 0x03E0FC 0F:E0EC: D0        .byte $D0, $0A   ; EC

off_E0EE_17:
- D 3 - - - 0x03E0FE 0F:E0EE: CE        .byte $CE, $10   ; EE
- D 3 - - - 0x03E100 0F:E0F0: CD        .byte $CD, $10   ; F0

off_E0F2_18:
- D 3 - - - 0x03E102 0F:E0F2: BB        .byte $BB, $10   ; F2
- D 3 - - - 0x03E104 0F:E0F4: BA        .byte $BA, $10   ; F4
- D 3 - - - 0x03E106 0F:E0F6: B9        .byte $B9, $10   ; F6

off_E0F8_19:
- D 3 - - - 0x03E108 0F:E0F8: CA        .byte $CA, $10   ; F8
- D 3 - - - 0x03E10A 0F:E0FA: AA        .byte $AA, $10   ; FA
- D 3 - - - 0x03E10C 0F:E0FC: C8        .byte $C8, $10   ; FC
- D 3 - - - 0x03E10E 0F:E0FE: C9        .byte $C9, $10   ; FE



tbl_E100:
- D 3 - - - 0x03E110 0F:E100: 0A        .byte $0A   ; 00 con_fighter_leo
- D 3 - - - 0x03E111 0F:E101: 0F        .byte $0F   ; 01 con_fighter_raph
- D 3 - - - 0x03E112 0F:E102: 09        .byte $09   ; 02 con_fighter_mike
- D 3 - - - 0x03E113 0F:E103: 09        .byte $09   ; 03 con_fighter_don
- D 3 - - - 0x03E114 0F:E104: 06        .byte $06   ; 04 con_fighter_casey
- D 3 - - - 0x03E115 0F:E105: 13        .byte $13   ; 05 con_fighter_hot
- D 3 - - - 0x03E116 0F:E106: 05        .byte $05   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $0A   ; 07 con_fighter___leo
                                        .byte $0F   ; 08 con_fighter___raph
                                        .byte $09   ; 09 con_fighter___mike
                                        .byte $09   ; 0A con_fighter___don
                                        .byte $06   ; 0B con_fighter___casey
                                        .byte $13   ; 0C con_fighter___hot
                                        .byte $05   ; 0D con_fighter___shred
                                    .endif



tbl_E107:
- D 3 - - - 0x03E117 0F:E107: 05        .byte $05   ; 00 con_fighter_leo
- D 3 - - - 0x03E118 0F:E108: 05        .byte $05   ; 01 con_fighter_raph
- - - - - - 0x03E119 0F:E109: 05        .byte $05   ; 02 con_fighter_mike
- D 3 - - - 0x03E11A 0F:E10A: 05        .byte $05   ; 03 con_fighter_don
- D 3 - - - 0x03E11B 0F:E10B: 02        .byte $02   ; 04 con_fighter_casey
- D 3 - - - 0x03E11C 0F:E10C: 03        .byte $03   ; 05 con_fighter_hot
- D 3 - - - 0x03E11D 0F:E10D: 04        .byte $04   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $05   ; 07 con_fighter___leo
                                        .byte $05   ; 08 con_fighter___raph
                                        .byte $05   ; 09 con_fighter___mike
                                        .byte $05   ; 0A con_fighter___don
                                        .byte $02   ; 0B con_fighter___casey
                                        .byte $03   ; 0C con_fighter___hot
                                        .byte $04   ; 0D con_fighter___shred
                                    .endif



sub_E10E_корректировка_значения_A_для_turbo:
sub_0x03E11E_корректировка_значения_A_для_turbo:
; если скорость turbo, уменьшить значение в 1.5 раза
; на выходе A = частное lo
C - - - - - 0x03E11E 0F:E10E: 84 1E     STY ram_001E
C - - - - - 0x03E120 0F:E110: AC 26 01  LDY ram_option_speed
C - - - - - 0x03E123 0F:E113: F0 16     BEQ bra_E12B
C - - - - - 0x03E125 0F:E115: A4 95     LDY ram_0095_стадия_игры
C - - - - - 0x03E127 0F:E117: C0 07     CPY #$07
                                        BEQ bra_E12A
                                        CPY #$19
C - - - - - 0x03E129 0F:E119: D0 10     BNE bra_E12B
bra_E12A:
; умножить на 02 и поделить на 03
C - - - - - 0x03E12B 0F:E11B: 0A        ASL
C - - - - - 0x03E12C 0F:E11C: 85 18     STA ram_0018    ; делимое lo
C - - - - - 0x03E12E 0F:E11E: A9 00     LDA #$00
C - - - - - 0x03E130 0F:E120: 85 19     STA ram_0019    ; делимое hi
C - - - - - 0x03E132 0F:E122: A9 03     LDA #$03    ; делитель lo
C - - - - - 0x03E136 0F:E126: 20 00 D9  JSR sub_D900_деление_16бит_на_16бит
C - - - - - 0x03E139 0F:E129: A5 18     LDA ram_0018    ; частное lo
bra_E12B:
C - - - - - 0x03E13B 0F:E12B: A4 1E     LDY ram_001E
C - - - - - 0x03E13D 0F:E12D: 60        RTS



loc_E12E_подготовить_затемнение_из_цветного_в_черный:
sub_E12E_подготовить_затемнение_из_цветного_в_черный:
loc_0x03E13E_подготовить_затемнение_из_цветного_в_черный:
C D 3 - - - 0x03E13E 0F:E12E: A9 80     LDA #$80
C - - - - - 0x03E140 0F:E130: 85 30     STA ram_метод_изменения_яркости
loc_E133:
C D 3 - - - 0x03E143 0F:E133: A9 00     LDA #$00
C - - - - - 0x03E145 0F:E135: 8D 6D 06  STA ram_066D
C - - - - - 0x03E148 0F:E138: 8D 02 06  STA ram_015E_счетчик_яркости_1
C - - - - - 0x03E14B 0F:E13B: 85 A4     STA ram_00A4_кнопки
C - - - - - 0x03E14D 0F:E13D: 60        RTS



loc_E13E_подготовить_затемнение_из_белого_в_цветной:
sub_0x03E14E_подготовить_затемнение_из_белого_в_цветной:
loc_0x03E14E_подготовить_затемнение_из_белого_в_цветной:
C D 3 - - - 0x03E14E 0F:E13E: A9 40     LDA #$40
C - - - - - 0x03E150 0F:E140: 2C        .byte $2C   ; BIT
loc_E141_подготовить_осветление_из_черного_в_цветной:
sub_0x03E151_подготовить_осветление_из_черного_в_цветной:
loc_0x03E151_подготовить_осветление_из_черного_в_цветной:
C - - - - - 0x03E151 0F:E141: A9 01     LDA #$01
bra_E143:
C - - - - - 0x03E153 0F:E143: 85 30     STA ram_метод_изменения_яркости
C - - - - - 0x03E155 0F:E145: 4C 33 E1  JMP loc_E133



sub_E148_подготовить_затемнение_из_белого_в_цветной:
C - - - - - 0x03E158 0F:E148: A9 20     LDA #$20
C - - - - - 0x03E15A 0F:E14A: D0 F7     BNE bra_E143    ; jmp



sub_0x03E15C:
C - - - - - 0x03E15C 0F:E14C: AC 26 01  LDY ram_option_speed
C - - - - - 0x03E15F 0F:E14F: F0 0C     BEQ bra_E15D_RTS
C - - - - - 0x03E161 0F:E151: A4 95     LDY ram_0095_стадия_игры
C - - - - - 0x03E163 0F:E153: C0 07     CPY #$07
C - - - - - 0x03E165 0F:E155: D0 06     BNE bra_E15D_RTS
C - - - - - 0x03E167 0F:E157: 85 00     STA ram_0000
C - - - - - 0x03E169 0F:E159: 4A        LSR
C - - - - - 0x03E16A 0F:E15A: 18        CLC
C - - - - - 0x03E16B 0F:E15B: 65 00     ADC ram_0000
bra_E15D_RTS:
C - - - - - 0x03E16D 0F:E15D: 60        RTS



tbl_0x03E16E_звук_выбора_перса:
- D 3 - - - 0x03E16E 0F:E15E: 53        .byte con_dpcm_warcry_turtle_1   ; 00 con_fighter_leo
- D 3 - - - 0x03E16F 0F:E15F: 53        .byte con_dpcm_warcry_turtle_1   ; 01 con_fighter_raph
- D 3 - - - 0x03E170 0F:E160: 53        .byte con_dpcm_warcry_turtle_1   ; 02 con_fighter_mike
- D 3 - - - 0x03E171 0F:E161: 53        .byte con_dpcm_warcry_turtle_1   ; 03 con_fighter_don
- D 3 - - - 0x03E172 0F:E162: 55        .byte con_dpcm_warcry_casey_1   ; 04 con_fighter_casey
- D 3 - - - 0x03E173 0F:E163: 59        .byte con_dpcm_warcry_hot_1   ; 05 con_fighter_hot
- D 3 - - - 0x03E174 0F:E164: 52        .byte con_dpcm_warcry_shred_1   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_dpcm_warcry_turtle_1   ; 07 con_fighter___leo
                                        .byte con_dpcm_warcry_turtle_1   ; 08 con_fighter___raph
                                        .byte con_dpcm_warcry_turtle_1   ; 09 con_fighter___mike
                                        .byte con_dpcm_warcry_turtle_1   ; 0A con_fighter___don
                                        .byte con_dpcm_warcry_casey_1   ; 0B con_fighter___casey
                                        .byte con_dpcm_warcry_hot_1   ; 0C con_fighter___hot
                                        .byte con_dpcm_warcry_shred_1   ; 0D con_fighter___shred
                                    .endif



sub_E165:
- - - - - - 0x03E175 0F:E165: EE 11 01  INC ram_0111
- - - - - - 0x03E178 0F:E168: 38        SEC
- - - - - - 0x03E179 0F:E169: AD 11 01  LDA ram_0111
- - - - - - 0x03E17C 0F:E16C: E9 0A     SBC #$0A
- - - - - - 0x03E17E 0F:E16E: 90 16     BCC bra_E186_RTS
- - - - - - 0x03E180 0F:E170: 8D 11 01  STA ram_0111
- - - - - - 0x03E183 0F:E173: EE 12 01  INC ram_0112
- - - - - - 0x03E186 0F:E176: 38        SEC
- - - - - - 0x03E187 0F:E177: AD 12 01  LDA ram_0112
- - - - - - 0x03E18A 0F:E17A: E9 0A     SBC #$0A
- - - - - - 0x03E18C 0F:E17C: 90 08     BCC bra_E186_RTS
- - - - - - 0x03E18E 0F:E17E: 8D 12 01  STA ram_0112
- - - - - - 0x03E191 0F:E181: A9 01     LDA #$01
- - - - - - 0x03E193 0F:E183: 8D 11 01  STA ram_0111
bra_E186_RTS:
- - - - - - 0x03E196 0F:E186: 60        RTS



loc_0x03E229_отрисовать_турнирную_сетку:
C D 3 - - - 0x03E229 0F:E219: AD 54 01  LDA ram_0154
C - - - - - 0x03E22C 0F:E21C: 0A        ASL
C - - - - - 0x03E22D 0F:E21D: A8        TAY
C - - - - - 0x03E22E 0F:E21E: B9 4C 01  LDA ram_tournament_fighter,Y ; 014C 014E 0150 
C - - - - - 0x03E231 0F:E221: 85 A2     STA ram_plr_id
C - - - - - 0x03E233 0F:E223: B9 4D 01  LDA ram_tournament_fighter + $01,Y ; 014D 014F 0151 
C - - - - - 0x03E236 0F:E226: 85 A3     STA ram_plr_id + $01
C - - - - - 0x03E238 0F:E228: 20 26 F7  JSR sub_F726_отрисовать_турнирную_сетку
C - - - - - 0x03E23B 0F:E22B: A9 40     LDA #$40
C - - - - - 0x03E23D 0F:E22D: 8D 60 05  STA ram_obj_timer
C - - - - - 0x03E240 0F:E230: 60        RTS



sub_E187_обработчик_стадии_игры:
C - - - - - 0x03E197 0F:E187: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x03E199 0F:E189: 20 32 D0  JSR sub_D032_поинтеры_после_JSR
- D 3 - I - 0x03E19C 0F:E18C: CE E1     .word ofs_001_E1CE_00_отрисовать_пустой_экран_и_очистить_оперативку
- D 3 - I - 0x03E19E 0F:E18E: FD E1     .word ofs_001_E1FD_01_еще_одна_чистка_экрана_и_прочего___отрисовка_турнирной_сетки
- D 3 - I - 0x03E1A0 0F:E190: E7 F7     .word ofs_001_F7E7_02_обработать_рожи_в_турнирной_сетке
- D 3 - I - 0x03E1A2 0F:E192: 4E E2     .word ofs_001_E24E_03_отрисовать_vs_экран
- D 3 - I - 0x03E1A4 0F:E194: 41 E3     .word ofs_001_E341_04_обработка_vs_экрана
- D 3 - I - 0x03E1A6 0F:E196: F3 E3     .word ofs_001_E3F3_05_отрисовка_арены___подготовка_к_бою
- D 3 - I - 0x03E1A8 0F:E198: 6D E4     .word ofs_001_E46D_06_подготовка_к_бою
- D 3 - I - 0x03E1AA 0F:E19A: A3 E4     .word ofs_001_E4A3_07_обработка_боя_на_арене
- D 3 - I - 0x03E1AC 0F:E19C: 2E E5     .word ofs_001_E52E_08_подготовка_к_подсчету_очков_после_боя
- D 3 - I - 0x03E1AE 0F:E19E: 5D E5     .word ofs_001_E55D_09_подсчет_очков_после_боя
- D 3 - I - 0x03E1B0 0F:E1A0: D5 E5     .word ofs_001_E5D5_0A_подготовка_экрана_с_поражением_после_боя
- D 3 - I - 0x03E1B2 0F:E1A2: 8F E6     .word ofs_001_E68F_0B_время_боя_закончилось
- D 3 - I - 0x03E1B4 0F:E1A4: FF E6     .word ofs_001_E6FF_0C
- D 3 - I - 0x03E1B6 0F:E1A6: 42 E7     .word ofs_001_E742_0D
- D 3 - I - 0x03E1B8 0F:E1A8: 3F F7     .word ofs_001_F73F_0E_обработка_экрана_continue
- D 3 - I - 0x03E1BA 0F:E1AA: 53 E7     .word ofs_001_E753_0F
- D 3 - I - 0x03E1BC 0F:E1AC: 5D E7     .word ofs_001_E75D_10
- D 3 - I - 0x03E1BE 0F:E1AE: F9 F7     .word ofs_001_F7F9_11_подготовка_экрана_rematch
- D 3 - I - 0x03E1C0 0F:E1B0: F0 F7     .word ofs_001_F7F0_12_обработка_экрана_rematch
- - - - - - 0x03E1C2 0F:E1B2: 70 E7     .word ofs_001_E770_13_переход_из_vs_cpu_в_vs_player___подготовка
- - - - - - 0x03E1C4 0F:E1B4: 8B E7     .word ofs_001_E78B_14_переход_из_vs_cpu_в_vs_player___обработка
- D 3 - I - 0x03E1C6 0F:E1B6: 99 E7     .word ofs_001_E799_15
- - - - - - 0x03E1C8 0F:E1B8: A1 E7     .word ofs_001_E7A1_16
- D 3 - I - 0x03E1CA 0F:E1BA: A1 E7     .word ofs_001_E7A1_17
- D 3 - I - 0x03E1CC 0F:E1BC: BE E7     .word ofs_001_E7BE_18_bonus_stage_отрисовка
- D 3 - I - 0x03E1CE 0F:E1BE: 30 E8     .word ofs_001_E830_19_bonus_stage_обработка
- D 3 - I - 0x03E1D0 0F:E1C0: 5C E8     .word ofs_001_E85C_1A_bonus_stage_win
- D 3 - I - 0x03E1D2 0F:E1C2: 81 E8     .word ofs_001_E881_1B_bonus_stage_lose
- D 3 - I - 0x03E1D4 0F:E1C4: 92 E8     .word ofs_001_E892_1C_bonus_stage_закончен
- D 3 - I - 0x03E1D6 0F:E1C6: A4 E8     .word ofs_001_E8A4_1D
- D 3 - I - 0x03E1D8 0F:E1C8: EA E8     .word ofs_001_E8EA_1E
- - - - - - 0x03E1DA 0F:E1CA: A7 E8     .word ofs_001_E8A7_1F
- - - - - - 0x03E1DC 0F:E1CC: FC E8     .word ofs_001_E8FC_20_expected_tougher



ofs_001_E1CE_00_отрисовать_пустой_экран_и_очистить_оперативку:
C - - J - - 0x03E1DE 0F:E1CE: 20 42 F0  JSR sub_F042_отрисовать_пустой_экран
C - - - - - 0x03E1E1 0F:E1D1: A5 AE     LDA ram_p1_score
C - - - - - 0x03E1E3 0F:E1D3: 48        PHA
C - - - - - 0x03E1E4 0F:E1D4: A5 AF     LDA ram_p1_score + $01
C - - - - - 0x03E1E6 0F:E1D6: 48        PHA
C - - - - - 0x03E1E7 0F:E1D7: A5 B0     LDA ram_p1_score + $02
C - - - - - 0x03E1E9 0F:E1D9: 48        PHA
C - - - - - 0x03E1EA 0F:E1DA: A5 B1     LDA ram_p1_score + $03
C - - - - - 0x03E1EC 0F:E1DC: 48        PHA
C - - - - - 0x03E1ED 0F:E1DD: A5 A2     LDA ram_plr_id
C - - - - - 0x03E1EF 0F:E1DF: 48        PHA
C - - - - - 0x03E1F0 0F:E1E0: A5 A3     LDA ram_plr_id + $01
C - - - - - 0x03E1F2 0F:E1E2: 48        PHA
C - - - - - 0x03E1F3 0F:E1E3: 20 0D D0  JSR sub_D00D_очистить_оперативку_2
C - - - - - 0x03E1F6 0F:E1E6: 68        PLA
C - - - - - 0x03E1F7 0F:E1E7: 85 A3     STA ram_plr_id + $01
C - - - - - 0x03E1F9 0F:E1E9: 68        PLA
C - - - - - 0x03E1FA 0F:E1EA: 85 A2     STA ram_plr_id
C - - - - - 0x03E1FC 0F:E1EC: 68        PLA
C - - - - - 0x03E1FD 0F:E1ED: 85 B1     STA ram_p1_score + $03
C - - - - - 0x03E1FF 0F:E1EF: 68        PLA
C - - - - - 0x03E200 0F:E1F0: 85 B0     STA ram_p1_score + $02
C - - - - - 0x03E202 0F:E1F2: 68        PLA
C - - - - - 0x03E203 0F:E1F3: 85 AF     STA ram_p1_score + $01
C - - - - - 0x03E205 0F:E1F5: 68        PLA
C - - - - - 0x03E206 0F:E1F6: 85 AE     STA ram_p1_score
                                       ;LDA #con_0095_очистка_2
C - - - - - 0x03E208 0F:E1F8: E6 95     INC ram_0095_стадия_игры    ; 00 -> 01
C - - - - - 0x03E20A 0F:E1FA: 4C 8C FC  JMP loc_FC8C_set_mirroring_V



ofs_001_E1FD_01_еще_одна_чистка_экрана_и_прочего___отрисовка_турнирной_сетки:
; bzk optimize, повторная отрисовка пустого экрана после 00
                                       ;LDA #con_0095_рожи_в_турнирной_сетке
C - - J - - 0x03E20D 0F:E1FD: E6 95     INC ram_0095_стадия_игры    ; 01 -> 02
C - - - - - 0x03E20F 0F:E1FF: 20 3C F0  JSR sub_F03C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x03E212 0F:E202: 20 C2 F6  JSR sub_F6C2_выключить_музыку_и_звуки
C - - - - - 0x03E215 0F:E205: A6 2C     LDA ram_game_mode
                                        JSR sub_D032_поинтеры_после_JSR
                                        .word ofs_087_E231_00_story
                                        .word ofs_087_E246_01_vs_player
                                        .word ofs_087_E246_02_vs_cpu
                                        .word ofs_087_E20F_03_vs_team
                                        .word ofs_087_E20F_04_tournament
                                       ;.word ofs_087_E20F_05_options



ofs_087_E20F_03_vs_team:
ofs_087_E20F_04_tournament:
C - - - - - 0x03E21F 0F:E20F: 20 00 F6  JSR sub_F600_swap_prg_16_no_return
C - - - - - 0x03E226 0F:E216: 4C 70 BF  JMP loc_0x02FF80



ofs_087_E231_00_story:
C - - - - - 0x03E241 0F:E231: A5 9E     LDA ram_номер_боя_story
; по идее нахрен не нужно это условие,
; вряд ли в story будет несколько финальных боссов
                                    .if con_новые_персы = $00
                                        CMP #con_fighter_shred
                                        BEQ bra_E244
                                    .else
                                        CMP #con_fighter_shred
                                        BEQ bra_E244
                                        CMP #con_fighter___shred
                                        BEQ bra_E244
                                    .endif
C - - - - - 0x03E243 0F:E233: C5 A2     CMP ram_plr_id
C - - - - - 0x03E245 0F:E235: D0 0D     BNE bra_E244
C - - - - - 0x03E247 0F:E237: 69 00     ADC #$00
C - - - - - 0x03E249 0F:E239: 85 9E     STA ram_номер_боя_story
C - - - - - 0x03E24B 0F:E23B: C9 04     CMP #con_fighter_casey
C - - - - - 0x03E24D 0F:E23D: D0 05     BNE bra_E244
C - - - - - 0x03E24F 0F:E23F: 85 A3     STA ram_plr_id + $01
C - - - - - 0x03E251 0F:E241: 4C F8 E5  LDA #con_0095_bonus_game_отрисовка_1
                                        STA ram_0095_стадия_игры
                                        RTS
bra_E244:
; con_fighter_shred
; con_fighter___shred
C - - - - - 0x03E254 0F:E244: 85 A3     STA ram_plr_id + $01
ofs_087_E246_01_vs_player:
ofs_087_E246_02_vs_cpu:
loc_0x03E256:
C D 3 - - - 0x03E256 0F:E246: A9 03     LDA #con_0095_старт_vs_экрана    ; отрисовать vs экран
C - - - - - 0x03E258 0F:E248: 85 95     STA ram_0095_стадия_игры
C - - - - - 0x03E25A 0F:E24A: 4C 25 DC  JMP loc_DC25_запись_пары_chr_bg_06



ofs_001_E24E_03_отрисовать_vs_экран:
; 03 пишется в 0x03E258
C - - J - - 0x03E25E 0F:E24E: 20 3F F0  JSR sub_F03F_удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x03E261 0F:E251: A2 28     LDX #con_screen_vs
C - - - - - 0x03E263 0F:E253: 20 44 F0  JSR sub_F044_отрисовать_экран
                                       ;LDA #con_0095_vs_экран
C - - - - - 0x03E266 0F:E256: E6 95     INC ram_0095_стадия_игры    ; 03 -> 04
C - - - - - 0x03E268 0F:E258: A9 00     LDA #$00
C - - - - - 0x03E26A 0F:E25A: 8D 49 06  STA ram_plr_колво_побед_в_раундах
C - - - - - 0x03E26D 0F:E25D: 8D 4A 06  STA ram_plr_колво_побед_в_раундах + $01
C - - - - - 0x03E270 0F:E260: 8D 40 06  STA ram_номер_раунда_боя
C - - - - - 0x03E273 0F:E263: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E275 0F:E265: C9 03     CMP #$03
C - - - - - 0x03E277 0F:E267: 90 62     BCC bra_E2CB
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E279 0F:E269: A9 01     LDA #$01
C - - - - - 0x03E27B 0F:E26B: 85 A8     STA ram_local_obj_index
bra_E26D_loop:
C - - - - - 0x03E27D 0F:E26D: A5 A8     LDA ram_local_obj_index
C - - - - - 0x03E27F 0F:E26F: 0A        ASL
C - - - - - 0x03E280 0F:E270: AA        TAX
C - - - - - 0x03E281 0F:E271: BD 4F E9  LDA tbl_E94E + $01,X
C - - - - - 0x03E284 0F:E274: 85 02     STA ram_0002
C - - - - - 0x03E286 0F:E276: BD 4E E9  LDA tbl_E94E,X
C - - - - - 0x03E289 0F:E279: 85 03     STA ram_0003
C - - - - - 0x03E28B 0F:E27B: BD 4B E9  LDA tbl_E94A + $01,X
C - - - - - 0x03E28E 0F:E27E: BC 4A E9  LDY tbl_E94A,X
C - - - - - 0x03E291 0F:E281: 20 6B D2  JSR sub_D26B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x03E294 0F:E284: AD 54 01  LDA ram_0154
C - - - - - 0x03E297 0F:E287: 0A        ASL
C - - - - - 0x03E298 0F:E288: 65 A8     ADC ram_local_obj_index
C - - - - - 0x03E29A 0F:E28A: 85 01     STA ram_0001
C - - - - - 0x03E29C 0F:E28C: 0A        ASL
C - - - - - 0x03E29D 0F:E28D: 0A        ASL
C - - - - - 0x03E29E 0F:E28E: A8        TAY
C - - - - - 0x03E29F 0F:E28F: A9 03     LDA #$03
C - - - - - 0x03E2A1 0F:E291: 85 00     STA ram_0000
bra_E293_loop:
C - - - - - 0x03E2A3 0F:E293: 20 00 BF  JSR sub_BF00
C - - - - - 0x03E2A6 0F:E296: 29 7F     AND #$7F
C - - - - - 0x03E2A8 0F:E298: 20 5D D2  JSR sub_D25D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03E2AB 0F:E29B: C8        INY
C - - - - - 0x03E2AC 0F:E29C: C6 00     DEC ram_0000
C - - - - - 0x03E2AE 0F:E29E: 10 F3     BPL bra_E293_loop
C - - - - - 0x03E2B0 0F:E2A0: 20 5B D2  JSR sub_D25B_записать_FF_в_буфер_с_чтением_индекса
C - - - - - 0x03E2B3 0F:E2A3: A5 02     LDA ram_0002
C - - - - - 0x03E2B5 0F:E2A5: A4 03     LDY ram_0003
C - - - - - 0x03E2B7 0F:E2A7: 20 6B D2  JSR sub_D26B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x03E2BA 0F:E2AA: A4 01     LDY ram_0001
C - - - - - 0x03E2BC 0F:E2AC: B9 55 01  LDA ram_tournament_индекс_игрока,Y ; 0155 0156 0157 0158 0159 015A 
C - - - - - 0x03E2BF 0F:E2AF: 30 04     BMI bra_E2B5    ; if cpu
; if not cpu
C - - - - - 0x03E2C1 0F:E2B1: B9 05 01  LDA ram_0105,Y ; 0105 0106 0109 
C - - - - - 0x03E2C4 0F:E2B4: 2C        .byte $2C   ; BIT
bra_E2B5:
C - - - - - 0x03E2C5 0F:E2B5: A9 04     LDA #$04
C - - - - - 0x03E2C7 0F:E2B7: A8        TAY
C - - - - - 0x03E2C8 0F:E2B8: B9 52 E9  LDA tbl_E952_индекс,Y
C - - - - - 0x03E2CB 0F:E2BB: A8        TAY
bra_E2BC_loop:
C - - - - - 0x03E2CC 0F:E2BC: B9 57 E9  LDA tbl_E957,Y
C - - - - - 0x03E2CF 0F:E2BF: 20 5D D2  JSR sub_D25D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03E2D2 0F:E2C2: C8        INY
C - - - - - 0x03E2D3 0F:E2C3: C9 FF     CMP #$FF
C - - - - - 0x03E2D5 0F:E2C5: D0 F5     BNE bra_E2BC_loop
; FF
C - - - - - 0x03E2D7 0F:E2C7: C6 A8     DEC ram_local_obj_index
C - - - - - 0x03E2D9 0F:E2C9: 10 A2     BPL bra_E26D_loop
bra_E2CB:
C - - - - - 0x03E2DD 0F:E2CD: 20 A0 EB  JSR sub_EBA0_вывести_имя_перса_на_vs_экране
C - - - - - 0x03E2E0 0F:E2D0: A9 00     LDA #$00    ; отрисовать портреты на vs экране
C - - - - - 0x03E2E2 0F:E2D2: 20 D3 F7  JSR sub_F7D3_отрисовать_портреты
C - - - - - 0x03E2E5 0F:E2D5: A9 32     LDA #con_music_vs_screen
C - - - - - 0x03E2E7 0F:E2D7: 20 90 F6  JSR sub_F690_записать_звук_сохранив_X_Y
C - - - - - 0x03E2EA 0F:E2DA: A9 D0     LDA #$D0
C - - - - - 0x03E2EC 0F:E2DC: 8D 60 05  STA ram_obj_timer
C - - - - - 0x03E2EF 0F:E2DF: A2 FF     LDX #$FF
C - - - - - 0x03E2F1 0F:E2E1: 86 57     STX ram_0056
C - - - - - 0x03E2F3 0F:E2E3: A2 00     LDX #$00
C - - - - - 0x03E2F5 0F:E2E5: 86 56     STX ram_0056 + $01
C - - - - - 0x03E2F7 0F:E2E7: A9 06     LDA #con_0048_06
C - - - - - 0x03E2F9 0F:E2E9: 20 14 F8  JSR sub_F814_подготовить_irq_handler
C - - - - - 0x03E2FC 0F:E2EC: 4C 41 E1  JMP loc_E141_подготовить_осветление_из_черного_в_цветной



sub_BF00:
; перемещено из банка 00
C - - - - - 0x003F10 00:BF00: A5 2C     LDA ram_game_mode
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x003F12 00:BF02: 4A        LSR
C - - - - - 0x003F13 00:BF03: B0 04     BCS bra_BF09
; con_gm_tournament
C - - - - - 0x003F15 00:BF05: B9 30 01  LDA ram_tournament_name,Y ; 0130 0131 0132 0133 0134 0135 0136 0137 0138 0139 013A 013B 013C 013D 013E 013F 0140 0141 0142 0143 0144 0145 0146 0147 
C - - - - - 0x003F18 00:BF08: 60        RTS
bra_BF09:
; con_gm_vs_team
C - - - - - 0x003F19 00:BF09: A6 A8     LDX ram_local_obj_index
C - - - - - 0x003F1B 00:BF0B: BD 55 01  LDA ram_tournament_индекс_игрока,X ; 0155 0156 
C - - - - - 0x003F1E 00:BF0E: 30 02     BMI bra_BF12    ; if cpu
; if not cpu
C - - - - - 0x003F20 00:BF10: 4A        LSR
C - - - - - 0x003F21 00:BF11: 60        RTS
bra_BF12:
- - - - - - 0x003F22 00:BF12: 18        CLC
- - - - - - 0x003F23 00:BF13: 6D 51 01  ADC #$02
- - - - - - 0x003F26 00:BF16: A4 00     LDY ram_0000
- - - - - - 0x003F28 00:BF18: F0 03     BEQ bra_BF1D_RTS
- - - - - - 0x003F2A 00:BF1A: B9 1D BF  LDA tbl_BF1E - $01,Y
bra_BF1D_RTS:
- - - - - - 0x003F2D 00:BF1D: 60        RTS



tbl_BF1E:
- - - - - - 0x003F2E 00:BF1E: 9F        .byte $9F   ; 01
- - - - - - 0x003F2F 00:BF1F: 9A        .byte $9A   ; 02
- - - - - - 0x003F30 00:BF20: 8D        .byte $8D   ; 03



sub_E32A_выбрать_палитру_персу:
                                        STY ram_0004
C - - - - - 0x03E33D 0F:E32D: 48        PHA
; X = tip_индекс_буфера_палитры
C - - - - - 0x03E33E 0F:E32E: 8A        TXA
C - - - - - 0x03E33F 0F:E32F: 29 03     AND #$03
C - - - - - 0x03E341 0F:E331: F0 0A     BEQ bra_E33D    ; if палитра фона 00/палитра спрайтов 00
                                    .if con_новые_персы = $00
C - - - - - 0x03E343 0F:E333: A5 A2     LDA ram_plr_id
C - - - - - 0x03E345 0F:E335: C5 A3     CMP ram_plr_id + $01
C - - - - - 0x03E347 0F:E337: D0 04     BNE bra_E33D    ; if персы разные
                                    .else
                                        LDA ram_plr_id
                                        CMP ram_plr_id + $01
                                        BEQ bra_E339_персы_одинаковые
                                        CLC
                                        ADC #$07
                                        CMP ram_plr_id + $01
                                        BEQ bra_E339_персы_одинаковые
                                        SEC
                                        SBC #$07 * $02
                                        CMP ram_plr_id + $01
                                        BNE bra_E33D    ; if персы разные
bra_E339_персы_одинаковые:
                                    .endif
; if персы одинаковые
; C = 1
C - - - - - 0x03E349 0F:E339: 68        PLA
C - - - - - 0x03E34A 0F:E33A: 69 0B     ADC #con_колво_персов - $01
C - - - - - 0x03E34C 0F:E33C: 48        PHA
bra_E33D:
C - - - - - 0x03E34D 0F:E33D: 68        PLA
                                        TAY
                                        LDA tbl_E33E_индексы_палитры_перса,Y
                                        LDY ram_0004
C - - - - - 0x03E34E 0F:E33E: 4C 46 D3  JMP loc_D346_записать_3_цвета_в_буфер



tbl_E33E_индексы_палитры_перса:
; обычная палитра
                                        .byte con_AF40_pal + $0D   ; 00 con_fighter_leo
                                        .byte con_AF40_pal + $0E   ; 01 con_fighter_raph
                                        .byte con_AF40_pal + $0F   ; 02 con_fighter_mike
                                        .byte con_AF40_pal + $10   ; 03 con_fighter_don
                                        .byte con_AF40_pal + $11   ; 04 con_fighter_casey
                                        .byte con_AF40_pal + $12   ; 05 con_fighter_hot
                                        .byte con_AF40_pal + $13   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_AF40_pal + $0D   ; 07 con_fighter___leo
                                        .byte con_AF40_pal + $0E   ; 08 con_fighter___raph
                                        .byte con_AF40_pal + $0F   ; 09 con_fighter___mike
                                        .byte con_AF40_pal + $10   ; 0A con_fighter___don
                                        .byte con_AF40_pal + $11   ; 0B con_fighter___casey
                                        .byte con_AF40_pal + $12   ; 0C con_fighter___hot
                                        .byte con_AF40_pal + $13   ; 0D con_fighter___shred
                                    .endif
; запасная палитра
                                        .byte con_AF40_pal + $19   ; 00 con_fighter_leo
                                        .byte con_AF40_pal + $1A   ; 01 con_fighter_raph
                                        .byte con_AF40_pal + $1B   ; 02 con_fighter_mike
                                        .byte con_AF40_pal + $1C   ; 03 con_fighter_don
                                        .byte con_AF40_pal + $1D   ; 04 con_fighter_casey
                                        .byte con_AF40_pal + $1E   ; 05 con_fighter_hot
                                        .byte con_AF40_pal + $1F   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_AF40_pal + $19   ; 07 con_fighter___leo
                                        .byte con_AF40_pal + $1A   ; 08 con_fighter___raph
                                        .byte con_AF40_pal + $1B   ; 09 con_fighter___mike
                                        .byte con_AF40_pal + $1C   ; 0A con_fighter___don
                                        .byte con_AF40_pal + $1D   ; 0B con_fighter___casey
                                        .byte con_AF40_pal + $1E   ; 0C con_fighter___hot
                                        .byte con_AF40_pal + $1F   ; 0D con_fighter___shred
                                    .endif



ofs_001_E341_04_обработка_vs_экрана:
C - - J - - 0x03E351 0F:E341: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03E353 0F:E343: 29 10     AND #con_btn_Start
C - - - - - 0x03E355 0F:E345: D0 53     BNE bra_E39A
C - - - - - 0x03E357 0F:E347: A5 57     LDA ram_0056
C - - - - - 0x03E359 0F:E349: 29 F8     AND #$F8
C - - - - - 0x03E35B 0F:E34B: F0 3F     BEQ bra_E38C
C - - - - - 0x03E35D 0F:E34D: 38        SEC
C - - - - - 0x03E35E 0F:E34E: A5 57     LDA ram_0056
C - - - - - 0x03E360 0F:E350: E9 08     SBC #$08
C - - - - - 0x03E362 0F:E352: 85 57     STA ram_0056
C - - - - - 0x03E364 0F:E354: 69 10     ADC #$08
C - - - - - 0x03E366 0F:E356: 8D 40 04  STA ram_obj_pos_X_lo
C - - - - - 0x03E369 0F:E359: A9 00     LDA #$00
C - - - - - 0x03E36B 0F:E35B: 2A        ROL
C - - - - - 0x03E36C 0F:E35C: 8D 30 04  STA ram_obj_pos_X_hi
C - - - - - 0x03E36F 0F:E35F: 18        CLC
C - - - - - 0x03E370 0F:E360: A5 56     LDA ram_0056 + $01
C - - - - - 0x03E372 0F:E362: 69 08     ADC #$08
C - - - - - 0x03E374 0F:E364: 85 56     STA ram_0056 + $01
C - - - - - 0x03E376 0F:E366: E9 46     SBC #$46
C - - - - - 0x03E378 0F:E368: 8D 41 04  STA ram_obj_pos_X_lo + $01
C - - - - - 0x03E37B 0F:E36B: C9 B4     CMP #$B4
C - - - - - 0x03E37D 0F:E36D: A9 00     LDA #$00
C - - - - - 0x03E37F 0F:E36F: 2A        ROL
C - - - - - 0x03E380 0F:E370: 8D 31 04  STA ram_obj_pos_X_hi + $01
C - - - - - 0x03E383 0F:E373: A9 0F     LDA #$0F
C - - - - - 0x03E385 0F:E375: 8D 10 04  STA ram_obj_pos_Y_lo
C - - - - - 0x03E388 0F:E378: A9 8F     LDA #$8F
C - - - - - 0x03E38A 0F:E37A: 8D 11 04  STA ram_obj_pos_Y_lo + $01
C - - - - - 0x03E38D 0F:E37D: A5 57     LDA ram_0056
C - - - - - 0x03E38F 0F:E37F: 29 F8     AND #$F8
C - - - - - 0x03E391 0F:E381: D0 08     BNE bra_E38B_RTS
sub_E383_зафиксировать_pos_X_спрайтов:
                                        CLC
                                        LDA ram_0056
                                        ADC #$11
                                        BEQ bra_E385
                                        STA ram_obj_pos_X_lo
bra_E385:
C - - - - - 0x03E393 0F:E383: 38        SEC
C - - - - - 0x03E394 0F:E384: A5 56     LDA ram_0056 + $01
C - - - - - 0x03E396 0F:E386: E9 4F     SBC #$4F
C - - - - - 0x03E398 0F:E388: 8D 41 04  STA ram_obj_pos_X_lo + $01
bra_E38B_RTS:
C - - - - - 0x03E39B 0F:E38B: 60        RTS
bra_E38C:
C - - - - - 0x03E39F 0F:E38F: CE 60 05  DEC ram_obj_timer
C - - - - - 0x03E3A2 0F:E392: F0 11     BEQ bra_E3A5
C - - - - - 0x03E3A4 0F:E394: AC 60 05  LDY ram_obj_timer
C - - - - - 0x03E3A7 0F:E397: 88        DEY
C - - - - - 0x03E3A8 0F:E398: D0 F1     BNE bra_E38B_RTS
bra_E39A:
C - - - - - 0x03E3AA 0F:E39A: 20 83 E3  JSR sub_E383_зафиксировать_pos_X_спрайтов
C - - - - - 0x03E3AD 0F:E39D: A9 01     LDA #$01
C - - - - - 0x03E3AF 0F:E39F: 8D 60 05  STA ram_obj_timer
C - - - - - 0x03E3B2 0F:E3A2: 4C 2E E1  JMP loc_E12E_подготовить_затемнение_из_цветного_в_черный
bra_E3A5:
                                       ;LDA #con_0095_подготовка_арены
C - - - - - 0x03E3B5 0F:E3A5: E6 95     INC ram_0095_стадия_игры    ; 04 -> 05
C - - - - - 0x03E3B7 0F:E3A7: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E3B9 0F:E3A9: D0 0A     BNE bra_E3B5
; con_gm_story
C - - - - - 0x03E3BB 0F:E3AB: A5 9E     LDA ram_номер_боя_story
C - - - - - 0x03E3BD 0F:E3AD: C9 06     CMP #$06
C - - - - - 0x03E3BF 0F:E3AF: 90 04     BCC bra_E3B5
C - - - - - 0x03E3C1 0F:E3B1: A9 1D     LDA #con_0095_старт_угроз_шреда_в_story
C - - - - - 0x03E3C3 0F:E3B3: 85 95     STA ram_0095_стадия_игры
bra_E3B5:
C - - - - - 0x03E3C5 0F:E3B5: 4C 6D D4  JMP loc_D46D_запись_черной_палитры_в_буфер



loc_E3E3:
C D 3 - - - 0x03E3F3 0F:E3E3: AD 50 01  LDA ram_номер_боя_vs_team_и_переключатель
C - - - - - 0x03E3F6 0F:E3E6: 4A        LSR
C - - - - - 0x03E3F7 0F:E3E7: 4A        LSR
C - - - - - 0x03E3F8 0F:E3E8: A8        TAY
C - - - - - 0x03E3F9 0F:E3E9: B9 EF E3  LDA tbl_E3EF,Y
C - - - - - 0x03E3FC 0F:E3EC: 4C 25 FA  JMP loc_FA25_запись_банков_фона_из_A



tbl_E3EF:
- D 3 - - - 0x03E3FF 0F:E3EF: 80        .byte con_chr_bank_bg + $80   ; 00
- D 3 - - - 0x03E400 0F:E3F0: 84        .byte con_chr_bank_bg + $84   ; 04



ofs_001_E3F3_05_отрисовка_арены___подготовка_к_бою:
C - - J - - 0x03E403 0F:E3F3: 20 C2 F6  JSR sub_F6C2_выключить_музыку_и_звуки
C - - - - - 0x03E408 0F:E3F8: 20 00 F6  JSR sub_F600_swap_prg_16_no_return
C - - - - - 0x03E40B 0F:E3FB: 20 50 AE  JSR sub_0x02EE60_выбрать_палитру_уровня
C - - - - - 0x03E40E 0F:E3FE: 20 44 F0  JSR sub_F044_отрисовать_экран
C - - - - - 0x03E411 0F:E401: A2 0C     LDX #con_screen_tmnt
C - - - - - 0x03E413 0F:E403: 20 44 F0  JSR sub_F044_отрисовать_экран
                                        LDX #con_screen_шкала_здоровья
                                        JSR sub_F044_отрисовать_экран
C - - - - - 0x03E416 0F:E406: 20 9E EB  JSR sub_EB9E_вывести_имя_перса_над_шкалой_здоровья
C - - - - - 0x03E419 0F:E409: A2 01     LDX #$01
C - - - - - 0x03E41B 0F:E40B: 86 A8     STX ram_local_obj_index
bra_E40D_loop:
C - - - - - 0x03E41D 0F:E40D: A6 A8     LDX ram_local_obj_index
C - - - - - 0x03E41F 0F:E40F: 8A        TXA
C - - - - - 0x03E420 0F:E410: 09 04     ORA #$04
C - - - - - 0x03E422 0F:E412: AA        TAX
C - - - - - 0x03E423 0F:E413: B5 9E     LDA ram_plr_id - $04,X ; 00A2 00A3 
; tip_индекс_буфера_палитры + $04
; tip_индекс_буфера_палитры + $05
C - - - - - 0x03E425 0F:E415: 20 2A E3  JSR sub_E32A_выбрать_палитру_персу
C - - - - - 0x03E428 0F:E418: C6 A8     DEC ram_local_obj_index
C - - - - - 0x03E42A 0F:E41A: 10 F1     BPL bra_E40D_loop
C - - - - - 0x03E42C 0F:E41C: 20 3F EB  JSR sub_EB3F
C - - - - - 0x03E42F 0F:E41F: A2 01     LDX #$01
bra_E421_loop:
C - - - - - 0x03E431 0F:E421: B5 A2     LDA ram_plr_id,X ; 00A2 00A3 
C - - - - - 0x03E433 0F:E423: 9D 50 05  STA ram_obj_id,X ; 0550 0551 
                                        TAY
                                        LDA tbl_E467_флаг_черепахи,Y
                                        STA ram_флаг_черепахи,X
C - - - - - 0x03E436 0F:E426: BD 69 E4  LDA tbl_E469_default_pos_X_перса,X
C - - - - - 0x03E439 0F:E429: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x03E43C 0F:E42C: A9 B0     LDA #con_координата_пола
C - - - - - 0x03E43E 0F:E42E: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
                                        LDA tbl_E46B_default_flip_перса,X
                                        STA ram_obj_flip,X ; 0510 0511 
                                        JSR sub_F5DF_swap_prg_12
                                        LDY #con_init_anim_обычная_стойка
                                        JSR sub_0x024AF7_выбор_начальной_анимации_персу
C - - - - - 0x03E445 0F:E435: 20 00 F6  JSR sub_F600_swap_prg_16_no_return
C - - - - - 0x03E448 0F:E438: 20 00 AA  JSR sub_0x02EA10_автобаланс_сил_в_vs_team
                                        JSR sub_F617_restore_prg
C - - - - - 0x03E44C 0F:E43C: 8A        TXA
C - - - - - 0x03E44D 0F:E43D: 09 80     ORA #$80
C - - - - - 0x03E44F 0F:E43F: 9D 00 05  STA ram_0500_obj,X ; 0500 0501 
C - - - - - 0x03E452 0F:E442: CA        DEX
C - - - - - 0x03E453 0F:E443: 10 DC     BPL bra_E421_loop
C - - - - - 0x03E455 0F:E445: A2 0F     LDX #$0F
bra_E447_loop:
C - - - - - 0x03E457 0F:E447: 20 D3 DA  JSR sub_DAD3_удалить_объект
C - - - - - 0x03E45A 0F:E44A: CA        DEX
C - - - - - 0x03E45B 0F:E44B: E0 02     CPX #$02
C - - - - - 0x03E45D 0F:E44D: B0 F8     BCS bra_E447_loop
C - - - - - 0x03E470 0F:E460: 20 14 F7  JSR sub_F714_смена_тайловых_наборов_для_анимаций
C - - - - - 0x03E473 0F:E463: 20 0B F8  JSR sub_F80B
C - - - - - 0x03E476 0F:E466: 4C 41 E1  JMP loc_E141_подготовить_осветление_из_черного_в_цветной



tbl_E467_флаг_черепахи:
                                        .byte $00 ; 00 con_fighter_leo
                                        .byte $00 ; 01 con_fighter_raph
                                        .byte $00 ; 02 con_fighter_mike
                                        .byte $00 ; 03 con_fighter_don
                                        .byte $40 ; 04 con_fighter_casey
                                        .byte $40 ; 05 con_fighter_hot
                                        .byte $40 ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $00 ; 07 con_fighter___leo
                                        .byte $00 ; 08 con_fighter___raph
                                        .byte $00 ; 09 con_fighter___mike
                                        .byte $00 ; 0A con_fighter___don
                                        .byte $40 ; 0B con_fighter___casey
                                        .byte $40 ; 0C con_fighter___hot
                                        .byte $40 ; 0D con_fighter___shred
                                    .endif



tbl_E469_default_pos_X_перса:
tbl_0x03E479_default_pos_X_перса:
- D 3 - - - 0x03E479 0F:E469: 58        .byte $58   ; 00
- D 3 - - - 0x03E47A 0F:E46A: A8        .byte $A8   ; 01

tbl_E46B_default_flip_перса:
- D 3 - - - 0x03E47B 0F:E46B: 00        .byte $00   ; 00
- D 3 - - - 0x03E47C 0F:E46C: 40        .byte $40   ; 01



ofs_001_E46D_06_подготовка_к_бою:
C - - J - - 0x03E47D 0F:E46D: A4 9E     LDY ram_номер_боя_story
C - - - - - 0x03E47F 0F:E46F: B9 AB FC  LDA tbl_FCAB_саундтрек,Y
C - - - - - 0x03E482 0F:E472: 20 8B F6  JSR sub_F68B_выключить_звуки_и_записать_новый
                                       ;LDA #con_0095_раунд_идет
C - - - - - 0x03E485 0F:E475: E6 95     INC ram_0095_стадия_игры    ; 06 -> 07
C - - - - - 0x03E487 0F:E477: A9 06     LDA #$06
C - - - - - 0x03E489 0F:E479: 8D 36 05  STA ram_0530_obj_state + $06
C - - - - - 0x03E48C 0F:E47C: A9 00     LDA #$00
C - - - - - 0x03E48E 0F:E47E: 8D 30 05  STA ram_0530_obj_state
C - - - - - 0x03E491 0F:E481: 8D 31 05  STA ram_0530_obj_state + $01
C - - - - - 0x03E494 0F:E484: A0 3B     JSR sub_D3EC_очистить_0600_063B
C - - - - - 0x03E49C 0F:E48C: 8A        TXA
C - - - - - 0x03E49D 0F:E48D: A4 2C     LDY ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E49F 0F:E48F: F0 03     BEQ bra_E494_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E4A1 0F:E491: AD 27 01  LDA ram_option_timer
bra_E494_story:
C - - - - - 0x03E4A4 0F:E494: 0A        ASL
C - - - - - 0x03E4A5 0F:E495: A8        TAY
C - - - - - 0x03E4A6 0F:E496: B9 79 E9  LDA tbl_E979,Y
C - - - - - 0x03E4A9 0F:E499: 8D 72 06  STA ram_время_десятки
C - - - - - 0x03E4AC 0F:E49C: B9 7A E9  LDA tbl_E979 + $01,Y
C - - - - - 0x03E4AF 0F:E49F: 8D 73 06  STA ram_время_единицы
C - - - - - 0x03E4B2 0F:E4A2: 60        RTS



ofs_001_E4A3_07_обработка_боя_на_арене:
C - - J - - 0x03E4B3 0F:E4A3: A4 2C     LDY ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E4B5 0F:E4A5: AD 72 06  LDA ram_время_десятки
C - - - - - 0x03E4B8 0F:E4A8: 0D 73 06  ORA ram_время_единицы
C - - - - - 0x03E4BB 0F:E4AB: F0 50     BEQ bra_E4FD_время_вышло
; if время еще есть
C - - - - - 0x03E4BD 0F:E4AD: C0 03     CPY #$03
C - - - - - 0x03E4BF 0F:E4AF: 90 35     BCC bra_E4E6
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E4C1 0F:E4B1: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03E4C3 0F:E4B3: 29 20     AND #con_btn_Select
C - - - - - 0x03E4C5 0F:E4B5: F0 2F     BEQ bra_E4E6
; скипнуть бой cpu vs cpu в режиме tournament
C - - - - - 0x03E4C7 0F:E4B7: AD 54 01  LDA ram_0154
C - - - - - 0x03E4CA 0F:E4BA: 0A        ASL
C - - - - - 0x03E4CB 0F:E4BB: A8        TAY
C - - - - - 0x03E4CC 0F:E4BC: B9 55 01  LDA ram_tournament_индекс_игрока,Y ; 0155 0157 
C - - - - - 0x03E4CF 0F:E4BF: 39 56 01  AND ram_tournament_индекс_игрока + $01,Y ; 0156 0158 
C - - - - - 0x03E4D2 0F:E4C2: 10 22     BPL bra_E4E6    ; if один из соперников (или оба) не cpu
; скнипнуть бой
C - - - - - 0x03E4D4 0F:E4C4: A0 00     LDY #$00
C - - - - - 0x03E4D6 0F:E4C6: AD 49 06  LDA ram_plr_колво_побед_в_раундах
C - - - - - 0x03E4D9 0F:E4C9: CD 4A 06  CMP ram_plr_колво_побед_в_раундах + $01
C - - - - - 0x03E4DC 0F:E4CC: D0 02     BNE bra_E4D0
C - - - - - 0x03E4DE 0F:E4CE: 46 28     LSR ram_random_1
bra_E4D0:
C - - - - - 0x03E4E0 0F:E4D0: B0 01     BCS bra_E4D3
C - - - - - 0x03E4E2 0F:E4D2: C8        INY
bra_E4D3:
C - - - - - 0x03E4E3 0F:E4D3: A9 02     LDA #$02
C - - - - - 0x03E4E5 0F:E4D5: 99 49 06  STA ram_plr_колво_побед_в_раундах,Y ; 064A 
C - - - - - 0x03E4E8 0F:E4D8: A9 0A     LDA #con_0095_бой_окончен
C - - - - - 0x03E4EA 0F:E4DA: 85 95     STA ram_0095_стадия_игры
C - - - - - 0x03E4EC 0F:E4DC: A9 5B     LDA #$5B    ; con_music_volume_fade
C - - - - - 0x03E4EE 0F:E4DE: 85 98     STA ram_0098_flag
C - - - - - 0x03E4F0 0F:E4E0: 20 90 F6  JSR sub_F690_записать_звук_сохранив_X_Y
C - - - - - 0x03E4F3 0F:E4E3: 4C 2E E1  JMP loc_E12E_подготовить_затемнение_из_цветного_в_черный
bra_E4E6:
C - - - - - 0x03E4F6 0F:E4E6: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E4F8 0F:E4E8: F0 04     BEQ bra_E4EE
C - - - - - 0x03E4FA 0F:E4EA: C9 02     CMP #$02
C - - - - - 0x03E4FC 0F:E4EC: D0 0C     BNE bra_E4FA
bra_E4EE:
; con_gm_story
; con_gm_vs_cpu
C - - - - - 0x03E4FE 0F:E4EE: A5 8F     LDA ram_btn_press + $01
C - - - - - 0x03E500 0F:E4F0: 29 10     AND #con_btn_Start
C - - - - - 0x03E502 0F:E4F2: D0 2E     BNE bra_E522_перейти_в_режим_vs_player
C - - - - - 0x03E504 0F:E4F4: A5 92     LDA ram_btn_hold + $01
C - - - - - 0x03E506 0F:E4F6: C9 C8     CMP #con_btns_AB + con_btn_Up
C - - - - - 0x03E508 0F:E4F8: F0 28     BEQ bra_E522_перейти_в_режим_vs_player
bra_E4FA:
; con_gm_story
; con_gm_vs_player
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E50A 0F:E4FA: 4C 94 F7  JMP loc_F794
bra_E4FD_время_вышло:
bra_E4FD_loop:
; bzk bug, проследить чтобы объекты hitspark были удалены когда время вышло,
; они почему-то могут остаться висеть на экране, несмотря на 0x03E525,
; например когда шрушер только начинает мясо как раз перед истечением времени
C - - - - - 0x03E50D 0F:E4FD: A9 AE     LDA #$AE
C - - - - - 0x03E50F 0F:E4FF: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x03E512 0F:E502: B0 E2     BCS bra_E4E6
C - - - - - 0x03E514 0F:E504: BD 90 05  LDA ram_plr_hp_lo,X ; 0590 0591 
C - - - - - 0x03E517 0F:E507: F0 07     BEQ bra_E510
C - - - - - 0x03E519 0F:E509: BD 45 06  LDA ram_plr_damage,X ; 0645 0646 
C - - - - - 0x03E51C 0F:E50C: D0 D8     BNE bra_E4E6
bra_E510:
C - - - - - 0x03E520 0F:E510: CA        DEX
C - - - - - 0x03E521 0F:E511: 10 EA     BPL bra_E4FD_loop
C - - - - - 0x03E523 0F:E513: A2 01     LDX #$01
bra_E515_loop:
C - - - - - 0x03E525 0F:E515: 20 20 DE  JSR sub_DE20_удалить_объекты_перса
C - - - - - 0x03E528 0F:E518: CA        DEX
C - - - - - 0x03E529 0F:E519: 10 FA     BPL bra_E515_loop
C - - - - - 0x03E52B 0F:E51B: A9 0B     LDA #con_0095_время_вышло
C - - - - - 0x03E52D 0F:E51D: 85 95     STA ram_0095_стадия_игры
C - - - - - 0x03E52F 0F:E51F: 85 98     STA ram_0098_flag
C - - - - - 0x03E531 0F:E521: 60        RTS
bra_E522_перейти_в_режим_vs_player:
loc_E522_перейти_в_режим_vs_player:
- - - - - - 0x03E532 0F:E522: A9 29     LDA #con_075C_29
- - - - - - 0x03E534 0F:E524: 20 8B F6  JSR sub_F68B_выключить_звуки_и_записать_новый
- - - - - - 0x03E537 0F:E527: A9 13     LDA #con_0095_переход_из_vs_cpu_в_vs_player_1
- - - - - - 0x03E539 0F:E529: 85 95     STA ram_0095_стадия_игры
- - - - - - 0x03E53B 0F:E52B: 4C 2E E1  JMP loc_E12E_подготовить_затемнение_из_цветного_в_черный



ofs_001_E52E_08_подготовка_к_подсчету_очков_после_боя:
                                       ;LDA #con_0095_подсчет_очков
C - - J - - 0x03E53E 0F:E52E: E6 95     INC ram_0095_стадия_игры    ; 08 -> 09
C - - - - - 0x03E540 0F:E530: A9 00     LDA #$00
C - - - - - 0x03E542 0F:E532: 8D 07 04  STA ram_obj_anim_id + $07
C - - - - - 0x03E545 0F:E535: 8D 24 06  STA ram_0624_plr
C - - - - - 0x03E548 0F:E538: 85 AA     STA ram_таймер_задержки_фпс
C - - - - - 0x03E54A 0F:E53A: A9 40     LDA #$40
C - - - - - 0x03E54C 0F:E53C: 8D B0 04  STA ram_04B0_задержка_подсчета_очков
C - - - - - 0x03E54F 0F:E53F: 85 98     STA ram_0098_flag
sub_E541:
C - - - - - 0x03E551 0F:E541: 20 51 F7  JSR sub_F751
C - - - - - 0x03E554 0F:E544: AD 71 06  LDA ram_0671
C - - - - - 0x03E557 0F:E547: F0 08     BEQ bra_E551
C - - - - - 0x03E559 0F:E549: C9 02     CMP #$02
C - - - - - 0x03E55B 0F:E54B: B0 D4     BCS bra_E55C_RTS
C - - - - - 0x03E55D 0F:E54D: C6 89     DEC ram_0089
C - - - - - 0x03E55F 0F:E54F: C6 89     DEC ram_0089
bra_E551:
C - - - - - 0x03E561 0F:E551: E6 89     INC ram_0089
C - - - - - 0x03E563 0F:E553: 10 CC     BPL bra_E55C_RTS
C - - - - - 0x03E565 0F:E555: A9 00     LDA #$00
C - - - - - 0x03E567 0F:E557: 85 89     STA ram_0089
C - - - - - 0x03E569 0F:E559: 4E B0 04  LSR ram_04B0_задержка_подсчета_очков
bra_E55C_RTS:
C - - - - - 0x03E56C 0F:E55C: 60        RTS



ofs_001_E55D_09_подсчет_очков_после_боя:
C - - J - - 0x03E56D 0F:E55D: AD B0 04  LDA ram_04B0_задержка_подсчета_очков
C - - - - - 0x03E570 0F:E560: F0 09     BEQ bra_E56B
C - - - - - 0x03E572 0F:E562: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x03E574 0F:E564: 4A        LSR
C - - - - - 0x03E575 0F:E565: 90 03     BCC bra_E56A_RTS
C - - - - - 0x03E577 0F:E567: CE B0 04  DEC ram_04B0_задержка_подсчета_очков
bra_E56A_RTS:
C - - - - - 0x03E57A 0F:E56A: 60        RTS
bra_E56B:
C - - - - - 0x03E57B 0F:E56B: A6 2C     LDX ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E57D 0F:E56D: E0 03     CPX #$03
C - - - - - 0x03E57F 0F:E56F: B0 08     BCS bra_E579
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
C - - - - - 0x03E581 0F:E571: 20 A6 F7  JSR sub_F7A6_подсчитать_время_и_здоровье_после_боя
C - - - - - 0x03E584 0F:E574: AD 24 06  LDA ram_0624_plr
C - - - - - 0x03E587 0F:E577: D0 F1     BNE bra_E56A_RTS
bra_E579:
; con_gm_story
; con_gm_vs_player
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E589 0F:E579: 20 2E E1  JSR sub_E12E_подготовить_затемнение_из_цветного_в_черный
C - - - - - 0x03E58C 0F:E57C: EE 40 06  INC ram_номер_раунда_боя
C - - - - - 0x03E58F 0F:E57F: AD 49 06  LDA ram_plr_колво_побед_в_раундах
C - - - - - 0x03E592 0F:E582: 0D 4A 06  ORA ram_plr_колво_побед_в_раундах + $01
C - - - - - 0x03E595 0F:E585: C9 02     CMP #$02
C - - - - - 0x03E597 0F:E587: B0 49     BCS bra_E5D2
C - - - - - 0x03E599 0F:E589: A6 2C     LDX ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E59B 0F:E58B: E0 03     CPX #$03
C - - - - - 0x03E59D 0F:E58D: D0 07     BNE bra_E596
; con_gm_vs_team
C - - - - - 0x03E59F 0F:E58F: AD 2C 01  LDA ram_option_team_keeps
C - - - - - 0x03E5A2 0F:E592: C9 04     CMP #$04
C - - - - - 0x03E5A4 0F:E594: B0 3C     BCS bra_E5D2
bra_E596:
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E5A6 0F:E596: E0 03     CPX #$03
C - - - - - 0x03E5A8 0F:E598: B0 2A     BCS bra_E5C4
C - - - - - 0x03E5AA 0F:E59A: AD 40 06  LDA ram_номер_раунда_боя
C - - - - - 0x03E5AD 0F:E59D: C9 03     CMP #$03
C - - - - - 0x03E5AF 0F:E59F: 90 23     BCC bra_E5C4
C - - - - - 0x03E5B1 0F:E5A1: D0 08     BNE bra_E5AB
C - - - - - 0x03E5B3 0F:E5A3: AD 49 06  LDA ram_plr_колво_побед_в_раундах
C - - - - - 0x03E5B6 0F:E5A6: 0D 4A 06  ORA ram_plr_колво_побед_в_раундах + $01
C - - - - - 0x03E5B9 0F:E5A9: D0 19     BNE bra_E5C4
bra_E5AB:
C - - - - - 0x03E5BB 0F:E5AB: A0 00     LDY #$00
C - - - - - 0x03E5BD 0F:E5AD: AD 49 06  LDA ram_plr_колво_побед_в_раундах
C - - - - - 0x03E5C0 0F:E5B0: CD 4A 06  CMP ram_plr_колво_побед_в_раундах + $01
C - - - - - 0x03E5C3 0F:E5B3: F0 05     BEQ bra_E5BA
- - - - - - 0x03E5C5 0F:E5B5: B0 29     BCS bra_E5E0
- - - - - - 0x03E5C7 0F:E5B7: C8        INY ; 01
- - - - - - 0x03E5C8 0F:E5B8: 90 26     BCC bra_E5E0    ; jmp
bra_E5BA:
C - - - - - 0x03E5CA 0F:E5BA: A9 80     LDA #$80
C - - - - - 0x03E5CC 0F:E5BC: A4 2C     LDY ram_game_mode
; con_gm_vs_player
C - - - - - 0x03E5CE 0F:E5BE: 88        DEY
C - - - - - 0x03E5CF 0F:E5BF: F0 4D     BEQ bra_E60E    ; if con_gm_vs_player
- - - - - - 0x03E5D1 0F:E5C1: 4C 7D E6  JMP loc_E67D
bra_E5C4:
sub_E5C4:
C - - - - - 0x03E5D4 0F:E5C4: A9 05     LDA #con_0095_подготовка_арены
C - - - - - 0x03E5D6 0F:E5C6: 85 95     STA ram_0095_стадия_игры
C - - - - - 0x03E5D8 0F:E5C8: A2 06     LDX #$06
C - - - - - 0x03E5DA 0F:E5CA: 20 D3 DA  JSR sub_DAD3_удалить_объект
C - - - - - 0x03E5DD 0F:E5CD: A2 07     LDX #$07
C - - - - - 0x03E5DF 0F:E5CF: 4C D3 DA  JMP loc_DAD3_удалить_объект
bra_E5D2:
                                       ;LDA #con_0095_бой_окончен
C - - - - - 0x03E5E2 0F:E5D2: E6 95     INC ram_0095_стадия_игры    ; 09 -> 0A
C - - - - - 0x03E5E4 0F:E5D4: 60        RTS



ofs_001_E5D5_0A_подготовка_экрана_с_поражением_после_боя:
C - - J - - 0x03E5E5 0F:E5D5: A0 00     LDY #$00
C - - - - - 0x03E5E7 0F:E5D7: AD 49 06  LDA ram_plr_колво_побед_в_раундах
C - - - - - 0x03E5EA 0F:E5DA: CD 4A 06  CMP ram_plr_колво_побед_в_раундах + $01
C - - - - - 0x03E5ED 0F:E5DD: B0 01     BCS bra_E5E0
C - - - - - 0x03E5EF 0F:E5DF: C8        INY ; 01
bra_E5E0:
C - - - - - 0x03E5F0 0F:E5E0: 84 08     STY ram_0008
C - - - - - 0x03E5F2 0F:E5E2: A6 2C     LDX ram_game_mode
; con_gm_story
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E5F4 0F:E5E4: F0 06     BEQ bra_E5EC_story
C - - - - - 0x03E5F6 0F:E5E6: E0 03     CPX #$03
C - - - - - 0x03E5F8 0F:E5E8: 90 22     BCC bra_E60C
C - - - - - 0x03E5FA 0F:E5EA: B0 2E     BCS bra_E61A    ; jmp
bra_E5EC_story:
; if con_gm_story
C - - - - - 0x03E5FC 0F:E5EC: A5 08     LDA ram_0008
C - - - - - 0x03E5FE 0F:E5EE: D0 0C     BNE bra_E5FC
C - - - - - 0x03E600 0F:E5F0: E6 9E     INC ram_номер_боя_story
C - - - - - 0x03E602 0F:E5F2: A5 9E     LDA ram_номер_боя_story
C - - - - - 0x03E604 0F:E5F4: C9 04     CMP #con_fighter_casey
C - - - - - 0x03E606 0F:E5F6: D0 07     BNE bra_E5FF
C D 3 - - - 0x03E608 0F:E5F8: A9 17     LDA #con_0095_bonus_game_отрисовка_1
C - - - - - 0x03E60A 0F:E5FA: D0 0D     BNE bra_E609    ; jmp
bra_E5FC:
C - - - - - 0x03E60C 0F:E5FC: 4C 7D E6  JMP loc_E67D
bra_E5FF:
C - - - - - 0x03E60F 0F:E5FF: A5 9E     LDA ram_номер_боя_story
C - - - - - 0x03E611 0F:E601: C9 07     CMP #$07
C - - - - - 0x03E613 0F:E603: 90 67     BCC bra_E66C
C - - - - - 0x03E615 0F:E605: C6 9E     DEC ram_номер_боя_story
C - - - - - 0x03E617 0F:E607: A9 15     LDA #con_0095_победа_в_story
bra_E609:
C - - - - - 0x03E619 0F:E609: 85 95     STA ram_0095_стадия_игры
C - - - - - 0x03E61B 0F:E60B: 60        RTS
bra_E60C:
; if con_gm_vs_cpu
loc_0x03E61C:
C - - - - - 0x03E61C 0F:E60C: A5 08     LDA ram_0008
bra_E60E:
C - - - - - 0x03E61E 0F:E60E: 20 B8 F8  STA ram_кто_выиграл_бой
                                        BMI bra_E611_ничья
                                        JSR sub_F600_swap_prg_16_no_return
                                        JSR sub_0x02EFA0
bra_E611_ничья:
C - - - - - 0x03E621 0F:E611: A9 11     LDA #con_0095_старт_rematch_end
C - - - - - 0x03E623 0F:E613: 85 95     STA ram_0095_стадия_игры
C - - - - - 0x03E625 0F:E615: A9 00     LDA #$00
C - - - - - 0x03E627 0F:E617: 85 96     STA ram_0096
C - - - - - 0x03E629 0F:E619: 60        RTS
bra_E61A:
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03E62A 0F:E61A: 4C 3B F1  JSR sub_F600_swap_prg_16_no_return
                                        JMP loc_0x02FC90



loc_0x03E62D:
C D 3 - - - 0x03E62D 0F:E61D: A5 08     LDA ram_0008
C - - - - - 0x03E62F 0F:E61F: 9D 6E 06  STA ram_066E,X ; 066E 066F 0670 
C - - - - - 0x03E632 0F:E622: 8A        TXA
C - - - - - 0x03E633 0F:E623: 0A        ASL
C - - - - - 0x03E634 0F:E624: 0A        ASL
C - - - - - 0x03E635 0F:E625: AA        TAX
C - - - - - 0x03E636 0F:E626: 0A        ASL
C - - - - - 0x03E637 0F:E627: 85 00     STA ram_0000
C - - - - - 0x03E639 0F:E629: A5 08     LDA ram_0008
C - - - - - 0x03E63B 0F:E62B: 0A        ASL
C - - - - - 0x03E63C 0F:E62C: 0A        ASL
C - - - - - 0x03E63D 0F:E62D: 65 00     ADC ram_0000
C - - - - - 0x03E63F 0F:E62F: A8        TAY
C - - - - - 0x03E640 0F:E630: A9 03     LDA #$03
C - - - - - 0x03E642 0F:E632: 85 02     STA ram_0002
bra_E634_loop:
C - - - - - 0x03E644 0F:E634: B9 30 01  LDA ram_tournament_name,Y ; 0130 0131 0132 0133 0134 0135 0136 0137 0138 0139 013A 013B 013C 013D 013E 013F 0140 0141 0142 0143 0144 0145 0146 0147 
C - - - - - 0x03E647 0F:E637: 9D 40 01  STA ram_tournament_name + $10,X ; 0140 0141 0142 0143 0144 0145 0146 0147 0148 0149 014A 014B 
C - - - - - 0x03E64A 0F:E63A: C8        INY
C - - - - - 0x03E64B 0F:E63B: E8        INX
C - - - - - 0x03E64C 0F:E63C: C6 02     DEC ram_0002
C - - - - - 0x03E64E 0F:E63E: 10 F4     BPL bra_E634_loop
C - - - - - 0x03E650 0F:E640: AD 54 01  LDA ram_0154
C - - - - - 0x03E653 0F:E643: 0A        ASL
C - - - - - 0x03E654 0F:E644: 65 08     ADC ram_0008
C - - - - - 0x03E656 0F:E646: A8        TAY
C - - - - - 0x03E657 0F:E647: AE 54 01  LDX ram_0154
C - - - - - 0x03E65A 0F:E64A: B9 4C 01  LDA ram_tournament_fighter,Y ; 014C 014D 014E 014F 0150 0151 
C - - - - - 0x03E65D 0F:E64D: 9D 50 01  STA ram_номер_боя_vs_team_и_переключатель,X ; 0150 0151 0152 
C - - - - - 0x03E660 0F:E650: B9 55 01  LDA ram_tournament_индекс_игрока,Y ; 0155 0156 0157 0158 0159 015A 
C - - - - - 0x03E663 0F:E653: 9D 59 01  STA ram_tournament_индекс_игрока + $04,X ; 0159 015A 015B 
C - - - - - 0x03E666 0F:E656: B9 05 01  LDA ram_0105,Y ; 0105 0106 0107 0108 0109 010A 
C - - - - - 0x03E669 0F:E659: 9D 09 01  STA ram_0109,X ; 0109 010A 010B 
C - - - - - 0x03E66C 0F:E65C: B9 93 E9  LDA tbl_E993,Y
C - - - - - 0x03E66F 0F:E65F: 0D 5D 01  ORA ram_tournament_биты_сетки
C - - - - - 0x03E672 0F:E662: 8D 5D 01  STA ram_tournament_биты_сетки
C - - - - - 0x03E675 0F:E665: EE 54 01  INC ram_0154
C - - - - - 0x03E678 0F:E668: E0 02     CPX #$02
C - - - - - 0x03E67A 0F:E66A: B0 05     BCS bra_E671
bra_E66C:
loc_0x03E67C:
C D 3 - - - 0x03E67C 0F:E66C: A9 01     LDA #con_0095_очистка_2
C - - - - - 0x03E67E 0F:E66E: 85 95     STA ram_0095_стадия_игры
C - - - - - 0x03E680 0F:E670: 60        RTS
bra_E671:
C - - - - - 0x03E681 0F:E671: 0A        ASL
C - - - - - 0x03E682 0F:E672: 65 08     ADC ram_0008
C - - - - - 0x03E684 0F:E674: 0A        ASL
C - - - - - 0x03E685 0F:E675: 0A        ASL
C - - - - - 0x03E686 0F:E676: 8D 3F 06  STA ram_кто_выиграл_бой
C - - - - - 0x03E689 0F:E679: A9 0F     LDA #con_0095_tournament_окончен
C - - - - - 0x03E68B 0F:E67B: D0 0F     STA ram_0095_стадия_игры
                                        RTS



loc_E67D:
C D 3 - - - 0x03E68D 0F:E67D: A5 2C     LDA ram_game_mode
; con_gm_story
C - - - - - 0x03E68F 0F:E67F: D0 09     BNE bra_E68A
; if con_gm_story
C - - - - - 0x03E691 0F:E681: A5 9E     LDA ram_номер_боя_story
C - - - - - 0x03E693 0F:E683: C9 06     CMP #$06
C - - - - - 0x03E695 0F:E685: 90 03     BCC bra_E68A
- - - - - - 0x03E697 0F:E687: A9 1F     LDA #con_0095_старт_победной_речи_шреда_в_story
- - - - - - 0x03E699 0F:E689: 2C        .byte $2C   ; BIT
bra_E68A:
sub_E68A:
loc_0x03E69A:
C D 3 - - - 0x03E69A 0F:E68A: A9 0D     LDA #con_0095_старт_gameover_continue
C - - - - - 0x03E69C 0F:E68C: 85 95     STA ram_0095_стадия_игры
bra_E68E_RTS:
C - - - - - 0x03E69E 0F:E68E: 60        RTS



ofs_001_E68F_0B_время_боя_закончилось:
; возможная ничья
C - - J - - 0x03E69F 0F:E68F: A9 00     LDA #$00
C - - - - - 0x03E6A1 0F:E691: 8D 07 04  STA ram_obj_anim_id + $07
C - - - - - 0x03E6A4 0F:E694: 8D 10 06  STA ram_plr_флаг_индекса_атаки
C - - - - - 0x03E6A7 0F:E697: 8D 11 06  STA ram_plr_флаг_индекса_атаки + $01
C - - - - - 0x03E6AA 0F:E69A: A2 01     LDX #$01
C - - - - - 0x03E6AC 0F:E69C: 20 67 D0  JSR sub_D067_очистить_spd_X_и_spd_Z
C - - - - - 0x03E6AF 0F:E69F: CA        DEX ; 00
C - - - - - 0x03E6B0 0F:E6A0: 20 67 D0  JSR sub_D067_очистить_spd_X_и_spd_Z
C - - - - - 0x03E6B3 0F:E6A3: 8D 3C 06  STA ram_063C
C - - - - - 0x03E6B6 0F:E6A6: 8D 3D 06  STA ram_063D
C - - - - - 0x03E6B9 0F:E6A9: A9 17     LDA #con_sfx_закусь_рафа    ; звук DRAW
C - - - - - 0x03E6BB 0F:E6AB: 20 8B F6  JSR sub_F68B_выключить_звуки_и_записать_новый
; перемещено из банка 1C
C D 1 - - - 0x03A777 0E:A767: A2 01     LDX #$01
C - - - - - 0x03A779 0E:A769: AD 0D 01  LDA ram_plr_hp_hi
C - - - - - 0x03A77C 0E:A76C: 0D 0E 01  ORA ram_plr_hp_hi + $01
C - - - - - 0x03A77F 0E:A76F: F0 09     BEQ bra_A77A
C - - - - - 0x03A781 0E:A771: AD 0D 01  LDA ram_plr_hp_hi
C - - - - - 0x03A784 0E:A774: CD 0E 01  CMP ram_plr_hp_hi + $01
C - - - - - 0x03A787 0E:A777: 4C 80 A7  JMP loc_A780
bra_A77A:
C - - - - - 0x03A78A 0E:A77A: AD 90 05  LDA ram_plr_hp_lo
C - - - - - 0x03A78D 0E:A77D: CD 91 05  CMP ram_plr_hp_lo + $01
loc_A780:
C - - - - - 0x03E6C6 0F:E6B6: D0 07     BNE bra_E6BF
C - - - - - 0x03E6C8 0F:E6B8: A0 03     LDY #$03
C - - - - - 0x03E6CA 0F:E6BA: 8C 71 06  STY ram_0671
C - - - - - 0x03E6CD 0F:E6BD: D0 25     BNE bra_E6E4    ; jmp
bra_E6BF:
C - - - - - 0x03E6CF 0F:E6BF: 90 06     BCC bra_E6C7
C - - - - - 0x03E6D1 0F:E6C1: CA        DEX ; 00
C - - - - - 0x03E6D2 0F:E6C2: EE 49 06  INC ram_plr_колво_побед_в_раундах
C - - - - - 0x03E6D5 0F:E6C5: D0 03     BNE bra_E6CA    ; jmp
bra_E6C7:
C - - - - - 0x03E6D7 0F:E6C7: EE 4A 06  INC ram_plr_колво_побед_в_раундах + $01
bra_E6CA:
C - - - - - 0x03E6DA 0F:E6CA: 8E 71 06  STX ram_0671
C - - - - - 0x03E6DF 0F:E6CF: 20 A3 DF  JSR sub_DFA3
C - - - - - 0x03E6E2 0F:E6D2: 8A        TXA
C - - - - - 0x03E6E3 0F:E6D3: 49 01     EOR #$01
C - - - - - 0x03E6E5 0F:E6D5: AA        TAX
C - - - - - 0x03E6E6 0F:E6D6: 20 DD DF  JSR sub_DFDD
C - - - - - 0x03E6E9 0F:E6D9: 20 3F EB  JSR sub_EB3F
C - - - - - 0x03E6EC 0F:E6DC: 20 14 F7  JSR sub_F714_смена_тайловых_наборов_для_анимаций
C - - - - - 0x03E6EF 0F:E6DF: A9 28     LDA #con_075C_28
C - - - - - 0x03E6F1 0F:E6E1: 20 90 F6  JSR sub_F690_записать_звук_сохранив_X_Y
bra_E6E4:
C - - - - - 0x03E6F4 0F:E6E4: A9 00     LDA #$00
C - - - - - 0x03E6F6 0F:E6E6: 8D 0C 04  STA ram_obj_anim_id + $0C
                                       ;LDA #con_0095_раунд_окончен_по_времени
C - - - - - 0x03E6F9 0F:E6E9: E6 95     INC ram_0095_стадия_игры    ; 0B -> 0C
C - - - - - 0x03E6FB 0F:E6EB: A9 30     LDA #$30
C - - - - - 0x03E6FD 0F:E6ED: 8D 60 05  STA ram_obj_timer
C - - - - - 0x03E700 0F:E6F0: AD 71 06  LDA ram_0671
C - - - - - 0x03E703 0F:E6F3: C9 02     CMP #$02
C - - - - - 0x03E705 0F:E6F5: B0 97     BCS bra_E68E_RTS
C - - - - - 0x03E707 0F:E6F7: 20 41 E5  JSR sub_E541
C - - - - - 0x03E70A 0F:E6FA: A9 2B     LDA #con_sfx_шум_зрителей
C - - - - - 0x03E70C 0F:E6FC: 4C 90 F6  JMP loc_F690_записать_звук_сохранив_X_Y



ofs_001_E6FF_0C:
C - - J - - 0x03E70F 0F:E6FF: AD 71 06  LDA ram_0671
C - - - - - 0x03E712 0F:E702: C9 02     CMP #$02
C - - - - - 0x03E714 0F:E704: B0 31     BCS bra_E737
C - - - - - 0x03E716 0F:E706: AD 60 05  LDA ram_obj_timer
C - - - - - 0x03E719 0F:E709: F0 05     BEQ bra_E710
C - - - - - 0x03E71B 0F:E70B: CE 60 05  DEC ram_obj_timer
C - - - - - 0x03E71E 0F:E70E: D0 12     BNE bra_E722
bra_E710:
C - - - - - 0x03E720 0F:E710: AE 71 06  LDX ram_0671
C - - - - - 0x03E724 0F:E714: BD 50 05  LDA ram_obj_id,X ; 0550 0551 
C - - - - - 0x03E729 0F:E719: A8        TAY
                                        LDA tbl_E740,Y
                                        TAY
C - - - - - 0x03E72A 0F:E71A: 20 4F DF  JSR sub_DF4F
C - - - - - 0x03E72D 0F:E71D: BD C0 05  LDA ram_obj_anim_timer,X ; 05C0 05C1 
C - - - - - 0x03E730 0F:E720: 30 15     BMI bra_E737
bra_E722:
C - - - - - 0x03E732 0F:E722: AD 71 06  LDA ram_0671
C - - - - - 0x03E735 0F:E725: 49 01     EOR #$01
C - - - - - 0x03E737 0F:E727: 29 01     AND #$01
C - - - - - 0x03E739 0F:E729: AA        TAX
sub_E72A:
C - - - - - 0x03E73B 0F:E72B: 20 EE FE  LDA ram_obj_id,X ; 0550 0551
C - - - - - 0x03E740 0F:E730: A8        TAY
                                        LDA tbl_E741,Y
                                        TAY
C - - - - - 0x03E741 0F:E731: 20 4F DF  JSR sub_DF4F
C - - - - - 0x03E744 0F:E734: 4C 14 F7  JMP loc_F714_смена_тайловых_наборов_для_анимаций
bra_E737:
C - - - - - 0x03E747 0F:E737: A9 08     LDA #con_0095__раунд_окончен
C - - - - - 0x03E749 0F:E739: 85 95     STA ram_0095_стадия_игры
C - - - - - 0x03E74B 0F:E73B: A9 00     LDA #$00
C - - - - - 0x03E74D 0F:E73D: A0 01     LDY #$01
C - - - - - 0x03E74F 0F:E73F: 4C CC F5  RTS



tbl_E740:
tbl_0x03E750:
                                        .byte con_DFE6_04   ; 00 con_fighter_leo
                                        .byte con_DFE6_05   ; 01 con_fighter_raph
                                        .byte con_DFE6_06   ; 02 con_fighter_mike
                                        .byte con_DFE6_07   ; 03 con_fighter_don
                                        .byte con_DFE6_08   ; 04 con_fighter_casey
                                        .byte con_DFE6_09   ; 05 con_fighter_hot
                                        .byte con_DFE6_0A   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_DFE6_04   ; 07 con_fighter___leo
                                        .byte con_DFE6_05   ; 08 con_fighter___raph
                                        .byte con_DFE6_06   ; 09 con_fighter___mike
                                        .byte con_DFE6_07   ; 0A con_fighter___don
                                        .byte con_DFE6_08   ; 0B con_fighter___casey
                                        .byte con_DFE6_09   ; 0C con_fighter___hot
                                        .byte con_DFE6_0A   ; 0D con_fighter___shred
                                    .endif



tbl_E741:
                                        .byte con_DFE6_13   ; 00 con_fighter_leo
                                        .byte con_DFE6_14   ; 01 con_fighter_raph
                                        .byte con_DFE6_15   ; 02 con_fighter_mike
                                        .byte con_DFE6_16   ; 03 con_fighter_don
                                        .byte con_DFE6_17   ; 04 con_fighter_casey
                                        .byte con_DFE6_18   ; 05 con_fighter_hot
                                        .byte con_DFE6_19   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_DFE6_13   ; 07 con_fighter___leo
                                        .byte con_DFE6_14   ; 08 con_fighter___raph
                                        .byte con_DFE6_15   ; 09 con_fighter___mike
                                        .byte con_DFE6_16   ; 0A con_fighter___don
                                        .byte con_DFE6_17   ; 0B con_fighter___casey
                                        .byte con_DFE6_18   ; 0C con_fighter___hot
                                        .byte con_DFE6_19   ; 0D con_fighter___shred
                                    .endif



ofs_001_E742_0D:
C - - J - - 0x03E752 0F:E742: 20 3C F0  JSR sub_F03C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран
                                       ;LDA #con_0095_экран_gameover_continue
C - - - - - 0x03E755 0F:E745: E6 95     INC ram_0095_стадия_игры    ; 0D -> 0E
sub_0x03DD7E_очистить_скролл:
C D 2 - - - 0x03DD7E 0F:DD6E: A5 FF     LDA ram_for_2000
C - - - - - 0x03DD80 0F:DD70: 29 FC     AND #$FC
C - - - - - 0x03DD82 0F:DD72: 85 FF     STA ram_for_2000
C - - - - - 0x03DD84 0F:DD74: A9 00     LDA #$00
C - - - - - 0x03DD86 0F:DD76: 85 FC     STA ram_scroll_Y
C - - - - - 0x03DD88 0F:DD78: 85 FD     STA ram_scroll_X
C - - - - - 0x03DD8A 0F:DD7A: 85 A6     STA ram_screen_pos_X
C - - - - - 0x03DD8C 0F:DD7C: 85 A7     STA ram_00A7
C - - - - - 0x03DD8E 0F:DD7E: 60        RTS



ofs_001_E753_0F:
                                       ;LDA #con_0095_tournament_финальный_экран
C - - J - - 0x03E763 0F:E753: E6 95     INC ram_0095_стадия_игры    ; 0F -> 10
C - - - - - 0x03E765 0F:E755: 20 26 F7  JSR sub_F726_отрисовать_турнирную_сетку
C - - - - - 0x03E768 0F:E758: A9 FF     LDA #$FF
C - - - - - 0x03E76A 0F:E75A: 8D 60 05  STA ram_obj_timer
ofs_001_E75D_10:
C - - - - - 0x03E76D 0F:E75D: 20 E7 F7  JSR sub_F7E7_обработать_рожи_в_турнирной_сетке
C - - - - - 0x03E770 0F:E760: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03E772 0F:E762: 29 10     AND #con_btn_Start
C - - - - - 0x03E774 0F:E764: F0 09     BEQ bra_E76F_RTS
C - - - - - 0x03E776 0F:E766: 20 C2 F6  JSR sub_F6C2_выключить_музыку_и_звуки
C - - - - - 0x03E779 0F:E769: 20 3C F0  JSR sub_F03C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x03E77C 0F:E76C: 4C 58 FE  JMP loc_FE58_отрисовка_экрана_главное_меню
bra_E76F_RTS:
C - - - - - 0x03E77F 0F:E76F: 60        RTS



ofs_001_E770_13_переход_из_vs_cpu_в_vs_player___подготовка:
- - - - - - 0x03E780 0F:E770: 20 65 E1  JSR sub_E165
- - - - - - 0x03E783 0F:E773: A5 9E     LDA ram_номер_боя_story
- - - - - - 0x03E785 0F:E775: 85 9F     STA ram_copy_номер_боя_story
- - - - - - 0x03E787 0F:E777: A9 60     LDA #$60
- - - - - - 0x03E789 0F:E779: 8D 60 05  STA ram_obj_timer
                                       ;LDA #con_0095_переход_из_vs_cpu_в_vs_player_2
- - - - - - 0x03E78C 0F:E77C: E6 95     INC ram_0095_стадия_игры    ; 13 -> 14
- - - - - - 0x03E78E 0F:E77E: A5 AE     LDA ram_p1_score
- - - - - - 0x03E790 0F:E780: 20 02 D2  JSR sub_D202_ASLx4
- - - - - - 0x03E793 0F:E783: 48        PHA
- - - - - - 0x03E794 0F:E784: 20 E7 F5  JSR sub_F5E7_swap_prg_16
- - - - - - 0x03E797 0F:E787: 68        PLA
- - - - - - 0x03E798 0F:E788: 20 3B A7  JSR sub_0x02E74B
ofs_001_E78B_14_переход_из_vs_cpu_в_vs_player___обработка:
- - - - - - 0x03E79B 0F:E78B: CE 60 05  DEC ram_obj_timer
- - - - - - 0x03E79E 0F:E78E: D0 DF     BNE bra_E76F_RTS
- - - - - - 0x03E7A0 0F:E790: A9 01     LDA #$01    ; con_gm_vs_player
- - - - - - 0x03E7A2 0F:E792: 85 2C     STA ram_game_mode
- - - - - - 0x03E7A4 0F:E794: 85 94     STA ram_0094_скрипт
- - - - - - 0x03E7A6 0F:E796: 4C 16 DE  JMP loc_DE16_очистить_очки_p1



ofs_001_E799_15:
C - - J - - 0x03E7A9 0F:E799: 20 3C F0  JSR sub_F03C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x03E7AC 0F:E79C: A9 0B     LDA #con_script_draw_ending
C - - - - - 0x03E7AE 0F:E79E: 4C AE F5  JMP loc_F5AE_подготовить_новый_скрипт



ofs_001_E7A1_16:
ofs_001_E7A1_17:
                                       ;LDA #con_0095_bonus_game_отрисовка_2
C - - J - - 0x03E7B1 0F:E7A1: E6 95     INC ram_0095_стадия_игры    ; 17 -> 18
C - - - - - 0x03E7B3 0F:E7A3: 20 3C F0  JSR sub_F03C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x03E7B6 0F:E7A6: 20 25 DC  JSR sub_DC25_запись_пары_chr_bg_06
C - - - - - 0x03E7B9 0F:E7A9: A9 08     LDA #con_print_bonus_game
C - - - - - 0x03E7BB 0F:E7AB: 20 E5 F6  JSR sub_F6E5_написать_текст_на_экране
C - - - - - 0x03E7BE 0F:E7AE: A9 20     LDA #$20
C - - - - - 0x03E7C0 0F:E7B0: 8D 60 05  STA ram_obj_timer
C - - - - - 0x03E7C3 0F:E7B3: A9 00     LDA #$00    ; con_D57A_00
C - - - - - 0x03E7C5 0F:E7B5: A8        LDY #con_D57A_00
C - - - - - 0x03E7C6 0F:E7B6: 85 96     STA ram_0096
C - - - - - 0x03E7C8 0F:E7B8: 20 94 D3  JSR sub_D394_записать_палитру_для_фона_и_спрайтов
C - - - - - 0x03E7CB 0F:E7BB: 4C 41 E1  JMP loc_E141_подготовить_осветление_из_черного_в_цветной



ofs_001_E7BE_18_bonus_stage_отрисовка:
C - - J - - 0x03E7CE 0F:E7BE: A5 96     LDA ram_0096
C - - - - - 0x03E7D0 0F:E7C0: D0 0A     BNE bra_E7CC
C - - - - - 0x03E7D2 0F:E7C2: CE 60 05  DEC ram_obj_timer
C - - - - - 0x03E7D5 0F:E7C5: D0 A8     BNE bra_E76F_RTS
C - - - - - 0x03E7D7 0F:E7C7: E6 96     INC ram_0096
C - - - - - 0x03E7D9 0F:E7C9: 4C 2E E1  JMP loc_E12E_подготовить_затемнение_из_цветного_в_черный
bra_E7CC:
                                       ;LDA #con_0095_bonus_game_обработка
C - - - - - 0x03E7DC 0F:E7CC: E6 95     INC ram_0095_стадия_игры    ; 18 -> 19
; bzk optimize, нахрена эта запись, если чуть будет перезаписано?
C - - - - - 0x03E7DE 0F:E7CE: A9 08     LDA #$08
C - - - - - 0x03E7E0 0F:E7D0: 85 A6     STA ram_screen_pos_X
C - - - - - 0x03E7E2 0F:E7D2: A9 03     LDA #$03
C - - - - - 0x03E7E4 0F:E7D4: 8D 72 06  STA ram_время_десятки
C - - - - - 0x03E7E7 0F:E7D7: 8D 30 05  STA ram_0530_obj_state
C - - - - - 0x03E7EA 0F:E7DA: A9 00     LDA #$00
C - - - - - 0x03E7EC 0F:E7DC: 8D 73 06  STA ram_время_единицы
C - - - - - 0x03E7EF 0F:E7DF: 85 AA     STA ram_таймер_задержки_фпс
C - - - - - 0x03E7F1 0F:E7E1: 8D 1A 06  STA ram_plr_anim_timer_стойки
C - - - - - 0x03E7F4 0F:E7E4: 8D 18 06  STA ram_plr_anim_cnt_стойки
C - - - - - 0x03E7F7 0F:E7E7: 8D 10 06  STA ram_plr_флаг_индекса_атаки
C - - - - - 0x03E7FA 0F:E7EA: 8D 11 06  STA ram_plr_флаг_индекса_атаки + $01
C - - - - - 0x03E7FD 0F:E7ED: 85 A6     STA ram_screen_pos_X
C - - - - - 0x03E7FF 0F:E7EF: 85 98     STA ram_0098_flag
C - - - - - 0x03E801 0F:E7F1: A9 18     LDA #$18
C - - - - - 0x03E803 0F:E7F3: 8D 40 04  STA ram_obj_pos_X_lo
C - - - - - 0x03E806 0F:E7F6: A9 B0     LDA #con_координата_пола
C - - - - - 0x03E808 0F:E7F8: 8D 10 04  STA ram_obj_pos_Y_lo
C - - - - - 0x03E80B 0F:E7FB: A9 09     LDA #con_0048_09
C - - - - - 0x03E80D 0F:E7FD: 20 14 F8  JSR sub_F814_подготовить_irq_handler
C - - - - - 0x03E810 0F:E800: 20 BE DA  JSR sub_DABE_удалить_все_объекты
C - - - - - 0x03E813 0F:E803: A2 1C     LDX #con_screen_bonus_stage
C - - - - - 0x03E815 0F:E805: 20 44 F0  JSR sub_F044_отрисовать_экран
C - - - - - 0x03E818 0F:E808: A9 7C     LDA #con_chr_bank_bg + $7C
C - - - - - 0x03E81A 0F:E80A: 85 32     STA ram_chr_bank_bg
C - - - - - 0x03E81C 0F:E80C: A9 20     LDA #con_chr_bank_spr + $20
C - - - - - 0x03E81E 0F:E80E: 85 37     STA ram_chr_bank_spr + $03
C - - - - - 0x03E820 0F:E810: A2 1E     LDX #con_screen_bonus_tmnt
C - - - - - 0x03E822 0F:E812: 20 44 F0  JSR sub_F044_отрисовать_экран
C - - - - - 0x03E825 0F:E815: A9 0D     LDA #con_print_time_bonus_game
C - - - - - 0x03E827 0F:E817: 20 E5 F6  JSR sub_F6E5_написать_текст_на_экране
C - - - - - 0x03E82A 0F:E81A: A9 3D     LDA #con_music_ost_bonus_stage
C - - - - - 0x03E82C 0F:E81C: 20 90 F6  JSR sub_F690_записать_звук_сохранив_X_Y
C - - - - - 0x03E82F 0F:E81F: A9 10     LDA #con_D57A_10
C - - - - - 0x03E831 0F:E821: A0 0A     LDY #con_D57A_0A
C - - - - - 0x03E833 0F:E823: 20 94 D3  JSR sub_D394_записать_палитру_для_фона_и_спрайтов
C - - - - - 0x03E836 0F:E826: A2 04     LDX #$04    ; tip_индекс_буфера_палитры + $04
C - - - - - 0x03E838 0F:E828: B5 9E     LDA ram_plr_id
C - - - - - 0x03E83A 0F:E82A: 20 2A E3  JSR sub_E32A_выбрать_палитру_персу
C - - - - - 0x03E83D 0F:E82D: 4C 41 E1  JMP loc_E141_подготовить_осветление_из_черного_в_цветной



ofs_001_E830_19_bonus_stage_обработка:
C - - J - - 0x03E840 0F:E830: A5 92     LDA ram_btn_hold + $01
C - - - - - 0x03E842 0F:E832: C9 C8     CMP #con_btns_AB + con_btn_Up
C - - - - - 0x03E844 0F:E834: D0 03     BNE bra_E839
- - - - - - 0x03E846 0F:E836: 4C 22 E5  JMP loc_E522_перейти_в_режим_vs_player
bra_E839:
C - - - - - 0x03E849 0F:E839: 20 9D F7  JSR sub_F79D
C - - - - - 0x03E84C 0F:E83C: AD 72 06  LDA ram_время_десятки
C - - - - - 0x03E84F 0F:E83F: 0D 73 06  ORA ram_время_единицы
C - - - - - 0x03E852 0F:E842: D0 3C     BNE bra_E880_RTS
C - - - - - 0x03E854 0F:E844: AD 10 04  LDA ram_obj_pos_Y_lo
C - - - - - 0x03E857 0F:E847: C9 AF     CMP #con_координата_пола - $01
C - - - - - 0x03E859 0F:E849: 90 35     BCC bra_E880_RTS
                                       ;LDA #con_0095_bonus_game_lose
C - - - - - 0x03E85B 0F:E84B: E6 95     INC ram_0095_стадия_игры    ; 19 -> 1A
C - - - - - 0x03E85D 0F:E84D: E6 95     INC ram_0095_стадия_игры    ; 1A -> 1B
C - - - - - 0x03E85F 0F:E84F: A9 00     LDA #$00
C - - - - - 0x03E861 0F:E851: 85 96     STA ram_0096
                                        STA ram_obj_anim_id + $04 ; 0404 
C - - - - - 0x03FF06 0F:FEF6: 9D 0C 04  STA ram_obj_anim_id + $0C ; 040C 
C - - - - - 0x03E863 0F:E853: AA        TAX
C - - - - - 0x03E864 0F:E854: 20 DD DF  JSR sub_DFDD
C - - - - - 0x03E867 0F:E857: A9 40     LDA #con_music_bonus_game_lose
C - - - - - 0x03E869 0F:E859: 4C 8B F6  JMP loc_F68B_выключить_звуки_и_записать_новый



ofs_001_E85C_1A_bonus_stage_win:
C - - J - - 0x03E86C 0F:E85C: A0 00     LDY #$00
C - - - - - 0x03E86E 0F:E85E: 8C 71 06  STY ram_0671
C - - - - - 0x03E871 0F:E861: 88        DEY ; FF
C - - - - - 0x03E872 0F:E862: 84 98     STY ram_0098_flag
C - - - - - 0x03E874 0F:E864: 20 A6 F7  JSR sub_F7A6_подсчитать_время_и_здоровье_после_боя
C - - - - - 0x03E877 0F:E867: AD 24 06  LDA ram_0624_plr
C - - - - - 0x03E87A 0F:E86A: D0 14     BNE bra_E880_RTS
                                       ;LDA #con_0095_bonus_game_lose
C - - - - - 0x03E87C 0F:E86C: E6 95     INC ram_0095_стадия_игры    ; 1A -> 1B
bra_E86E:
                                       ;LDA #con_0095_bonus_game_закончен
C - - - - - 0x03E87E 0F:E86E: E6 95     INC ram_0095_стадия_игры    ; 1B -> 1C
C - - - - - 0x03E880 0F:E870: A2 03     LDX #$03
bra_E872_loop:
C - - - - - 0x03E882 0F:E872: 20 D3 DA  JSR sub_DAD3_удалить_объект
C - - - - - 0x03E885 0F:E875: E8        INX
C - - - - - 0x03E886 0F:E876: E8        INX
C - - - - - 0x03E887 0F:E877: E0 10     CPX #$10
C - - - - - 0x03E889 0F:E879: 90 F7     BCC bra_E872_loop
C - - - - - 0x03E88B 0F:E87B: A9 40     LDA #$40
C - - - - - 0x03E88D 0F:E87D: 8D 60 05  STA ram_obj_timer
bra_E880_RTS:
C - - - - - 0x03E890 0F:E880: 60        RTS



ofs_001_E881_1B_bonus_stage_lose:
C - - J - - 0x03E891 0F:E881: A2 FF     LDX #$FF
C - - - - - 0x03E893 0F:E883: 86 98     STX ram_0098_flag
C - - - - - 0x03E895 0F:E885: E8        INX ; 00
C - - - - - 0x03E896 0F:E886: 20 2A E7  JSR sub_E72A
C - - - - - 0x03E899 0F:E889: BD C0 05  LDA ram_obj_anim_timer,X ; 05C0 
C - - - - - 0x03E89C 0F:E88C: 30 E0     BMI bra_E86E
C - - - - - 0x03E89E 0F:E88E: 4C 02 F8  JMP loc_F802



ofs_001_E892_1C_bonus_stage_закончен:
C - - J - - 0x03E8A2 0F:E892: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x03E8A4 0F:E894: 29 03     AND #$03
C - - - - - 0x03E8A6 0F:E896: D0 E8     BNE bra_E880_RTS
C - - - - - 0x03E8A8 0F:E898: CE 60 05  DEC ram_obj_timer
C - - - - - 0x03E8AB 0F:E89B: D0 E3     BNE bra_E880_RTS
C - - - - - 0x03E8AD 0F:E89D: A9 01     LDA #con_0095_очистка_2
C - - - - - 0x03E8AF 0F:E89F: 85 95     STA ram_0095_стадия_игры
C - - - - - 0x03E8B1 0F:E8A1: 4C 2E E1  JMP loc_E12E_подготовить_затемнение_из_цветного_в_черный



ofs_001_E8A4_1D:
C - - J - - 0x03E8B4 0F:E8A4: A9 44     LDA #con_075C_44
C - - - - - 0x03E8B6 0F:E8A6: 2C        .byte $2C   ; BIT
ofs_001_E8A7_1F:
- - - - - - 0x03E8B7 0F:E8A7: A9 45     LDA #con_075C_45
C - - - - - 0x03E8B9 0F:E8A9: 20 90 F6  JSR sub_F690_записать_звук_сохранив_X_Y
C - - - - - 0x03E8BC 0F:E8AC: 20 3F F0  JSR sub_F03F_удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x03E8BF 0F:E8AF: 20 6D D4  JSR sub_D46D_запись_черной_палитры_в_буфер
C - - - - - 0x03E8C2 0F:E8B2: 20 BF E8  JSR sub_E8BF
                                       ;LDA con_0095_экран_угроз_шреда_в_story
                                       ;LDA con_0095_экран_победной_речи_шреда_в_story
C - - - - - 0x03E8C5 0F:E8B5: E6 95     INC ram_0095_стадия_игры    ; 1D/1F -> 1E/20
C - - - - - 0x03E8C7 0F:E8B7: A9 0B     LDA #con_0048_0B
C - - - - - 0x03E8C9 0F:E8B9: 20 14 F8  JSR sub_F814_подготовить_irq_handler
C - - - - - 0x03E8CC 0F:E8BC: 4C 41 E1  JMP loc_E141_подготовить_осветление_из_черного_в_цветной



sub_E8BF:
C - - - - - 0x03E8CF 0F:E8BF: A5 A2     LDA ram_plr_id
C - - - - - 0x03E8D1 0F:E8C1: 48        PHA
C - - - - - 0x03E8D2 0F:E8C2: A9 05     LDA #$05
C - - - - - 0x03E8D4 0F:E8C4: D0 05     BNE bra_E8CB    ; jmp



loc_0x03E8D6_отрисовать_портрет_шрушера_в_opening:
C D 3 - - - 0x03E8D6 0F:E8C6: A5 A2     LDA ram_plr_id
C - - - - - 0x03E8D8 0F:E8C8: 48        PHA
C - - - - - 0x03E8D9 0F:E8C9: A9 04     LDA #$04
bra_E8CB:
C - - - - - 0x03E8DB 0F:E8CB: 20 D3 F7  JSR sub_F7D3_отрисовать_портреты
C - - - - - 0x03E8DE 0F:E8CE: 68        PLA
C - - - - - 0x03E8DF 0F:E8CF: 85 A2     STA ram_plr_id
C - - - - - 0x03E8E1 0F:E8D1: A9 00     LDA #> $0060
C - - - - - 0x03E8E3 0F:E8D3: 8D 30 04  STA ram_obj_pos_X_hi
C - - - - - 0x03E8E6 0F:E8D6: A9 2F     LDA #$2F
C - - - - - 0x03E8E8 0F:E8D8: 8D 10 04  STA ram_obj_pos_Y_lo
C - - - - - 0x03E8EB 0F:E8DB: A9 60     LDA #< $0060
C - - - - - 0x03E8ED 0F:E8DD: 8D 40 04  STA ram_obj_pos_X_lo
C - - - - - 0x03E8F0 0F:E8E0: A0 16     LDY #con_chr_pair_16
C - - - - - 0x03E8F2 0F:E8E2: 20 1A DC  JSR sub_DC1A_запись_пары_chr_bg
C - - - - - 0x03E8F5 0F:E8E5: A0 18     LDY #con_chr_pair_18
C - - - - - 0x03E8F7 0F:E8E7: 4C 04 DC  JMP loc_DC04_запись_1й_пары_chr_spr



ofs_001_E8EA_1E:
C - - J - - 0x03E8FA 0F:E8EA: 20 33 D3  JSR sub_D333_выбрать_речь_перед_финальным_боем_в_story
C - - - - - 0x03E8FE 0F:E8EE: 20 DE F7  JSR sub_F7DE
C - - - - - 0x03E901 0F:E8F1: AD 31 06  LDA ram_0631_unk
C - - - - - 0x03E904 0F:E8F4: D0 8A     BNE bra_E891_RTS
C - - - - - 0x03E906 0F:E8F6: 20 C4 E5  JSR sub_E5C4
C - - - - - 0x03E909 0F:E8F9: 4C 2E E1  JMP loc_E12E_подготовить_затемнение_из_цветного_в_черный



ofs_001_E8FC_20_expected_tougher:
- - - - - - 0x03E90C 0F:E8FC: A9 06     LDA #con_speech_expected_tougher
- - - - - - 0x03E90E 0F:E8FE: 85 B6     STA ram_speech
- - - - - - 0x03E910 0F:E900: 20 DE F7  JSR sub_F7DE
- - - - - - 0x03E913 0F:E903: AD 31 06  LDA ram_0631_unk
- - - - - - 0x03E916 0F:E906: D0 89     BNE bra_E891_RTS
- - - - - - 0x03E918 0F:E908: 20 8A E6  JSR sub_E68A
- - - - - - 0x03E91B 0F:E90B: 4C 2E E1  JMP loc_E12E_подготовить_затемнение_из_цветного_в_черный
bra_E891_RTS:
- - - - - - 0x03E8A1 0F:E891: 60        RTS



loc_0x03E91E_отрисовать_инфу_в_статусбаре:
C D 3 - - - 0x03E91E 0F:E90E: A9 20     LDA #$20
C - - - - - 0x03E920 0F:E910: 20 6B D2  JSR sub_D26B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x03E923 0F:E913: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
C - - - - - 0x03E925 0F:E915: 4A        LSR
C - - - - - 0x03E926 0F:E916: B0 03     BCS bra_E91B
; con_gm_story
; con_gm_vs_cpu
C - - - - - 0x03E928 0F:E918: 4C 16 B0  JMP loc_0x027026_отрисовать_1p_2p_в_статусбаре_и_очки
bra_E91B:
; con_gm_vs_player
; con_gm_vs_team
C - - - - - 0x03E92B 0F:E91B: 20 E7 F5  JSR sub_F5E7_swap_prg_16
C - - - - - 0x03E92E 0F:E91E: 20 30 BD  JSR sub_0x02FD40_отрисовать_колво_побед_в_матчах
C - - - - - 0x03E931 0F:E921: A4 00     LDY ram_0000
C - - - - - 0x03E933 0F:E923: B9 55 01  LDA ram_tournament_индекс_игрока,Y ; 0155 0156 
C - - - - - 0x03E936 0F:E926: 30 03     BMI bra_E92B    ; if cpu
; if not cpu
C - - - - - 0x03E938 0F:E928: 4C 23 B0  JMP loc_0x027033_отрисовать_очки_в_статусбаре
bra_E92B:
- - - - - - 0x03E93B 0F:E92B: A9 00     LDA #$00
- - - - - - 0x03E93D 0F:E92D: 4C 5E B0  JMP loc_0x02706E_ничего_не_рисовать_в_статусбаре



tbl_E94A:
- D 3 - - - 0x03E95A 0F:E94A: E4 25     .word $25E4 ; 00
- D 3 - - - 0x03E95C 0F:E94C: B7 25     .word $25B7 ; 01



tbl_E94E:
- D 3 - - - 0x03E95E 0F:E94E: C4 25     .word $25C4 ; 00
- D 3 - - - 0x03E960 0F:E950: 97 25     .word $2597 ; 01



tbl_E952_индекс:
- D 3 - - - 0x03E962 0F:E952: 00        .byte off_E957_00 - tbl_E957
- D 3 - - - 0x03E963 0F:E953: 08        .byte off_E95F_01 - tbl_E957
- - - - - - 0x03E964 0F:E954: 10        .byte off_E967_02 - tbl_E957
- - - - - - 0x03E965 0F:E955: 18        .byte off_E96F_03 - tbl_E957
- D 3 - - - 0x03E966 0F:E956: 20        .byte off_E977_04 - tbl_E957



tbl_E957:
off_E957_00:
- D 3 - - - 0x03E967 0F:E957: 1A        .byte $1A, $16, $0B, $23, $0F, $1C, $02   ; 
- D 3 - - - 0x03E96E 0F:E95E: FF        .byte $FF   ; end token

off_E95F_01:
- D 3 - - - 0x03E96F 0F:E95F: 1A        .byte $1A, $16, $0B, $23, $0F, $1C, $03   ; 
- D 3 - - - 0x03E976 0F:E966: FF        .byte $FF   ; end token

off_E967_02:
- - - - - - 0x03E977 0F:E967: 1A        .byte $1A, $16, $0B, $23, $0F, $1C, $04   ; 
- - - - - - 0x03E97E 0F:E96E: FF        .byte $FF   ; end token

off_E96F_03:
- - - - - - 0x03E97F 0F:E96F: 1A        .byte $1A, $16, $0B, $23, $0F, $1C, $05   ; 
- - - - - - 0x03E986 0F:E976: FF        .byte $FF   ; end token

off_E977_04:
- D 3 - - - 0x03E987 0F:E977: 00        .byte $00   ; 
- D 3 - - - 0x03E988 0F:E978: FF        .byte $FF   ; end token



tbl_E979:
- - - - - - 0x03E989 0F:E979: 04        .byte $04, $05   ; 00 45
- D 3 - - - 0x03E98B 0F:E97B: 06        .byte $06, $00   ; 01 60
- - - - - - 0x03E98D 0F:E97D: 09        .byte $09, $09   ; 02 99
- - - - - - 0x03E98F 0F:E97F: 0A        .byte $0A, $0A   ; 03 бесконечное



tbl_0x03E995_индекс_3х_цветов_для_перса:
- D 3 - - - 0x03E995 0F:E985: 2D        .byte con_AF40_pal + $2D   ; 00 con_fighter_leo
- D 3 - - - 0x03E996 0F:E986: 2E        .byte con_AF40_pal + $2E   ; 01 con_fighter_raph
- D 3 - - - 0x03E997 0F:E987: 2F        .byte con_AF40_pal + $2F   ; 02 con_fighter_mike
- D 3 - - - 0x03E998 0F:E988: 30        .byte con_AF40_pal + $30   ; 03 con_fighter_don
- D 3 - - - 0x03E999 0F:E989: 31        .byte con_AF40_pal + $31   ; 04 con_fighter_casey
- D 3 - - - 0x03E99A 0F:E98A: 2D        .byte con_AF40_pal + $2D   ; 05 con_fighter_hot
- D 3 - - - 0x03E99B 0F:E98B: 31        .byte con_AF40_pal + $31   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_AF40_pal + $2D   ; 07 con_fighter___leo
                                        .byte con_AF40_pal + $2E   ; 08 con_fighter___raph
                                        .byte con_AF40_pal + $2F   ; 09 con_fighter___mike
                                        .byte con_AF40_pal + $30   ; 0A con_fighter___don
                                        .byte con_AF40_pal + $31   ; 0B con_fighter___casey
                                        .byte con_AF40_pal + $2D   ; 0C con_fighter___hot
                                        .byte con_AF40_pal + $31   ; 0D con_fighter___shred
                                    .endif



tbl_0x03E99C_индекс_3х_цветов_для_перса:
- D 3 - - - 0x03E99C 0F:E98C: 06        .byte con_AF40_pal + $06   ; 00 con_fighter_leo
- D 3 - - - 0x03E99D 0F:E98D: 06        .byte con_AF40_pal + $06   ; 01 con_fighter_raph
- D 3 - - - 0x03E99E 0F:E98E: 06        .byte con_AF40_pal + $06   ; 02 con_fighter_mike
- D 3 - - - 0x03E99F 0F:E98F: 06        .byte con_AF40_pal + $06   ; 03 con_fighter_don
- D 3 - - - 0x03E9A0 0F:E990: 32        .byte con_AF40_pal + $32   ; 04 con_fighter_casey
- D 3 - - - 0x03E9A1 0F:E991: 14        .byte con_AF40_pal + $14   ; 05 con_fighter_hot
- D 3 - - - 0x03E9A2 0F:E992: 32        .byte con_AF40_pal + $32   ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte con_AF40_pal + $06   ; 07 con_fighter___leo
                                        .byte con_AF40_pal + $06   ; 08 con_fighter___raph
                                        .byte con_AF40_pal + $06   ; 09 con_fighter___mike
                                        .byte con_AF40_pal + $06   ; 0A con_fighter___don
                                        .byte con_AF40_pal + $32   ; 0B con_fighter___casey
                                        .byte con_AF40_pal + $14   ; 0C con_fighter___hot
                                        .byte con_AF40_pal + $32   ; 0D con_fighter___shred
                                    .endif



tbl_E993:
- D 3 - - - 0x03E9A3 0F:E993: 80        .byte $80   ; 00
- D 3 - - - 0x03E9A4 0F:E994: 40        .byte $40   ; 01
- D 3 - - - 0x03E9A5 0F:E995: 20        .byte $20   ; 02
- D 3 - - - 0x03E9A6 0F:E996: 10        .byte $10   ; 03
- D 3 - - - 0x03E9A7 0F:E997: 08        .byte $08   ; 04
- D 3 - - - 0x03E9A8 0F:E998: 04        .byte $04   ; 05



loc_E9A1:
C D 3 - - - 0x03E9B1 0F:E9A1: A0 00     LDY #$00
C - - - - - 0x03E9B3 0F:E9A3: 8C 3C 06  STY ram_063C
C - - - - - 0x03E9B6 0F:E9A6: 8C 3D 06  STY ram_063D
C - - - - - 0x03E9B9 0F:E9A9: A2 01     LDX #$01
C - - - - - 0x03E9BB 0F:E9AB: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x03E9BD 0F:E9AD: C9 01     CMP #con_0095_очистка_2
C - - - - - 0x03E9BF 0F:E9AF: F0 EF     BEQ bra_EA23_RTS
C - - - - - 0x03E9C1 0F:E9B1: C9 1A     CMP #$1A
C - - - - - 0x03E9C3 0F:E9B3: B0 EB     BCS bra_EA23_RTS
C - - - - - 0x03E9C5 0F:E9B5: C9 08     CMP #$08
C - - - - - 0x03E9C7 0F:E9B7: 90 06     BCC bra_E9BF
C - - - - - 0x03E9C9 0F:E9B9: C9 17     CMP #$17
C - - - - - 0x03E9CB 0F:E9BB: 90 E3     BCC bra_EA23_RTS
C - - - - - 0x03E9CD 0F:E9BD: CA        DEX ; 00
C - - - - - 0x03E9CE 0F:E9BE: C8        INY ; 01
bra_E9BF:
bra_E9BF_loop:
C - - - - - 0x03E9CF 0F:E9BF: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x03E9D1 0F:E9C1: C9 17     CMP #$17
C - - - - - 0x03E9D3 0F:E9C3: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x03E9D6 0F:E9C6: 90 05     BCC bra_E9CD
C - - - - - 0x03E9D8 0F:E9C8: C9 8F     CMP #$8F
C - - - - - 0x03E9DA 0F:E9CA: 4C CF E9  JMP loc_E9CF
bra_E9CD:
C - - - - - 0x03E9DD 0F:E9CD: C9 B4     CMP #$B4
loc_E9CF:
C D 3 - - - 0x03E9DF 0F:E9CF: 90 11     BCC bra_E9E2
C - - - - - 0x03E9E1 0F:E9D1: A5 A6     LDA ram_screen_pos_X
C - - - - - 0x03E9E3 0F:E9D3: C9 C0     CMP #$C0
C - - - - - 0x03E9E5 0F:E9D5: B0 29     BCS bra_EA00
C - - - - - 0x03E9E7 0F:E9D7: B9 40 04  LDA ram_obj_pos_X_lo,Y ; 0440 0441 
C - - - - - 0x03E9EA 0F:E9DA: C9 4E     CMP #$4E
C - - - - - 0x03E9EC 0F:E9DC: 90 22     BCC bra_EA00
C - - - - - 0x03E9EE 0F:E9DE: A9 01     LDA #$01
C - - - - - 0x03E9F0 0F:E9E0: D0 17     BNE bra_E9F9    ; jmp
bra_E9E2:
C - - - - - 0x03E9F2 0F:E9E2: 38        SEC
C - - - - - 0x03E9F3 0F:E9E3: A9 4C     LDA #$4C
C - - - - - 0x03E9F5 0F:E9E5: FD 40 04  SBC ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x03E9F8 0F:E9E8: 90 16     BCC bra_EA00
C - - - - - 0x03E9FA 0F:E9EA: A5 A6     LDA ram_screen_pos_X
C - - - - - 0x03E9FC 0F:E9EC: C9 08     CMP #$08
C - - - - - 0x03E9FE 0F:E9EE: 90 10     BCC bra_EA00
C - - - - - 0x03EA00 0F:E9F0: B9 40 04  LDA ram_obj_pos_X_lo,Y ; 0440 0441 
C - - - - - 0x03EA03 0F:E9F3: C9 B3     CMP #$B3
C - - - - - 0x03EA05 0F:E9F5: B0 09     BCS bra_EA00
C - - - - - 0x03EA07 0F:E9F7: A9 FF     LDA #$FF
bra_E9F9:
C - - - - - 0x03EA09 0F:E9F9: 18        CLC
C - - - - - 0x03EA0A 0F:E9FA: 6D 3C 06  ADC ram_063C
C - - - - - 0x03EA0D 0F:E9FD: 8D 3C 06  STA ram_063C
bra_EA00:
C - - - - - 0x03EA10 0F:EA00: C8        INY
C - - - - - 0x03EA11 0F:EA01: CA        DEX
C - - - - - 0x03EA12 0F:EA02: 10 BB     BPL bra_E9BF_loop
C - - - - - 0x03EA14 0F:EA04: 18        CLC
C - - - - - 0x03EA15 0F:EA05: A5 A7     LDA ram_00A7
C - - - - - 0x03EA17 0F:EA07: 6D 3D 06  ADC ram_063D
C - - - - - 0x03EA1A 0F:EA0A: 85 A7     STA ram_00A7
C - - - - - 0x03EA1C 0F:EA0C: A5 A6     LDA ram_screen_pos_X
C - - - - - 0x03EA1E 0F:EA0E: 6D 3C 06  ADC ram_063C
C - - - - - 0x03EA21 0F:EA11: 85 A6     STA ram_screen_pos_X
C - - - - - 0x03EA23 0F:EA13: A5 A5     LDA ram_00A5
C - - - - - 0x03EA25 0F:EA15: 29 01     AND #$01
C - - - - - 0x03EA27 0F:EA17: 85 00     STA ram_0000
C - - - - - 0x03EA29 0F:EA19: A5 FF     LDA ram_for_2000
C - - - - - 0x03EA2B 0F:EA1B: 29 FE     AND #$FE
C - - - - - 0x03EA2D 0F:EA1D: 05 00     ORA ram_0000
C - - - - - 0x03EA2F 0F:EA1F: 85 FF     STA ram_for_2000
bra_EA23_RTS:
C - - - - - 0x03EA33 0F:EA23: 60        RTS



sub_BF03:
C - - - - - 0x027F13 09:BF03: BD 90 05  LDA ram_plr_hp_lo,X ; 0590 0591 
C - - - - - 0x027F16 09:BF06: 20 3B BF  JSR sub_BF3B
C - - - - - 0x027F19 09:BF09: 85 02     STA ram_0002
C - - - - - 0x027F1B 09:BF0B: BD 90 05  LDA ram_plr_hp_lo,X ; 0590 0591 
C - - - - - 0x027F1E 09:BF0E: 20 56 BF  JSR sub_BF56
C - - - - - 0x027F21 09:BF11: 85 05     STA ram_0005
C - - - - - 0x027F23 09:BF13: BC 0D 01  LDY ram_plr_hp_hi,X ; 010D 010E 
C - - - - - 0x027F26 09:BF16: F0 14     BEQ bra_BF2C
C - - - - - 0x027F28 09:BF18: 98        TYA
C - - - - - 0x027F29 09:BF19: 20 3B BF  JSR sub_BF3B
C - - - - - 0x027F2C 09:BF1C: 18        CLC
C - - - - - 0x027F2D 09:BF1D: 65 02     ADC ram_0002
C - - - - - 0x027F2F 09:BF1F: 85 02     STA ram_0002
C - - - - - 0x027F31 09:BF21: BD 0D 01  LDA ram_plr_hp_hi,X ; 010D 010E 
C - - - - - 0x027F34 09:BF24: 20 56 BF  JSR sub_BF56
C - - - - - 0x027F37 09:BF27: 18        CLC
C - - - - - 0x027F38 09:BF28: 65 05     ADC ram_0005
C - - - - - 0x027F3A 09:BF2A: 85 05     STA ram_0005
bra_BF2C:
C - - - - - 0x027F3C 09:BF2C: 29 0F     AND #$0F
C - - - - - 0x027F3E 09:BF2E: 4A        LSR
C - - - - - 0x027F3F 09:BF2F: 85 03     STA ram_0003
C - - - - - 0x027F41 09:BF31: A5 95     ;LDA ram_0095_стадия_игры
C - - - - - 0x027F43 09:BF33: C9 09     ;CMP #con_0095_подсчет_очков
C - - - - - 0x027F45 09:BF35: D0 03     ;BNE bra_BF3A_RTS
C - - - - - 0x027F47 09:BF37: 4C 17 F6  ;JMP loc_0x03F627_restore_prg
bra_BF3A_RTS:
C - - - - - 0x027F4A 09:BF3A: 60        RTS



sub_BF3B:
C - - - - - 0x027F4B 09:BF3B: AC 28 01  LDY ram_option_health
C - - - - - 0x027F4E 09:BF3E: F0 04     BEQ bra_BF44
C - - - - - 0x027F50 09:BF40: 4A        LSR
C - - - - - 0x027F51 09:BF41: 88        DEY
C - - - - - 0x027F52 09:BF42: F0 03     BEQ bra_BF47
bra_BF44:
C - - - - - 0x027F54 09:BF44: 4C 07 D2  JMP loc_D207_LSRx4
bra_BF47:
C - - - - - 0x027F57 09:BF47: 4A        LSR
C - - - - - 0x027F58 09:BF48: 4A        LSR
C - - - - - 0x027F59 09:BF49: 85 03     STA ram_0003
C - - - - - 0x027F5B 09:BF4B: 4A        LSR
C - - - - - 0x027F5C 09:BF4C: 4A        LSR
C - - - - - 0x027F5D 09:BF4D: 65 03     ADC ram_0003
C - - - - - 0x027F5F 09:BF4F: 6A        ROR
C - - - - - 0x027F60 09:BF50: 4A        LSR
C - - - - - 0x027F61 09:BF51: 65 03     ADC ram_0003
C - - - - - 0x027F63 09:BF53: 6A        ROR
C - - - - - 0x027F64 09:BF54: 4A        LSR
C - - - - - 0x027F65 09:BF55: 60        RTS



sub_BF56:
C - - - - - 0x027F66 09:BF56: AC 28 01  LDY ram_option_health
C - - - - - 0x027F69 09:BF59: F0 16     BEQ bra_BF71
C - - - - - 0x027F6B 09:BF5B: 88        DEY
C - - - - - 0x027F6C 09:BF5C: D0 12     BNE bra_BF70
C - - - - - 0x027F6E 09:BF5E: 85 03     STA ram_0003
C - - - - - 0x027F70 09:BF60: 4A        LSR
C - - - - - 0x027F71 09:BF61: 69 21     ADC #$21
C - - - - - 0x027F73 09:BF63: 4A        LSR
C - - - - - 0x027F74 09:BF64: A0 03     LDY #$03
bra_BF66_loop:
C - - - - - 0x027F76 09:BF66: 18        CLC
C - - - - - 0x027F77 09:BF67: 65 03     ADC ram_0003
C - - - - - 0x027F79 09:BF69: 6A        ROR
C - - - - - 0x027F7A 09:BF6A: 4A        LSR
C - - - - - 0x027F7B 09:BF6B: 88        DEY
C - - - - - 0x027F7C 09:BF6C: D0 F8     BNE bra_BF66_loop
C - - - - - 0x027F7E 09:BF6E: 0A        ASL
C - - - - - 0x027F7F 09:BF6F: 60        RTS
bra_BF70:
- - - - - - 0x027F80 09:BF70: 4A        LSR
bra_BF71:
C - - - - - 0x027F81 09:BF71: 4A        LSR
C - - - - - 0x027F82 09:BF72: 0A        ASL
C - - - - - 0x027F83 09:BF73: 60        RTS



sub_0x03EA45:
loc_0x03EA45:
C D 3 - - - 0x03EA45 0F:EA35: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x03EA47 0F:EA37: C9 10     CMP #$10
C - - - - - 0x03EA49 0F:EA39: B0 39     BCS bra_EA74_RTS
sub_0x03EA4B:
; что-то с hp
C - - - - - 0x03EA4B 0F:EA3B: 86 00     STX ram_0000
C - - - - - 0x03EA4D 0F:EA3D: BD 66 EB  LDA tbl_EB66_ppu_lo,X
C - - - - - 0x03EA50 0F:EA40: 85 01     STA ram_0001
C - - - - - 0x03EA52 0F:EA42: 20 03 BF  JSR sub_BF03
C - - - - - 0x03EA55 0F:EA45: 38        SEC
C - - - - - 0x03EA56 0F:EA46: A9 B0     LDA #$B0
C - - - - - 0x03EA58 0F:EA48: E5 05     SBC ram_0005
C - - - - - 0x03EA5A 0F:EA4A: 20 07 D2  JSR sub_D207_LSRx4
C - - - - - 0x03EA5D 0F:EA4D: 85 04     STA ram_0004
C - - - - - 0x03EA5F 0F:EA4F: A9 20     LDA #$20
C - - - - - 0x03EA61 0F:EA51: A4 01     LDY ram_0001
C - - - - - 0x03EA63 0F:EA53: 20 6B D2  JSR sub_D26B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x03EA66 0F:EA56: A5 00     LDA ram_0000
C - - - - - 0x03EA68 0F:EA58: D0 0C     BNE bra_EA66
C - - - - - 0x03EA6A 0F:EA5A: 20 75 EA  JSR sub_EA75
C - - - - - 0x03EA6D 0F:EA5D: 20 82 EA  JSR sub_EA82
C - - - - - 0x03EA70 0F:EA60: 20 8F EA  JSR sub_EA8F
C - - - - - 0x03EA73 0F:EA63: 4C 6F EA  JMP loc_EA6F
bra_EA66:
C - - - - - 0x03EA76 0F:EA66: 20 8F EA  JSR sub_EA8F
C - - - - - 0x03EA79 0F:EA69: 20 82 EA  JSR sub_EA82
C - - - - - 0x03EA7C 0F:EA6C: 20 75 EA  JSR sub_EA75
loc_EA6F:
C D 3 - - - 0x03EA7F 0F:EA6F: 20 59 D2  JSR sub_D259_записать_FF_в_буфер_без_чтения_индекса
C - - - - - 0x03EA82 0F:EA72: A6 00     LDX ram_0000
bra_EA74_RTS:
C - - - - - 0x03EA84 0F:EA74: 60        RTS



sub_EA75:
C - - - - - 0x03EA85 0F:EA75: A9 37     LDA #$37
C - - - - - 0x03EA87 0F:EA77: A4 04     LDY ram_0004
loc_EA79:
bra_EA79_loop:
C D 3 - - - 0x03EA89 0F:EA79: F0 06     BEQ bra_EA81_RTS
C - - - - - 0x03EA8B 0F:EA7B: 20 66 D2  JSR sub_D266_записать_A_в_буфер_без_сохранения_индекса
C - - - - - 0x03EA8E 0F:EA7E: 88        DEY
C - - - - - 0x03EA8F 0F:EA7F: D0 F8     BNE bra_EA79_loop
bra_EA81_RTS:
C - - - - - 0x03EA91 0F:EA81: 60        RTS



sub_EA82:
C - - - - - 0x03EA92 0F:EA82: A5 03     LDA ram_0003
C - - - - - 0x03EA94 0F:EA84: F0 FB     BEQ bra_EA81_RTS
C - - - - - 0x03EA96 0F:EA86: A4 00     LDY ram_0000
C - - - - - 0x03EA98 0F:EA88: 18        CLC
C - - - - - 0x03EA99 0F:EA89: 79 68 EB  ADC tbl_EB68,Y
C - - - - - 0x03EA9C 0F:EA8C: 4C 66 D2  STA ram_ppu_buffer,X
                                        INX
                                        RTS



sub_EA8F:
C - - - - - 0x03EA9F 0F:EA8F: A9 3F     LDA #$3F
C - - - - - 0x03EAA1 0F:EA91: A4 02     LDY ram_0002
C - - - - - 0x03EAA3 0F:EA93: 4C 79 EA  JMP loc_EA79



sub_EA96_обновить_и_отрисовать_время_боя:
sub_0x03EAA6_обновить_и_отрисовать_время_боя:
C - - - - - 0x03EAA6 0F:EA96: AD 30 05  LDA ram_0530_obj_state
C - - - - - 0x03EAA9 0F:EA99: C9 03     CMP #$03
C - - - - - 0x03EAAB 0F:EA9B: 90 6A     BCC bra_EB07
C - - - - - 0x03EAAD 0F:EA9D: A5 2C     LDA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03EAAF 0F:EA9F: F0 07     BEQ bra_EAA8_story    ; if con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
C - - - - - 0x03EAB1 0F:EAA1: AD 27 01  LDA ram_option_timer
C - - - - - 0x03EAB4 0F:EAA4: C9 03     CMP #$03
C - - - - - 0x03EAB6 0F:EAA6: B0 D9     BCS bra_EA81_RTS
bra_EAA8_story:
C - - - - - 0x03EAB8 0F:EAA8: A9 04     LDA #$04
C - - - - - 0x03EABA 0F:EAAA: CD 30 05  CMP ram_0530_obj_state
C - - - - - 0x03EABD 0F:EAAD: F0 C5     BEQ bra_EA81_RTS
C - - - - - 0x03EABF 0F:EAAF: CD 31 05  CMP ram_0530_obj_state + $01
C - - - - - 0x03EAC2 0F:EAB2: F0 7E     BEQ bra_EA81_RTS
C - - - - - 0x03EAC4 0F:EAB4: AD 74 06  LDA ram_время_милисекунды
C - - - - - 0x03EAC7 0F:EAB7: 0D 73 06  ORA ram_время_единицы
C - - - - - 0x03EACA 0F:EABA: 0D 72 06  ORA ram_время_десятки
C - - - - - 0x03EACD 0F:EABD: F0 73     BEQ bra_EB32_RTS    ; if время вышло
C - - - - - 0x03EACF 0F:EABF: CE 74 06  DEC ram_время_милисекунды
C - - - - - 0x03EAD2 0F:EAC2: 10 6E     BPL bra_EB32_RTS
C - - - - - 0x03EAD4 0F:EAC4: A9 4E     LDA #$4E
                                        LDY ram_0095_стадия_игры
                                        CPY #con_0095_bonus_game_обработка
                                        BEQ bra_EAEA
C - - - - - 0x03EAD6 0F:EAC6: 20 0E E1  JSR sub_E10E_корректировка_значения_A_для_turbo
bra_EAEA:
C - - - - - 0x03EAD9 0F:EAC9: 8D 74 06  STA ram_время_милисекунды
C - - - - - 0x03EADC 0F:EACC: CE 73 06  DEC ram_время_единицы
C - - - - - 0x03EADF 0F:EACF: 30 1A     BMI bra_EAEB
C - - - - - 0x03EAE1 0F:EAD1: D0 34     BNE bra_EB07
C - - - - - 0x03EAE3 0F:EAD3: AD 72 06  LDA ram_время_десятки
C - - - - - 0x03EAE6 0F:EAD6: C9 02     CMP #$02
C - - - - - 0x03EAE8 0F:EAD8: D0 2D     BNE bra_EB07
C - - - - - 0x03EAEA 0F:EADA: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x03EAEC 0F:EADC: C9 10     CMP #$10
C - - - - - 0x03EAEE 0F:EADE: B0 27     BCS bra_EB07
C - - - - - 0x03EAF3 0F:EAE3: A9 2C     LDA #con_sfx_осталось_20_сек
C - - - - - 0x03EAF5 0F:EAE5: 20 90 F6  JSR sub_F68B_выключить_звуки_и_записать_новый
C - - - - - 0x03EAF8 0F:EAE8: 4C 07 EB  JMP loc_EB07
bra_EAEB:
C - - - - - 0x03EAFB 0F:EAEB: A9 09     LDA #$09
C - - - - - 0x03EAFD 0F:EAED: 8D 73 06  STA ram_время_единицы
C - - - - - 0x03EB00 0F:EAF0: CE 72 06  DEC ram_время_десятки
C - - - - - 0x03EB03 0F:EAF3: AC 72 06  LDY ram_время_десятки
C - - - - - 0x03EB06 0F:EAF6: 88        DEY
C - - - - - 0x03EB07 0F:EAF7: D0 0E     BNE bra_EB07
C - - - - - 0x03EB09 0F:EAF9: A5 95     LDA ram_0095_стадия_игры
C - - - - - 0x03EB0B 0F:EAFB: C9 10     CMP #$10
C - - - - - 0x03EB0D 0F:EAFD: B0 08     BCS bra_EB07
C - - - - - 0x03EB0F 0F:EAFF: A4 9E     LDY ram_номер_боя_story
C - - - - - 0x03EB11 0F:EB01: B9 BA FC  LDA tbl_FCBA_звук_no_time,Y
C - - - - - 0x03EB14 0F:EB04: 20 90 F6  JSR sub_F690_записать_звук_сохранив_X_Y
bra_EB07:
loc_EB07:
sub_0x03EB17_отрисовать_время_боя:
C D 3 - - - 0x03EB17 0F:EB07: A0 01     LDY #$01
bra_EB09_loop:
C - - - - - 0x03EB19 0F:EB09: A9 02     LDA #$02
C - - - - - 0x03EB1B 0F:EB0B: 20 5D D2  JSR sub_D25D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03EB1E 0F:EB0E: 18        CLC
C - - - - - 0x03EB1F 0F:EB0F: 98        TYA
C - - - - - 0x03EB20 0F:EB10: 69 6F     ADC #$6F
C - - - - - 0x03EB22 0F:EB12: 20 66 D2  JSR sub_D266_записать_A_в_буфер_без_сохранения_индекса
C - - - - - 0x03EB25 0F:EB15: A9 20     LDA #$20
C - - - - - 0x03EB27 0F:EB17: 20 66 D2  JSR sub_D266_записать_A_в_буфер_без_сохранения_индекса
C - - - - - 0x03EB2A 0F:EB1A: B9 72 06  LDA ram_время_десятки,Y ; 0672 0673 
C - - - - - 0x03EB2D 0F:EB1D: C9 0A     CMP #$0A
C - - - - - 0x03EB2F 0F:EB1F: F0 12     BEQ bra_EB33
C - - - - - 0x03EB31 0F:EB21: 09 10     ORA #$10
C - - - - - 0x03EB33 0F:EB23: 20 66 D2  JSR sub_D266_записать_A_в_буфер_без_сохранения_индекса
C - - - - - 0x03EB36 0F:EB26: 18        CLC
C - - - - - 0x03EB37 0F:EB27: 69 10     ADC #$10
bra_EB29:
C - - - - - 0x03EB39 0F:EB29: 20 66 D2  JSR sub_D266_записать_A_в_буфер_без_сохранения_индекса
C - - - - - 0x03EB3C 0F:EB2C: 20 59 D2  JSR sub_D259_записать_FF_в_буфер_без_чтения_индекса
C - - - - - 0x03EB3F 0F:EB2F: 88        DEY
C - - - - - 0x03EB40 0F:EB30: 10 D7     BPL bra_EB09_loop
bra_EB32_RTS:
C - - - - - 0x03EB42 0F:EB32: 60        RTS
bra_EB33:
- - - - - - 0x03EB43 0F:EB33: 98        TYA
- - - - - - 0x03EB44 0F:EB34: 18        CLC
- - - - - - 0x03EB45 0F:EB35: 69 5B     ADC #$5B
- - - - - - 0x03EB47 0F:EB37: 20 66 D2  JSR sub_D266_записать_A_в_буфер_без_сохранения_индекса
- - - - - - 0x03EB4A 0F:EB3A: 18        CLC
- - - - - - 0x03EB4B 0F:EB3B: 69 02     ADC #$02
- - - - - - 0x03EB4D 0F:EB3D: D0 EA     BNE bra_EB29   ; jmp



sub_EB3F:
loc_0x03EB4F:
C D 3 - - - 0x03EB4F 0F:EB3F: A2 01     LDX #$01
C - - - - - 0x03EB51 0F:EB41: 86 00     STX ram_0000
bra_EB43_loop:
C - - - - - 0x03EB53 0F:EB43: A6 00     LDX ram_0000
C - - - - - 0x03EB55 0F:EB45: BD 49 06  LDA ram_plr_колво_побед_в_раундах,X ; 0649 064A 
C - - - - - 0x03EB58 0F:EB48: F0 17     BEQ bra_EB61
C - - - - - 0x03EB5A 0F:EB4A: 0A        ASL
C - - - - - 0x03EB5B 0F:EB4B: 65 00     ADC ram_0000
C - - - - - 0x03EB5D 0F:EB4D: AA        TAX
C - - - - - 0x03EB5E 0F:EB4E: BC 68 EB  LDY tbl_EB68,X
bra_EB51_loop:
C - - - - - 0x03EB61 0F:EB51: B9 6E EB  LDA tbl_EB6E,Y
C - - - - - 0x03EB64 0F:EB54: C9 FE     CMP #$FE
C - - - - - 0x03EB66 0F:EB56: F0 06     BEQ bra_EB5E_FE
C - - - - - 0x03EB68 0F:EB58: 20 5D D2  JSR sub_D25D_записать_A_в_буфер_с_чтением_индекса
C - - - - - 0x03EB6B 0F:EB5B: C8        INY
C - - - - - 0x03EB6C 0F:EB5C: D0 F3     BNE bra_EB51_loop
bra_EB5E_FE:
C - - - - - 0x03EB6E 0F:EB5E: 20 5B D2  JSR sub_D25B_записать_FF_в_буфер_с_чтением_индекса
bra_EB61:
C - - - - - 0x03EB71 0F:EB61: C6 00     DEC ram_0000
C - - - - - 0x03EB73 0F:EB63: 10 DE     BPL bra_EB43_loop
C - - - - - 0x03EB75 0F:EB65: 60        RTS



tbl_EB66_ppu_lo:
; bzk optimize, добавить hi
- D 3 - - - 0x03EB76 0F:EB66: 84        .byte < $2084   ; 00
- D 3 - - - 0x03EB77 0F:EB67: 91        .byte < $2091   ; 01



tbl_EB68:
- D 3 - - - 0x03EB78 0F:EB68: 47        .byte $47   ; 00
- D 3 - - - 0x03EB79 0F:EB69: 37        .byte $37   ; 01
- D 3 - - - 0x03EB7A 0F:EB6A: 00        .byte $00   ; 02
- D 3 - - - 0x03EB7B 0F:EB6B: 18        .byte $18   ; 03
- D 3 - - - 0x03EB7C 0F:EB6C: 0C        .byte $0C   ; 04
- D 3 - - - 0x03EB7D 0F:EB6D: 24        .byte $24   ; 05



tbl_EB6E:
- D 3 - - - 0x03EB7E 0F:EB6E: 01        .byte con_buf_mode_01   ; 
- D 3 - - - 0x03EB7F 0F:EB6F: 61 20     .word $2061
- D 3 - - - 0x03EB81 0F:EB71: 1A        .byte $1A, $1B, $FF   ; 

- D 3 - - - 0x03EB84 0F:EB74: 01        .byte con_buf_mode_01   ; 
- D 3 - - - 0x03EB85 0F:EB75: 81 20     .word $2081
- D 3 - - - 0x03EB87 0F:EB77: 1C        .byte $1C, $1F   ; 
- D 3 - - - 0x03EB89 0F:EB79: FE        .byte $FE   ; ?

- D 3 - - - 0x03EB8A 0F:EB7A: 01        .byte con_buf_mode_01   ; 
- D 3 - - - 0x03EB8B 0F:EB7B: 62 20     .word $2062
- D 3 - - - 0x03EB8D 0F:EB7D: 1A        .byte $1A, $1B, $FF   ; 

- D 3 - - - 0x03EB90 0F:EB80: 01        .byte con_buf_mode_01   ; 
- D 3 - - - 0x03EB91 0F:EB81: 82 20     .word $2082
- D 3 - - - 0x03EB93 0F:EB83: 1C        .byte $1C, $1D   ; 
- D 3 - - - 0x03EB95 0F:EB85: FE        .byte $FE   ; ?

- D 3 - - - 0x03EB96 0F:EB86: 01        .byte con_buf_mode_01   ; 
- D 3 - - - 0x03EB97 0F:EB87: 7C 20     .word $207C
- D 3 - - - 0x03EB99 0F:EB89: 1A        .byte $1A, $1B, $FF   ; 

- D 3 - - - 0x03EB9C 0F:EB8C: 01        .byte con_buf_mode_01   ; 
- D 3 - - - 0x03EB9D 0F:EB8D: 9C 20     .word $209C
- D 3 - - - 0x03EB9F 0F:EB8F: 1E        .byte $1E, $1F   ; 
- D 3 - - - 0x03EBA1 0F:EB91: FE        .byte $FE   ; ?

- D 3 - - - 0x03EBA2 0F:EB92: 01        .byte con_buf_mode_01   ; 
- D 3 - - - 0x03EBA3 0F:EB93: 7D 20     .word $207D
- D 3 - - - 0x03EBA5 0F:EB95: 1A        .byte $1A, $1B, $FF   ; 

- D 3 - - - 0x03EBA8 0F:EB98: 01        .byte con_buf_mode_01   ; 
- D 3 - - - 0x03EBA9 0F:EB99: 9D 20     .word $209D
- D 3 - - - 0x03EBAB 0F:EB9B: 1C        .byte $1C, $1F   ; 
- D 3 - - - 0x03EBAD 0F:EB9D: FE        .byte $FE   ; ?



sub_EB9E_вывести_имя_перса_над_шкалой_здоровья:
C - - - - - 0x03EBAE 0F:EB9E: A9 00     LDA #$00
                                        .byte $2C   ; BIT
sub_EBA0_вывести_имя_перса_на_vs_экране:
                                        LDA #$04
C - - - - - 0x03EBB0 0F:EBA0: 85 01     STA ram_0001
C - - - - - 0x03EBB2 0F:EBA2: A2 01     LDX #$01
C - - - - - 0x03EBB4 0F:EBA4: 86 A8     STX ram_local_obj_index
bra_EBA6_loop:
C - - - - - 0x03EBB6 0F:EBA6: A6 A8     LDX ram_local_obj_index
C - - - - - 0x03EBB8 0F:EBA8: B5 A2     LDA ram_plr_id,X
C - - - - - 0x03EBBA 0F:EBAA: 85 00     STA ram_0000    ; индекс перса
C - - - - - 0x03EBBC 0F:EBAC: 8A        TXA
C - - - - - 0x03EBBD 0F:EBAD: 0A        ASL
C - - - - - 0x03EBBE 0F:EBAE: 65 01     ADC ram_0001
C - - - - - 0x03EBC0 0F:EBB0: AA        TAX
C - - - - - 0x03EBC1 0F:EBB1: BD 53 EC  LDA tbl_EC53_ppu,X
C - - - - - 0x03EBC4 0F:EBB4: BC 54 EC  LDY tbl_EC53_ppu + $01,X
C - - - - - 0x03EBC7 0F:EBB7: 20 6B D2  JSR sub_D26B_записать_адрес_2006_Y_и_A_в_буфер
C - - - - - 0x03EBCA 0F:EBBA: A5 01     LDA ram_0001
C - - - - - 0x03EBCC 0F:EBBC: D0 23     BNE bra_EBE1_vs_экран
; if вывести имя в статусбаре
C - - - - - 0x03EBD0 0F:EBC0: A5 00     LDY ram_0000    ; индекс перса
                                        LDA tbl_EC00_индекс,Y
                                        TAY
bra_EBD1_loop:
C - - - - - 0x03EBE1 0F:EBD1: B9 01 EC  LDA tbl_EC01_имя_перса_в_статусбаре,Y
C - - - - - 0x03EBE4 0F:EBD4: 20 5F D2  JSR sub_D25F_записать_A_в_буфер_с_сохранением_индекса
C - - - - - 0x03EBE7 0F:EBD7: C8        INY
C - - - - - 0x03EBE8 0F:EBD8: C9 FF     CMP #$FF
C - - - - - 0x03EBEA 0F:EBDA: D0 F5     BNE bra_EBD1_loop
bra_EBDC:
C - - - - - 0x03EBEC 0F:EBDC: C6 A8     DEC ram_local_obj_index
C - - - - - 0x03EBEE 0F:EBDE: 10 C6     BPL bra_EBA6_loop
C - - - - - 0x03EBF0 0F:EBE0: 60        RTS
bra_EBE1_vs_экран:
C - - - - - 0x03EBF3 0F:EBE3: A5 00     LDY ram_0000    ; индекс перса
                                        LDA tbl_EC29_индекс,Y
                                        TAY
bra_EBF4_loop:
C - - - - - 0x03EC04 0F:EBF4: B9 2A EC  LDA tbl_EC2A_имя_перса_на_vs_экране,Y
C - - - - - 0x03EC07 0F:EBF7: 20 5F D2  JSR sub_D25F_записать_A_в_буфер_с_сохранением_индекса
C - - - - - 0x03EC0A 0F:EBFA: C8        INY
C - - - - - 0x03EC0B 0F:EBFB: C9 FF     CMP #$FF
C - - - - - 0x03EC0D 0F:EBFD: D0 F5     BNE bra_EBF4_loop
C - - - - - 0x03EC0F 0F:EBFF: F0 DB     BEQ bra_EBDC    ; jmp



tbl_EC00_индекс:
; имя в статусбаре
                                        .byte off_EC01_00_leo - tbl_EC02   ; con_fighter_leo
                                        .byte off_EC05_01_raph - tbl_EC02   ; con_fighter_raph
                                        .byte off_EC0A_02_mike - tbl_EC02   ; con_fighter_mike
                                        .byte off_EC0F_03_don - tbl_EC02   ; con_fighter_don
                                        .byte off_EC13_04_casey - tbl_EC02   ; con_fighter_casey
                                        .byte off_EC19_05_hot - tbl_EC02   ; con_fighter_hot
                                        .byte off_EC21_06_shred - tbl_EC02   ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte off_EC01_07 - tbl_EC02   ; con_fighter___leo
                                        .byte off_EC05_08 - tbl_EC02   ; con_fighter___raph
                                        .byte off_EC0A_09 - tbl_EC02   ; con_fighter___mike
                                        .byte off_EC0F_0A - tbl_EC02   ; con_fighter___don
                                        .byte off_EC13_0B - tbl_EC02   ; con_fighter___casey
                                        .byte off_EC19_0C - tbl_EC02   ; con_fighter___hot
                                        .byte off_EC21_0D - tbl_EC02   ; con_fighter___shred
                                    .endif



tbl_EC01_имя_перса_в_статусбаре:
tbl_EC02:
off_EC01_00_leo:
off_EC01_07:
- D 3 - - - 0x03EC11 0F:EC01: 07        .byte $07, $04, $0A   ; LEO
- D 3 - - - 0x03EC14 0F:EC04: FF        .byte $FF   ; end token

off_EC05_01_raph:
off_EC05_08:
- D 3 - - - 0x03EC15 0F:EC05: 0C        .byte $0C, $01, $0B, $05   ; RAPH
- D 3 - - - 0x03EC19 0F:EC09: FF        .byte $FF   ; end token

off_EC0A_02_mike:
off_EC0A_09:
- D 3 - - - 0x03EC1A 0F:EC0A: 08        .byte $08, $06, $60, $04   ; MIKE
- D 3 - - - 0x03EC1E 0F:EC0E: FF        .byte $FF   ; end token

off_EC0F_03_don:
off_EC0F_0A:
- D 3 - - - 0x03EC1F 0F:EC0F: 03        .byte $03, $0A, $09   ; DON
- D 3 - - - 0x03EC22 0F:EC12: FF        .byte $FF   ; end token

off_EC13_04_casey:
off_EC13_0B:
- D 3 - - - 0x03EC23 0F:EC13: 02        .byte $02, $01, $0D, $04, $0F   ; CASEY
- D 3 - - - 0x03EC28 0F:EC18: FF        .byte $FF   ; end token

off_EC19_05_hot:
off_EC19_0C:
- D 3 - - - 0x03EC29 0F:EC19: 05        .byte $05, $0A, $0E, $05, $04, $01, $03   ; HOTHEAD
- D 3 - - - 0x03EC30 0F:EC20: FF        .byte $FF   ; end token

off_EC21_06_shred:
off_EC21_0D:
- D 3 - - - 0x03EC31 0F:EC21: 0D        .byte $0D, $05, $0C, $04, $03, $03, $04, $0C   ; SHREDDER
- D 3 - - - 0x03EC39 0F:EC29: FF        .byte $FF   ; end token



tbl_EC29_индекс:
; имя на vs экране
                                        .byte off_EC2A_00_leo - tbl_EC2B   ; con_fighter_leo
                                        .byte off_EC2E_01_raph - tbl_EC2B   ; con_fighter_raph
                                        .byte off_EC33_02_mike - tbl_EC2B   ; con_fighter_mike
                                        .byte off_EC38_03_don - tbl_EC2B   ; con_fighter_don
                                        .byte off_EC3C_04_casey - tbl_EC2B   ; con_fighter_casey
                                        .byte off_EC42_05_hot - tbl_EC2B   ; con_fighter_hot
                                        .byte off_EC4A_06_shred - tbl_EC2B   ; con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte off_EC2A_07 - tbl_EC2B   ; con_fighter___leo
                                        .byte off_EC2E_08 - tbl_EC2B   ; con_fighter___raph
                                        .byte off_EC33_09 - tbl_EC2B   ; con_fighter___mike
                                        .byte off_EC38_0A - tbl_EC2B   ; con_fighter___don
                                        .byte off_EC3C_0B - tbl_EC2B   ; con_fighter___casey
                                        .byte off_EC42_0C - tbl_EC2B   ; con_fighter___hot
                                        .byte off_EC4A_0D - tbl_EC2B   ; con_fighter___shred
                                    .endif



tbl_EC2A_имя_перса_на_vs_экране:
tbl_EC2B:
off_EC2A_00_leo:
off_EC2A_07:
- D 3 - - - 0x03EC3A 0F:EC2A: 16        .byte $16, $0F, $19   ; LEO
- D 3 - - - 0x03EC3D 0F:EC2D: FF        .byte $FF   ; end token

off_EC2E_01_raph:
off_EC2E_08:
- D 3 - - - 0x03EC3E 0F:EC2E: 1C        .byte $1C, $0B, $1A, $12   ; RAPH
- D 3 - - - 0x03EC42 0F:EC32: FF        .byte $FF   ; end token

off_EC33_02_mike:
off_EC33_09:
- D 3 - - - 0x03EC43 0F:EC33: 17        .byte $17, $13, $15, $0F   ; MIKE
- D 3 - - - 0x03EC47 0F:EC37: FF        .byte $FF   ; end token

off_EC38_03_don:
off_EC38_0A:
- D 3 - - - 0x03EC48 0F:EC38: 0E        .byte $0E, $19, $18   ; DON
- D 3 - - - 0x03EC4B 0F:EC3B: FF        .byte $FF   ; end token

off_EC3C_04_casey:
off_EC3C_0B:
- D 3 - - - 0x03EC4C 0F:EC3C: 0D        .byte $0D, $0B, $1D, $0F, $23   ; CASEY
- D 3 - - - 0x03EC51 0F:EC41: FF        .byte $FF   ; end token

off_EC42_05_hot:
off_EC42_0C:
- D 3 - - - 0x03EC52 0F:EC42: 12        .byte $12, $19, $1E, $12, $0F, $0B, $0E   ; HOTHEAD
- D 3 - - - 0x03EC59 0F:EC49: FF        .byte $FF   ; end token

off_EC4A_06_shred:
off_EC4A_0D:
- D 3 - - - 0x03EC5A 0F:EC4A: 1D        .byte $1D, $12, $1C, $0F, $0E, $0E, $0F, $1C   ; SHREDDER
- D 3 - - - 0x03EC62 0F:EC52: FF        .byte $FF   ; end token



tbl_EC53_ppu:
; 00
- D 3 - - - 0x03EC63 0F:EC53: 20 65     .dbyt $2065 ; 00 перс слева
- D 3 - - - 0x03EC65 0F:EC55: 20 72     .dbyt $2072 ; 01 перс справа
; 04
- D 3 - - - 0x03EC67 0F:EC57: 25 84     .dbyt $2584 ; 00 перс слева
- D 3 - - - 0x03EC69 0F:EC59: 25 F7     .dbyt $25F7 ; 01 перс справа



tbl_0x03EFA1:
- D 3 - - - 0x03EFA1 0F:EF91: 00        .byte $00   ; 00
- D 3 - - - 0x03EFA2 0F:EF92: 48        .byte $48   ; 01
- - - - - - 0x03EFA3 0F:EF93: A0        .byte $A0   ; 02
- - - - - - 0x03EFA4 0F:EF94: A0        .byte $A0   ; 03

tbl_0x03EFA5:
- D 3 - - - 0x03EFA5 0F:EF95: B0        .byte $B0   ; 00
- D 3 - - - 0x03EFA6 0F:EF96: C0        .byte $C0   ; 01
- - - - - - 0x03EFA7 0F:EF97: C0        .byte $C0   ; 02
- - - - - - 0x03EFA8 0F:EF98: C0        .byte $C0   ; 03



sub_0x03EFB0:
C - - - - - 0x03EFBA 0F:EFAA: 20 E3 F5  JSR sub_F5E3_swap_prg_14
C - - - - - 0x03EFBD 0F:EFAD: 20 7C BD  JSR sub_0x02BD8C_обработчик_стен_bonus_game
C - - - - - 0x03EFC0 0F:EFB0: 4C 17 F6  JMP loc_F617_restore_prg



sub_0x03EFD1:
; bzk optimize, переместить в банк 12 когда там будет место
C - - - - - 0x03EFD1 0F:EFC1: 98        TYA
C - - - - - 0x03EFD2 0F:EFC2: 0A        ASL
C - - - - - 0x03EFD3 0F:EFC3: A8        TAY
C - - - - - 0x03EFD4 0F:EFC4: D0 06     BNE bra_EFCC
C - - - - - 0x03EFD6 0F:EFC6: AD B6 05  LDA ram_05B0_obj_damage + $06
C - - - - - 0x03EFD9 0F:EFC9: 4A        LSR
C - - - - - 0x03EFDA 0F:EFCA: 4A        LSR
C - - - - - 0x03EFDB 0F:EFCB: 60        RTS
bra_EFCC:
C - - - - - 0x03EFDC 0F:EFCC: AD 04 01  LDA ram_0104
C - - - - - 0x03EFDF 0F:EFCF: 10 01     BPL bra_EFD2
C - - - - - 0x03EFE1 0F:EFD1: C8        INY
bra_EFD2:
C - - - - - 0x03EFE2 0F:EFD2: B9 78 EF  LDA tbl_EFD6 - con_колво_обычных_ударов * $02,Y
C - - - - - 0x03EFE5 0F:EFD5: 60        RTS



tbl_EFD6:
- D 3 - - - 0x03EFE6 0F:EFD6: 0E        .byte $0E   ; 5E
- D 3 - - - 0x03EFE7 0F:EFD7: 0A        .byte $0B   ; 5F
- D 3 - - - 0x03EFE8 0F:EFD8: 0E        .byte $0E   ; 60
- D 3 - - - 0x03EFE9 0F:EFD9: 0C        .byte $0C   ; 61
- D 3 - - - 0x03EFEA 0F:EFDA: 0E        .byte $0E   ; 62
- D 3 - - - 0x03EFEB 0F:EFDB: 07        .byte $07   ; 63
- D 3 - - - 0x03EFEC 0F:EFDC: 10        .byte $10   ; 64
- D 3 - - - 0x03EFED 0F:EFDD: 0A        .byte $0A   ; 65
- D 3 - - - 0x03EFEE 0F:EFDE: 10        .byte $10   ; 66
- D 3 - - - 0x03EFEF 0F:EFDF: 09        .byte $09   ; 67
- - - - - - 0x03EFF0 0F:EFE0: 10        .byte $10   ; 68
- - - - - - 0x03EFF1 0F:EFE1: 09        .byte $09   ; 69
- D 3 - - - 0x03EFF2 0F:EFE2: 0E        .byte $0E   ; 6A
- D 3 - - - 0x03EFF3 0F:EFE3: 09        .byte $09   ; 6B
- - - - - - 0x03EFF4 0F:EFE4: 08        .byte $08   ; 6C
- D 3 - - - 0x03EFF5 0F:EFE5: 06        .byte $06   ; 6D
- D 3 - - - 0x03EFF6 0F:EFE6: 10        .byte $10   ; 6E
- D 3 - - - 0x03EFF7 0F:EFE7: 0C        .byte $0C   ; 6F
- D 3 - - - 0x03EFF8 0F:EFE8: 0C        .byte $0C   ; 70
- D 3 - - - 0x03EFF9 0F:EFE9: 09        .byte $09   ; 71
- D 3 - - - 0x03EFFA 0F:EFEA: 08        .byte $08   ; 72
- D 3 - - - 0x03EFFB 0F:EFEB: 06        .byte $06   ; 73



sub_0x03EFFC:
loc_0x03EFFC:
C D 3 - - - 0x03EFFC 0F:EFEC: AC 26 01  LDY ram_option_speed
C - - - - - 0x03EFFF 0F:EFEF: F0 0C     BEQ bra_EFFD
C - - - - - 0x03F001 0F:EFF1: A4 95     LDY ram_0095_стадия_игры
C - - - - - 0x03F003 0F:EFF3: C0 07     CPY #con_0095_раунд_идет
C - - - - - 0x03F005 0F:EFF5: D0 06     BNE bra_EFFD
C - - - - - 0x03F007 0F:EFF7: E9 80     SBC #$80
C - - - - - 0x03F009 0F:EFF9: 10 02     BPL bra_EFFD
C - - - - - 0x03F00B 0F:EFFB: E9 00     SBC #$00
bra_EFFD:
C - - - - - 0x03F00D 0F:EFFD: 4C 7D D1  JMP loc_D17D



sub_F000_отрисовать_главное_меню:
C - - - - - 0x03F010 0F:F000: 20 3C F0  JSR sub_F03C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран
C - - - - - 0x03F013 0F:F003: 20 8C FC  JSR sub_FC8C_set_mirroring_V
C - - - - - 0x03F016 0F:F006: A5 FF     LDA ram_for_2000
C - - - - - 0x03F018 0F:F008: 29 FC     AND #$FC
C - - - - - 0x03F01A 0F:F00A: 85 FF     STA ram_for_2000
C - - - - - 0x03F01C 0F:F00C: A2 02     LDX #con_screen_главное_меню
C - - - - - 0x03F01E 0F:F00E: 20 44 F0  JSR sub_F044_отрисовать_экран
C - - - - - 0x03F021 0F:F011: A0 04     LDY #con_D57A_04
C - - - - - 0x03F023 0F:F013: A9 1B     LDA #con_D57A_1B
C - - - - - 0x03F025 0F:F015: 20 94 D3  JSR sub_D394_записать_палитру_для_фона_и_спрайтов
C - - - - - 0x03F029 0F:F019: EE 6D 06  INC ram_066D
C - - - - - 0x03F02C 0F:F01C: 20 02 D6  JSR sub_D602_выбрать_chr_банк_на_основе_опции_skin
C - - - - - 0x03F02F 0F:F01F: 86 35     STX ram_chr_bank_spr + $01
C - - - - - 0x03F031 0F:F021: A9 78     LDA #con_chr_bank_bg + $78
C - - - - - 0x03F033 0F:F023: 85 32     STA ram_chr_bank_bg
C - - - - - 0x03F035 0F:F025: A9 7A     LDA #con_chr_bank_bg + $7A
C - - - - - 0x03F037 0F:F027: 85 33     STA ram_chr_bank_bg + $01
C - - - - - 0x03F039 0F:F029: A9 08     LDA #con_0048_08
C - - - - - 0x03F03B 0F:F02B: 20 14 F8  JSR sub_F814_подготовить_irq_handler
C - - - - - 0x03F03E 0F:F02E: A9 05     LDA #$05
C - - - - - 0x03F040 0F:F030: 85 08     STA ram_0008
bra_F032_loop:
C - - - - - 0x03F042 0F:F032: A5 08     LDA ram_0008
; con_print_story
; con_print_vs_player
; con_print_vs_cpu
; con_print_vs_team
; con_print_tournament
; con_print_option
C - - - - - 0x03F044 0F:F034: 20 E5 F6  JSR sub_F6E5_написать_текст_на_экране
C - - - - - 0x03F047 0F:F037: C6 08     DEC ram_0008
C - - - - - 0x03F049 0F:F039: 10 F7     BPL bra_F032_loop
C - - - - - 0x03F04B 0F:F03B: 60        RTS



sub_F03C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран:
sub_0x03F04C_выключить_irq___удалить_все_объекты___отрисовать_пустой_экран:
C - - - - - 0x03F04C 0F:F03C: 20 88 FB  JSR sub_FB88_disable_irq
sub_F03F_удалить_все_объекты___отрисовать_пустой_экран:
sub_0x03F04F_удалить_все_объекты___отрисовать_пустой_экран:
C - - - - - 0x03F04F 0F:F03F: 20 BE DA  JSR sub_DABE_удалить_все_объекты
sub_F042_отрисовать_пустой_экран:
loc_0x03F052_отрисовать_пустой_экран:
                                        JSR sub_F2D6_nmi_off
; A = 00
                                        STA ram_scroll_X
                                        STA ram_scroll_Y
C D 3 - - - 0x03F052 0F:F042: A2 00     LDX #$00
                                        BIT $2002
                                        LDA #> $2000
                                        STA $2006
                                        LDA #< $2000
                                        STA $2006
                                        LDY #$00
@loop_2000_23FF:
                                        STX $2007
                                        STX $2007
                                        STX $2007
                                        STX $2007
                                        INY
                                        BNE @loop_2000_23FF
; Y = 00
                                        LDA #> $2C00
                                        STA $2006
                                        LDA #< $2C00
                                        STA $2006
@loop_2C00_2FFF:
                                        STX $2007
                                        STX $2007
                                        STX $2007
                                        STX $2007
                                        INY
                                        BNE @loop_2C00_2FFF
                                        JMP loc_F2B5_восстановить_2000



sub_F044_отрисовать_экран:
sub_0x03F054_отрисовать_экран:
; Y свободен
                                        JSR sub_F2D6_nmi_off
; A = 00
                                        STA ram_scroll_X
                                        STA ram_scroll_Y
                                        JSR sub_F5DF_swap_prg_08
                                        TXA
                                        PHA ; индекс экрана
                                        ASL
                                        TAX
                                        LDA tbl_0x03F0EF_начальный_адрес_экрана,X
                                        STA $2006
                                        LDA tbl_0x03F0EF_начальный_адрес_экрана + $01,X
                                        STA $2006
                                        LDA tbl_0x03F0EF_размер_экрана,X
                                        STA ram_0002
                                        LDA tbl_0x03F0EF_размер_экрана + $01,X
                                        STA ram_0003
                                        LDA tbl_0x03F0EE_поинтеры_на_экраны,X
                                        STA ram_0000
                                        CLC
                                        ADC ram_0002
                                        STA ram_0002
                                        LDA tbl_0x03F0EE_поинтеры_на_экраны + $01,X
                                        STA ram_0001
                                        ADC ram_0003
                                        STA ram_0003
                                        PLA ; индекс экрана
                                        TAY
C - - - - - 0x03F057 0F:F047: B9 B8 E3  LDA tbl_0x03E3C8_prg_bank_с_данными_экрана,Y
                                        PHA ; номер банка
                                        JSR sub_F617_restore_prg
                                        PLA ; номер банка
C - - - - - 0x03F05A 0F:F04A: 20 F9 F5  JSR sub_F5F9_swap_prg_A_id
bra_F077_loop:
                                        LDY #$00
                                        LDA (ram_0000),Y
                                        STA $2007
                                        INC ram_0000
                                        BNE bra_F078_not_overflow
                                        INC ram_0001
bra_F078_not_overflow:
                                        LDA ram_0000
                                        CMP ram_0002
                                        BNE bra_F077_loop
                                        LDA ram_0001
                                        CMP ram_0003
                                        BNE bra_F077_loop
                                        JSR sub_F2B5_восстановить_2000
C - - - - - 0x03F060 0F:F050: 4C 17 F6  JMP loc_F617_restore_prg



vec_F16D_RESET:
C - - - - - 0x03F17D 0F:F16D: 78        SEI
C - - - - - 0x03F17E 0F:F16E: D8        CLD
C - - - - - 0x03F17F 0F:F16F: A2 FF     LDX #$FF
C - - - - - 0x03F181 0F:F171: 9A        TXS
C - - - - - 0x03F182 0F:F172: A9 00     LDA #$00
C - - - - - 0x03F184 0F:F174: 8D 00 20  STA $2000
C - - - - - 0x03F187 0F:F177: 8D 01 20  STA $2001
C - - - - - 0x03F18A 0F:F17A: A2 02     LDX #$02
bra_F17C_loop:
bra_F17C_infinite_loop:
C - - - - - 0x03F18C 0F:F17C: AD 02 20  LDA $2002
C - - - - - 0x03F18F 0F:F17F: 10 FB     BPL bra_F17C_infinite_loop
bra_F181_infinite_loop:
C - - - - - 0x03F191 0F:F181: AD 02 20  LDA $2002
C - - - - - 0x03F194 0F:F184: 30 FB     BMI bra_F181_infinite_loop
C - - - - - 0x03F196 0F:F186: CA        DEX
C - - - - - 0x03F197 0F:F187: D0 F3     BNE bra_F17C_loop
C - - - - - 0x03F199 0F:F189: 20 49 F3  JSR sub_F349
C - - - - - 0x03F19C 0F:F18C: 20 BB F2  LDA #$0F
                                        STA $4015
                                        LDA #$C0
                                        STA $4017
C - - - - - 0x03F19F 0F:F18F: 8A        TXA ; 00
C - - - - - 0x03F1A0 0F:F190: 85 00     STA ram_0000
C - - - - - 0x03F1A2 0F:F192: 85 01     STA ram_0001
C - - - - - 0x03F1A4 0F:F194: A0 00     LDY #$00
C - - - - - 0x03F1A6 0F:F196: A2 08     LDX #$08
bra_F198_loop:
C - - - - - 0x03F1A8 0F:F198: A5 01     LDA ram_0001
C - - - - - 0x03F1AA 0F:F19A: D0 04     BNE bra_F1A0
C - - - - - 0x03F1AC 0F:F19C: C0 31     CPY #$31
C - - - - - 0x03F1AE 0F:F19E: F0 10     BEQ bra_F1B0
bra_F1A0:
C - - - - - 0x03F1B0 0F:F1A0: C9 01     CMP #$01
C - - - - - 0x03F1B2 0F:F1A2: D0 08     BNE bra_F1AC
C - - - - - 0x03F1B4 0F:F1A4: C0 13     CPY #$13
C - - - - - 0x03F1B6 0F:F1A6: 90 04     BCC bra_F1AC
C - - - - - 0x03F1B8 0F:F1A8: C0 2E     CPY #$2E
C - - - - - 0x03F1BA 0F:F1AA: 90 04     BCC bra_F1B0
bra_F1AC:
C - - - - - 0x03F1BC 0F:F1AC: A9 00     LDA #$00
C - - - - - 0x03F1BE 0F:F1AE: 91 00     STA (ram_0000),Y
bra_F1B0:
C - - - - - 0x03F1C0 0F:F1B0: C8        INY
C - - - - - 0x03F1C1 0F:F1B1: D0 E5     BNE bra_F198_loop
C - - - - - 0x03F1C3 0F:F1B3: E6 01     INC ram_0001
C - - - - - 0x03F1C5 0F:F1B5: E4 01     CPX ram_0001
C - - - - - 0x03F1C7 0F:F1B7: D0 DF     BNE bra_F198_loop
; проверка на тип reset
C - - - - - 0x03F1C9 0F:F1B9: A0 02     LDY #$02
bra_F1BB_loop:
C - - - - - 0x03F1CB 0F:F1BB: B9 22 01  LDA ram_reset_check,Y
C - - - - - 0x03F1CE 0F:F1BE: D9 75 F3  CMP tbl_F375_reset_check,Y
C - - - - - 0x03F1D1 0F:F1C1: D0 05     BNE bra_F1C8_hard_reset
C - - - - - 0x03F1D3 0F:F1C3: 88        DEY
C - - - - - 0x03F1D4 0F:F1C4: 10 F5     BPL bra_F1BB_loop
C - - - - - 0x03F1D6 0F:F1C6: 30 2C     BMI bra_F1F4_soft_reset    ; jmp
bra_F1C8_hard_reset:
; выставить значения опций по умолчанию
C - - - - - 0x03F1D8 0F:F1C8: A0 07     LDY #$07
bra_F1CA_loop:
C - - - - - 0x03F1DA 0F:F1CA: B9 BB F9  LDA tbl_F9BB_опции_по_умолчанию,Y
C - - - - - 0x03F1DD 0F:F1CD: 99 25 01  STA ram_options,Y
C - - - - - 0x03F1E0 0F:F1D0: 88        DEY
C - - - - - 0x03F1E1 0F:F1D1: 10 F7     BPL bra_F1CA_loop
; запись рекорда очков
C - - - - - 0x03F1E3 0F:F1D3: A0 0C     LDY #$0C
bra_F1D5_loop:
C - - - - - 0x03F1E5 0F:F1D5: A9 05     LDA #$05
C - - - - - 0x03F1E7 0F:F1D7: 99 13 01  STA ram_topscore,Y ; 0113 0116 0119 011C 011F 
C - - - - - 0x03F1EA 0F:F1DA: A9 00     LDA #$00      
C - - - - - 0x03F1EC 0F:F1DC: 99 14 01  STA ram_topscore + $01,Y ; 0114 0117 011A 011D 0120 
C - - - - - 0x03F1EF 0F:F1DF: 99 15 01  STA ram_topscore + $02,Y ; 0115 0118 011B 011E 0121 
C - - - - - 0x03F1F2 0F:F1E2: 88        DEY
C - - - - - 0x03F1F3 0F:F1E3: 88        DEY
C - - - - - 0x03F1F4 0F:F1E4: 88        DEY
C - - - - - 0x03F1F5 0F:F1E5: 10 EE     BPL bra_F1D5_loop
; A = 00
C - - - - - 0x03F1F7 0F:F1E7: 85 31     STA ram_continue
C - - - - - 0x03F1F9 0F:F1E9: A0 02     LDY #$02
bra_F1EB_loop:
C - - - - - 0x03F1FB 0F:F1EB: B9 75 F3  LDA tbl_F375_reset_check,Y
C - - - - - 0x03F1FE 0F:F1EE: 99 22 01  STA ram_reset_check,Y
C - - - - - 0x03F201 0F:F1F1: 88        DEY
C - - - - - 0x03F202 0F:F1F2: 10 F7     BPL bra_F1EB_loop
bra_F1F4_soft_reset:
                                        LDA #$00
                                        STA ram_индекс_очереди_звуков
C - - - - - 0x03F204 0F:F1F4: 20 C2 F6  JSR sub_F6C2_выключить_музыку_и_звуки
                                        LDY #$00    ; disable irq
                                        STY ram_irq_flag
                                        LDA #con_script_draw_копирайты
C - - - - - 0x03F207 0F:F1F7: 20 E1 F4  JSR sub_F5AE_подготовить_новый_скрипт
                                        JSR sub_F6C2_выключить_музыку_и_звуки
C - - - - - 0x03F20A 0F:F1FA: 20 C6 F2  JSR sub_F2C6_nmi_on
C - - - - - 0x03F20D 0F:F1FD: 58        CLI
                                        LDX ram_счетчик_кадров
loc_F1FE_infinite_loop:
                                        CPX ram_счетчик_кадров
                                        BEQ bra_F1FE_пропуск_звукового_движка
                                        JSR sub_F5DF_swap_prg_10
                                        JSR sub_0x020011_обновить_звуковой_движок
                                        JSR sub_F617_restore_prg
                                        LDX ram_счетчик_кадров
                                        JMP loc_F1FE_infinite_loop
bra_F1FE_пропуск_звукового_движка:
C D 3 - - - 0x03F20E 0F:F1FE: 20 04 F2  JSR sub_F204_генератор_рандома
C - - - - - 0x03F211 0F:F201: 4C FE F1  JMP loc_F1FE_infinite_loop



tbl_F375_reset_check:
- D 3 - - - 0x03F385 0F:F375: 91        .byte $91, $8B, $99   ; 



sub_F204_генератор_рандома:
sub_0x03F214_генератор_рандома:
C - - - - - 0x03F214 0F:F204: E6 28     INC ram_random_1
C - - - - - 0x03F216 0F:F206: 18        CLC
C - - - - - 0x03F217 0F:F207: A5 28     LDA ram_random_1
C - - - - - 0x03F219 0F:F209: 65 22     ADC ram_счетчик_кадров
C - - - - - 0x03F21B 0F:F20B: 85 28     STA ram_random_1
C - - - - - 0x03F21D 0F:F20D: A4 28     LDY ram_random_1
C - - - - - 0x03F21F 0F:F20F: B9 00 00  LDA ram_0000,Y
C - - - - - 0x03F222 0F:F212: 65 28     ADC ram_random_1
C - - - - - 0x03F224 0F:F214: 65 8C     ADC ram_random_2
C - - - - - 0x03F226 0F:F216: 85 8C     STA ram_random_2
C - - - - - 0x03F228 0F:F218: 60        RTS



vec_F219_NMI:
C - - - - - 0x03F229 0F:F219: 48        PHA
C - - - - - 0x03F22A 0F:F21A: 8A        TXA
C - - - - - 0x03F22B 0F:F21B: 48        PHA
C - - - - - 0x03F22C 0F:F21C: 98        TYA
C - - - - - 0x03F22D 0F:F21D: 48        PHA
C - - - - - 0x03F22E 0F:F21E: AD 02 20  LDA $2002
C - - - - - 0x03F231 0F:F221: 58        CLI
C - - - - - 0x03F232 0F:F222: A4 23     LDY ram_nmi_flag
C - - - - - 0x03F234 0F:F224: D0 53     BNE bra_F279_игра_сейчас_лагает
C - - - - - 0x03F236 0F:F226: 20 D6 F2  JSR sub_F2D6_nmi_off
C - - - - - 0x03F239 0F:F229: A9 00     LDA #< ram_oam
C - - - - - 0x03F23B 0F:F22B: 8D 03 20  STA $2003
C - - - - - 0x03F23E 0F:F22E: A0 02     LDY #> ram_oam
C - - - - - 0x03F240 0F:F230: 20 C2 F8  STY $4014
C - - - - - 0x03F243 0F:F233: 20 02 F7  JSR sub_F702_запись_буферов_в_ppu
C - - - - - 0x03F246 0F:F236: A5 FE     LDA ram_for_2001
C - - - - - 0x03F248 0F:F238: A6 24     LDX ram_таймер_выкл_рендеринга
C - - - - - 0x03F24A 0F:F23A: F0 06     BEQ bra_F242_таймер_закончился
C - - - - - 0x03F24C 0F:F23C: C6 24     DEC ram_таймер_выкл_рендеринга
C - - - - - 0x03F24E 0F:F23E: F0 02     BEQ bra_F242_таймер_закончился
; выключить рендеринг экрана
C - - - - - 0x03F250 0F:F240: 29 E7     AND #$E7
bra_F242_таймер_закончился:
C - - - - - 0x03F252 0F:F242: 8D 01 20  STA $2001
C - - - - - 0x03F255 0F:F245: 20 95 FB  JSR sub_FB95_подготовить_irq
C - - - - - 0x03F258 0F:F248: 20 9B F2  JSR sub_F29B_запись_scroll
C - - - - - 0x03F25B 0F:F24B: 20 20 F6  JSR sub_F620_запись_chr_банков
C - - - - - 0x03F25E 0F:F24E: E6 23     INC ram_nmi_flag
C - - - - - 0x03F267 0F:F257: 20 ED F2  JSR sub_F2ED_чтение_регистров_джойстиков
; суммирование кнопок обоих джойстиков
C - - - - - 0x03F26A 0F:F25A: A5 91     LDA ram_btn_hold
C - - - - - 0x03F26C 0F:F25C: 05 92     ORA ram_btn_hold + $01
C - - - - - 0x03F26E 0F:F25E: 85 93     STA ram_sum_btn_hold
C - - - - - 0x03F270 0F:F260: A5 8E     LDA ram_btn_press
C - - - - - 0x03F272 0F:F262: 05 8F     ORA ram_btn_press + $01
C - - - - - 0x03F274 0F:F264: 85 90     STA ram_sum_btn_press
                                        INC ram_счетчик_кадров
C - - - - - 0x03F276 0F:F266: 20 78 F3  JSR sub_F380_обработать_скрипт_или_яркость
                                        JSR sub_D538_скопировать_буфер_палитры_в_общий_буфер
C - - - - - 0x03F279 0F:F269: 20 D3 F6  JSR sub_F6D3_спрайтовый_движок
; закрыть буфер
C - - - - - 0x03F27C 0F:F26C: A9 00     LDA #$00
C - - - - - 0x03F27E 0F:F26E: 20 5D D2  JSR sub_D25D_записать_A_в_буфер_с_чтением_индекса
; A = 00
C - - - - - 0x03F281 0F:F271: 85 23     STA ram_nmi_flag
C - - - - - 0x03F283 0F:F273: 4C 6C F8  JMP loc_F86C_выход_из_прерывания
bra_F279_игра_сейчас_лагает:
; if nmi был вызван повторно
C - - - - - 0x03F289 0F:F279: A5 FE     LDA ram_for_2001
C - - - - - 0x03F28B 0F:F27B: A6 24     LDX ram_таймер_выкл_рендеринга
C - - - - - 0x03F28D 0F:F27D: F0 06     BEQ bra_F285_таймер_закончился
- - - - - - 0x03F28F 0F:F27F: C6 24     DEC ram_таймер_выкл_рендеринга
- - - - - - 0x03F291 0F:F281: F0 02     BEQ bra_F285_таймер_закончился
; выключить рендеринг экрана
- - - - - - 0x03F293 0F:F283: 29 E7     AND #$E7
bra_F285_таймер_закончился:
C - - - - - 0x03F295 0F:F285: 8D 01 20  STA $2001
C - - - - - 0x03F298 0F:F288: 20 95 FB  JSR sub_FB95_подготовить_irq
C - - - - - 0x03F29B 0F:F28B: 20 9B F2  JSR sub_F29B_запись_scroll
C - - - - - 0x03F29E 0F:F28E: 20 20 F6  JSR sub_F620_запись_chr_банков
C - - - - - 0x03F2A8 0F:F298: 4C 6C F8  JMP loc_F86C_выход_из_прерывания



sub_F29B_запись_scroll:
C - - - - - 0x03F2AB 0F:F29B: AD 02 20  LDA $2002
C - - - - - 0x03F2AE 0F:F29E: A9 20     LDA #> $2000
C - - - - - 0x03F2B0 0F:F2A0: 8D 06 20  STA $2006
C - - - - - 0x03F2B3 0F:F2A3: A9 00     LDA #< $2000
C - - - - - 0x03F2B5 0F:F2A5: 8D 06 20  STA $2006
C - - - - - 0x03F2B8 0F:F2A8: AD 02 20  LDA $2002
C - - - - - 0x03F2BB 0F:F2AB: A5 FD     LDA ram_scroll_X
C - - - - - 0x03F2BD 0F:F2AD: 8D 05 20  STA $2005
C - - - - - 0x03F2C0 0F:F2B0: A5 FC     LDA ram_scroll_Y
C - - - - - 0x03F2C2 0F:F2B2: 8D 05 20  STA $2005
loc_F2B5_восстановить_2000:
sub_F2B5_восстановить_2000:
C D 3 - - - 0x03F2C5 0F:F2B5: A5 FF     LDA ram_for_2000
C - - - - - 0x03F2C7 0F:F2B7: 8D 00 20  STA $2000
C - - - - - 0x03F2CA 0F:F2BA: 60        RTS



sub_F2C6_nmi_on:
C - - - - - 0x03F2D6 0F:F2C6: A9 A8     LDA #$A8
C - - - - - 0x03F2D8 0F:F2C8: 85 FF     STA ram_for_2000
C - - - - - 0x03F2DA 0F:F2CA: 8D 00 20  STA $2000
C - - - - - 0x03F2DD 0F:F2CD: A9 1E     LDA #$1E
C - - - - - 0x03F2DF 0F:F2CF: 85 FE     STA ram_for_2001
C - - - - - 0x03F2E1 0F:F2D1: A9 05     LDA #$05
C - - - - - 0x03F2E3 0F:F2D3: 85 24     STA ram_таймер_выкл_рендеринга
C - - - - - 0x03F2E5 0F:F2D5: 60        RTS



sub_F2D6_nmi_off:
; на выходе игре может понадобиться A = 00
C - - - - - 0x03F2E6 0F:F2D6: A5 FF     LDA ram_for_2000
C - - - - - 0x03F2E8 0F:F2D8: 29 7F     AND #$7F
C - - - - - 0x03F2EA 0F:F2DA: 8D 00 20  STA $2000
C - - - - - 0x03F2ED 0F:F2DD: A5 FE     LDA ram_for_2001
C - - - - - 0x03F2EF 0F:F2DF: 29 E7     AND #$E7
C - - - - - 0x03F2F1 0F:F2E1: 8D 01 20  STA $2001
C - - - - - 0x03F2F4 0F:F2E4: A9 00     LDA #$00
C - - - - - 0x03F2F6 0F:F2E6: 8D 06 20  STA $2006
C - - - - - 0x03F2F9 0F:F2E9: 8D 06 20  STA $2006
C - - - - - 0x03F2FC 0F:F2EC: 60        RTS



sub_F2ED_чтение_регистров_джойстиков:
C - - - - - 0x03F2FD 0F:F2ED: A2 00     LDX #$00
C - - - - - 0x03F2FF 0F:F2EF: 20 24 F3  JSR sub_F324_чтение_джойстика
C - - - - - 0x03F302 0F:F2F2: A2 02     LDX #$02
C - - - - - 0x03F304 0F:F2F4: 20 24 F3  JSR sub_F324_чтение_джойстика
C - - - - - 0x03F307 0F:F2F7: A5 00     LDA ram_0000
C - - - - - 0x03F309 0F:F2F9: C5 02     CMP ram_0002
C - - - - - 0x03F30B 0F:F2FB: D0 1C     BNE bra_F319
C - - - - - 0x03F30D 0F:F2FD: A5 01     LDA ram_0001
C - - - - - 0x03F30F 0F:F2FF: C5 03     CMP ram_0003
C - - - - - 0x03F311 0F:F301: D0 16     BNE bra_F319
C - - - - - 0x03F313 0F:F303: A2 00     LDX #$00
C - - - - - 0x03F315 0F:F305: 20 09 F3  JSR sub_F309
C - - - - - 0x03F318 0F:F308: E8        INX ; 01
sub_F309:
C - - - - - 0x03F319 0F:F309: B5 00     LDA ram_0000,X
C - - - - - 0x03F31B 0F:F30B: A8        TAY
C - - - - - 0x03F31C 0F:F30C: 55 FA     EOR ram_00FA,X
C - - - - - 0x03F31E 0F:F30E: 35 00     AND ram_0000,X
C - - - - - 0x03F320 0F:F310: 95 8E     STA ram_btn_press,X
C - - - - - 0x03F322 0F:F312: 95 F8     STA ram_00F8,X
C - - - - - 0x03F324 0F:F314: 94 91     STY ram_btn_hold,X
C - - - - - 0x03F326 0F:F316: 94 FA     STY ram_00FA,X
C - - - - - 0x03F328 0F:F318: 60        RTS
bra_F319:
; if результаты двух чтений отличаются (защита от бага DPCM)
; bzk optimize, нахрен оно не надо
- - - - - - 0x03F329 0F:F319: A9 00     LDA #$00
- - - - - - 0x03F32B 0F:F31B: 85 8E     STA ram_btn_press
- - - - - - 0x03F32D 0F:F31D: 85 F8     STA ram_00F8
- - - - - - 0x03F32F 0F:F31F: 85 8F     STA ram_btn_press + $01
- - - - - - 0x03F331 0F:F321: 85 F9     STA ram_00F9
- - - - - - 0x03F333 0F:F323: 60        RTS



sub_F324_чтение_джойстика:
C - - - - - 0x03F334 0F:F324: A0 01     LDY #$01
C - - - - - 0x03F336 0F:F326: 8C 16 40  STY $4016
C - - - - - 0x03F339 0F:F329: 88        DEY
C - - - - - 0x03F33A 0F:F32A: 8C 16 40  STY $4016
C - - - - - 0x03F33D 0F:F32D: A0 08     LDY #$08
bra_F32F_loop:
C - - - - - 0x03F33F 0F:F32F: AD 16 40  LDA $4016
C - - - - - 0x03F342 0F:F332: 85 04     STA ram_0004
C - - - - - 0x03F344 0F:F334: 4A        LSR
C - - - - - 0x03F345 0F:F335: 05 04     ORA ram_0004
C - - - - - 0x03F347 0F:F337: 4A        LSR
C - - - - - 0x03F348 0F:F338: 36 00     ROL ram_0000,X
C - - - - - 0x03F34A 0F:F33A: AD 17 40  LDA $4017
C - - - - - 0x03F34D 0F:F33D: 85 05     STA ram_0005
C - - - - - 0x03F34F 0F:F33F: 4A        LSR
C - - - - - 0x03F350 0F:F340: 05 05     ORA ram_0005
C - - - - - 0x03F352 0F:F342: 4A        LSR
C - - - - - 0x03F353 0F:F343: 36 01     ROL ram_0001,X
C - - - - - 0x03F355 0F:F345: 88        DEY
C - - - - - 0x03F356 0F:F346: D0 E7     BNE bra_F32F_loop
C - - - - - 0x03F358 0F:F348: 60        RTS



sub_F349:
C - - - - - 0x03F359 0F:F349: A9 00     LDA #$00
C - - - - - 0x03F35B 0F:F34B: 8D 01 20  STA $2001
C - - - - - 0x03F35E 0F:F34E: A9 08     LDA #$08
C - - - - - 0x03F360 0F:F350: 8D 00 20  STA $2000
C - - - - - 0x03F363 0F:F353: A9 00     LDA #$00
C - - - - - 0x03F365 0F:F355: 8D 00 80  STA $8000
C - - - - - 0x03F368 0F:F358: A0 00     LDY #$00
C - - - - - 0x03F36A 0F:F35A: 8C 05 20  STY $2005
C - - - - - 0x03F36D 0F:F35D: 8C 05 20  STY $2005
C - - - - - 0x03F370 0F:F360: 8C 00 E0  STY $E000
C - - - - - 0x03F373 0F:F363: AD 02 20  LDA $2002
C - - - - - 0x03F376 0F:F366: A9 10     LDA #$10
C - - - - - 0x03F378 0F:F368: AA        TAX
bra_F369_loop:
C - - - - - 0x03F379 0F:F369: 8D 06 20  STA $2006
C - - - - - 0x03F37C 0F:F36C: 8D 06 20  STA $2006
C - - - - - 0x03F37F 0F:F36F: 49 00     EOR #$00
C - - - - - 0x03F381 0F:F371: CA        DEX
C - - - - - 0x03F382 0F:F372: D0 F5     BNE bra_F369_loop
C - - - - - 0x03F384 0F:F374: 60        RTS



sub_F380_обработать_скрипт_или_яркость:
C - - - - - 0x03F390 0F:F380: A5 30     LDA ram_метод_изменения_яркости
C - - - - - 0x03F392 0F:F382: D0 1F     BNE bra_F3A3_обработать_яркость
C - - - - - 0x03F394 0F:F384: A5 20     LDA ram_script_draw_hi
C - - - - - 0x03F396 0F:F386: 20 32 D0  JSR sub_D032_поинтеры_после_JSR
- D 3 - I - 0x03F399 0F:F389: BF F3     .word ofs_000_F3BF_00_главное_меню
- D 3 - I - 0x03F39B 0F:F38B: AC F4     .word ofs_000_F4AC_01_демонстрационный_бой
- D 3 - I - 0x03F39D 0F:F38D: E5 F4     .word ofs_000_F4E5_02_очистка_1
- D 3 - I - 0x03F39F 0F:F38F: FA F4     .word ofs_000_F4FA_03_очистка_2
- D 3 - I - 0x03F3A1 0F:F391: 79 D2     .word ofs_000_D279_04_чтото_общее
- D 3 - I - 0x03F3A3 0F:F393: 09 F5     .word ofs_000_F509_05_konami
- D 3 - I - 0x03F3A5 0F:F395: 6F F5     .word ofs_000_F56F_06_копирайты
- D 3 - I - 0x03F3A7 0F:F397: DC F6     .word ofs_000_F6DC_07_options
- D 3 - I - 0x03F3A9 0F:F399: 9A F5     .word ofs_000_F59A_08_tournament_1
- D 3 - I - 0x03F3AB 0F:F39B: A4 F5     .word ofs_000_F5A4_09_tournament_2
- D 3 - I - 0x03F3AD 0F:F39D: AF F7     .word ofs_000_F7AF_0A_opening
- D 3 - I - 0x03F3AF 0F:F39F: B8 F7     .word ofs_000_F7B8_0B_ending
- D 3 - I - 0x03F3B1 0F:F3A1: CA F7     .word ofs_000_F7CA_0C_topscore
bra_F3A3_обработать_яркость:
C - - - - - 0x03F3B3 0F:F3A3: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03F3B5 0F:F3A5: 05 A4     ORA ram_00A4_кнопки
C - - - - - 0x03F3B7 0F:F3A7: 85 A4     STA ram_00A4_кнопки
C - - - - - 0x03F3B9 0F:F3A9: A5 30     LDA ram_метод_изменения_яркости
C - - - - - 0x03F3BB 0F:F3AB: 30 09     BMI bra_F3B6_80
C - - - - - 0x03F3BD 0F:F3AD: 0A        ASL
C - - - - - 0x03F3BE 0F:F3AE: 30 09     BMI bra_F3B9_40
C - - - - - 0x03F3C0 0F:F3B0: 0A        ASL
C - - - - - 0x03F3C1 0F:F3B1: 10 09     BPL bra_F3BC_01
; if 20
C - - - - - 0x03F3C3 0F:F3B3: 4C CB D4  JMP loc_D4CB_20_осветление_из_цветного_в_белый
bra_F3B6_80:
C - - - - - 0x03F3C6 0F:F3B6: 4C B4 D3  JMP loc_D3B4_80_затемнение_из_цветного_в_черный
bra_F3B9_40:
C - - - - - 0x03F3C9 0F:F3B9: 4C 79 D4  JMP loc_D479_40_затемнение_из_белого_в_цветной
bra_F3BC_01:
C - - - - - 0x03F3CC 0F:F3BC: 4C F9 D3  JMP loc_D3F9_01_осветление_из_черного_в_цветной



ofs_000_F3BF_00_главное_меню:
C - - J - - 0x03F3CF 0F:F3BF: A6 21     LDA ram_script_draw_lo
                                        JSR sub_D032_поинтеры_после_JSR
                                        .word ofs_главное_меню_F3C3_00
                                        .word ofs_главное_меню_F3E8_01
                                        .word ofs_главное_меню_F3F2_02
                                        .word ofs_главное_меню_F461_03
                                        .word ofs_главное_меню_F480_04
                                        .word ofs_главное_меню_F489_05



ofs_главное_меню_F3C3_00:
; X свободен
                                        LDA #$00
C - - - - - 0x03F3D3 0F:F3C3: 86 26     STA ram_0026_flag
C - - - - - 0x03F3D5 0F:F3C5: 86 27     STA ram_позиция_курсора_в_главном_меню
C - - - - - 0x03F3D7 0F:F3C7: 8E 11 01  STA ram_0111
C - - - - - 0x03F3DA 0F:F3CA: 8E 12 01  STA ram_0112
C - - - - - 0x03F3DD 0F:F3CD: 20 09 D0  JSR sub_D009_очистить_оперативку_1
C - - - - - 0x03F3E0 0F:F3D0: 20 00 F0  JSR sub_F000_отрисовать_главное_меню
C - - - - - 0x03F3E3 0F:F3D3: 20 48 E1  JSR sub_E148_подготовить_затемнение_из_белого_в_цветной
C - - - - - 0x03F3E6 0F:F3D6: 4C 38 F5  JSR sub_F5C4_записать_таймер_экрана_0100
                                        INC ram_script_draw_lo  ; 00 -> 01
                                        RTS



ofs_главное_меню_F3E8_01:
; X свободен
C - - - - - 0x03F3F8 0F:F3E8: E6 21     INC ram_script_draw_lo  ; 01 -> 02
C - - - - - 0x03F3FA 0F:F3EA: A9 24     LDA #con_075C_24
C - - - - - 0x03F3FC 0F:F3EC: 4C 8B F6  JMP loc_F68B_выключить_звуки_и_записать_новый



ofs_главное_меню_F3F2_02:
; X свободен
C - - - - - 0x03F402 0F:F3F2: 20 B3 F5  JSR sub_F5B3_проверить_и_уменьшить_16битный_таймер_экрана
C - - - - - 0x03F405 0F:F3F5: F0 E2     BNE bra_F3F7_еще_не_закончился
; if таймер закончился
C - - - - - 0x03F3E9 0F:F3D9: A9 00     LDA #$00    ; con_gm_story
C - - - - - 0x03F3EB 0F:F3DB: 85 27     STA ram_позиция_курсора_в_главном_меню
C - - - - - 0x03F3ED 0F:F3DD: 85 2C     STA ram_game_mode
                                        LDA #con_script_draw_vs_экран
C - - - - - 0x03F3EF 0F:F3DF: 20 A7 F5  JSR sub_F5AE_подготовить_новый_скрипт
C - - - - - 0x03F3F2 0F:F3E2: 4C 2E E1  JMP loc_E12E_подготовить_затемнение_из_цветного_в_черный
bra_F3F7_еще_не_закончился:
C - - - - - 0x03F407 0F:F3F7: 20 45 F4  JSR sub_F445
C - - - - - 0x03F40A 0F:F3FA: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03F40C 0F:F3FC: 29 0C     AND #con_btns_UD
C - - - - - 0x03F40E 0F:F3FE: F0 0A     BEQ bra_F40A
C - - - - - 0x03F410 0F:F400: A0 FF     LDY #$FF
C - - - - - 0x03F412 0F:F402: 29 08     AND #con_btn_Up
C - - - - - 0x03F414 0F:F404: D0 0C     BNE bra_F412
C - - - - - 0x03F416 0F:F406: A0 01     LDY #$01
C - - - - - 0x03F418 0F:F408: D0 08     BNE bra_F412    ; jmp
bra_F40A:
C - - - - - 0x03F41A 0F:F40A: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03F41C 0F:F40C: 29 20     AND #con_btn_Select
C - - - - - 0x03F41E 0F:F40E: F0 1B     BEQ bra_F42B
- - - - - - 0x03F420 0F:F410: A0 01     LDY #$01
bra_F412:
; перемещение курсора по списку в зависимости от нажатой кнопки
C - - - - - 0x03F422 0F:F412: 98        TYA
C - - - - - 0x03F423 0F:F413: 18        CLC
C - - - - - 0x03F424 0F:F414: 65 27     ADC ram_позиция_курсора_в_главном_меню
C - - - - - 0x03F426 0F:F416: C9 06     CMP #$06
C - - - - - 0x03F428 0F:F418: 90 07     BCC bra_F421
C - - - - - 0x03F42A 0F:F41A: 0A        ASL
C - - - - - 0x03F42B 0F:F41B: A9 00     LDA #$00
C - - - - - 0x03F42D 0F:F41D: 90 02     BCC bra_F421
C - - - - - 0x03F42F 0F:F41F: A9 05     LDA #$05
bra_F421:
C - - - - - 0x03F431 0F:F421: 85 27     STA ram_позиция_курсора_в_главном_меню
C - - - - - 0x03F433 0F:F423: A9 25     LDA #con_075C_25
C - - - - - 0x03F435 0F:F425: 20 90 F6  JSR sub_F690_записать_звук_сохранив_X_Y
C - - - - - 0x03F438 0F:F428: 20 C4 F5  JSR sub_F5C4_записать_таймер_экрана_0100
bra_F42B:
C - - - - - 0x03F43B 0F:F42B: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03F43D 0F:F42D: 29 10     AND #con_btn_Start
C - - - - - 0x03F43F 0F:F42F: F0 2C     BEQ bra_F45D_RTS
                                        LDA ram_btn_hold
                                        AND #con_btn_Select
                                        STA ram_флаг_всех_персов_в_story
C - - - - - 0x03F441 0F:F431: A9 29     LDA #$29    ; con_075C_29
C - - - - - 0x03F443 0F:F433: 85 98     STA ram_0098_flag
C - - - - - 0x03F445 0F:F435: 20 90 F6  JSR sub_F690_записать_звук_сохранив_X_Y
C - - - - - 0x03F448 0F:F438: A9 80     LDA #$80
C - - - - - 0x03F44A 0F:F43A: 85 9C     STA ram_009C_таймер_экрана_lo
C - - - - - 0x03F44C 0F:F43C: 0A        LDA #$00
C - - - - - 0x03F44D 0F:F43D: 8D 11 01  STA ram_0111
C - - - - - 0x03F450 0F:F440: 8D 12 01  STA ram_0112
C - - - - - 0x03F453 0F:F443: E6 21     INC ram_script_draw_lo  ; 02 -> 03
sub_F445:
C - - - - - 0x03F455 0F:F445: A9 50     LDA #$50
C - - - - - 0x03F457 0F:F447: 8D 40 04  STA ram_obj_pos_X_lo
C - - - - - 0x03F45A 0F:F44A: A5 22     LDA ram_счетчик_кадров
C - - - - - 0x03F45C 0F:F44C: 29 0C     AND #$0C
C - - - - - 0x03F45E 0F:F44E: 4A        LSR
C - - - - - 0x03F45F 0F:F44F: 4A        LSR
C - - - - - 0x03F460 0F:F450: 69 55     ADC #$55
C - - - - - 0x03F462 0F:F452: 8D 00 04  STA ram_obj_anim_id
C - - - - - 0x03F465 0F:F455: A6 27     LDX ram_позиция_курсора_в_главном_меню
C - - - - - 0x03F467 0F:F457: BD A6 F4  LDA tbl_F4A6_позиция_курсора_Y,X
C - - - - - 0x03F46A 0F:F45A: 8D 10 04  STA ram_obj_pos_Y_lo
bra_F45D_RTS:
C - - - - - 0x03F46D 0F:F45D: 60        RTS



ofs_главное_меню_F461_03:
; X свободен
C - - - - - 0x03F471 0F:F461: A5 9C     LDA ram_009C_таймер_экрана_lo
C - - - - - 0x03F473 0F:F463: 29 08     AND #$08
C - - - - - 0x03F475 0F:F465: 0A        ASL
C - - - - - 0x03F476 0F:F466: 0A        ASL
C - - - - - 0x03F477 0F:F467: 0A        ASL
C - - - - - 0x03F478 0F:F468: 0A        ASL
C - - - - - 0x03F479 0F:F469: 65 27     ADC ram_позиция_курсора_в_главном_меню
; con_print_story
; con_print_vs_player
; con_print_vs_cpu
; con_print_vs_team
; con_print_tournament
; con_print_option
; возможен индекс +80
C - - - - - 0x03F47B 0F:F46B: 20 E5 F6  JSR sub_F6E5_написать_текст_на_экране
C - - - - - 0x03F47E 0F:F46E: C6 9C     DEC ram_009C_таймер_экрана_lo
C - - - - - 0x03F480 0F:F470: D0 EB     BNE bra_F45D_RTS
C - - - - - 0x03F482 0F:F472: E6 21     INC ram_script_draw_lo  ; 03 -> 04
C - - - - - 0x03F484 0F:F474: A9 00     LDA #$00
C - - - - - 0x03F486 0F:F476: 85 A2     STA ram_plr_id
C - - - - - 0x03F488 0F:F478: 85 A3     STA ram_plr_id + $01
C - - - - - 0x03F48A 0F:F47A: 4C 2E E1  JMP loc_E12E_подготовить_затемнение_из_цветного_в_черный



ofs_главное_меню_F480_04:
; X свободен
C - - - - - 0x03F490 0F:F480: E6 21     INC ram_script_draw_lo  ; 04 -> 05
; отключить рендеринг экрана
C - - - - - 0x03F492 0F:F482: A5 FE     LDA ram_for_2001
C - - - - - 0x03F494 0F:F484: 29 E7     AND #$E7
C - - - - - 0x03F496 0F:F486: 85 FE     STA ram_for_2001
C - - - - - 0x03F498 0F:F488: 60        RTS



ofs_главное_меню_F489_05:
; X свободен
; включить рендеринг экрана
C - - - - - 0x03F499 0F:F489: A5 FE     LDA ram_for_2001
C - - - - - 0x03F49B 0F:F48B: 09 18     ORA #$18
C - - - - - 0x03F49D 0F:F48D: 85 FE     STA ram_for_2001
C - - - - - 0x03F49F 0F:F48F: A5 27     LDA ram_позиция_курсора_в_главном_меню
C - - - - - 0x03F4A1 0F:F491: 85 2C     STA ram_game_mode
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
; con_gm_tournament
; con_gm_options
C - - - - - 0x03F4A3 0F:F493: C9 04     CMP #$04
C - - - - - 0x03F4A5 0F:F495: F0 05     BEQ bra_F49C    ; if con_gm_tournament
C - - - - - 0x03F4A7 0F:F497: 90 06     BCC bra_F49F
; if con_gm_options
C - - - - - 0x03F4A9 0F:F499: A9 07     LDA #con_script_draw_options
C - - - - - 0x03F4AB 0F:F49B: 2C        .byte $2C   ; BIT
bra_F49C:
; if con_gm_tournament
C - - - - - 0x03F4AC 0F:F49C: A9 08     LDA #con_script_draw_tournament_1
C - - - - - 0x03F4AE 0F:F49E: 2C        .byte $2C   ; BIT
bra_F49F:
; con_gm_story
; con_gm_vs_player
; con_gm_vs_cpu
; con_gm_vs_team
C - - - - - 0x03F4AF 0F:F49F: A9 02     LDA #con_script_draw_очистка_1
C - - - - - 0x03F4B1 0F:F4A1: 4C AE F5  JMP loc_F5AE_подготовить_новый_скрипт



tbl_F4A6_позиция_курсора_Y:
- D 3 - - - 0x03F4B6 0F:F4A6: 83        .byte $83   ; 00
- D 3 - - - 0x03F4B7 0F:F4A7: 93        .byte $93   ; 01
- D 3 - - - 0x03F4B8 0F:F4A8: A3        .byte $A3   ; 02
- D 3 - - - 0x03F4B9 0F:F4A9: B3        .byte $B3   ; 03
- D 3 - - - 0x03F4BA 0F:F4AA: C3        .byte $C3   ; 04
- D 3 - - - 0x03F4BB 0F:F4AB: D3        .byte $D3   ; 05



ofs_000_F4AC_01_демонстрационный_бой:
C - - J - - 0x03F4BC 0F:F4AC: A6 21     LDX ram_script_draw_lo
C - - - - - 0x03F4BE 0F:F4AE: D0 09     BNE bra_F4B9
C - - - - - 0x03F4C0 0F:F4B0: E6 21     INC ram_script_draw_lo
C - - - - - 0x03F4C2 0F:F4B2: A0 04     LDY #$04
C - - - - - 0x03F4C4 0F:F4B4: 84 26     STY ram_0026_flag
C - - - - - 0x03F4C6 0F:F4B6: 4C C6 F5  JMP loc_F5C6_записать_таймер_экрана_0400
bra_F4B9:
C - - - - - 0x03F4C9 0F:F4B9: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03F4CB 0F:F4BB: 29 30     AND #con_btns_SS
C - - - - - 0x03F4CD 0F:F4BD: D0 10     BNE bra_F4CF
C - - - - - 0x03F4CF 0F:F4BF: 20 79 D2  JSR sub_D279
C - - - - - 0x03F4D2 0F:F4C2: 20 B3 F5  JSR sub_F5B3_проверить_и_уменьшить_16битный_таймер_экрана
C - - - - - 0x03F4D5 0F:F4C5: D0 96     BNE bra_F45D_RTS
; if таймер закончился
C - - - - - 0x03F4D7 0F:F4C7: A9 0C     LDA #con_script_draw_topscore
C - - - - - 0x03F4D9 0F:F4C9: 20 DB F4  JSR sub_F5AE_подготовить_новый_скрипт
                                        JSR sub_F6C2_выключить_музыку_и_звуки
C - - - - - 0x03F4DC 0F:F4CC: 4C 2E E1  JMP loc_E12E_подготовить_затемнение_из_цветного_в_черный
bra_F4CF:
                                        LDA ram_0095_стадия_игры
                                        CMP #con_0095_vs_экран
                                        BNE bra_F4D0
                                        JSR sub_E383_зафиксировать_pos_X_спрайтов
bra_F4D0:
- - - - - - 0x03F4DF 0F:F4CF: 20 3E E1  JMP loc_FE58_отрисовка_экрана_главное_меню



ofs_000_F4E5_02_очистка_1:
C - - J - - 0x03F4F5 0F:F4E5: 20 42 F0  JSR sub_F042_отрисовать_пустой_экран
C - - - - - 0x03F4F8 0F:F4E8: 20 88 FB  JSR sub_FB88_disable_irq
C - - - - - 0x03F4FB 0F:F4EB: 20 09 D0  JSR sub_D009_очистить_оперативку_1
C - - - - - 0x03F4FE 0F:F4EE: E6 98     INC ram_0098_flag
C - - - - - 0x03F500 0F:F4F0: A9 00     LDA #$00
C - - - - - 0x03F502 0F:F4F2: 85 26     STA ram_0026_flag
                                        LDA #con_script_draw_очистка_2
C - - - - - 0x03F504 0F:F4F4: 20 08 D0  JMP loc_F5AE_подготовить_новый_скрипт



ofs_000_F4FA_03_очистка_2:
C - - J - - 0x03F50A 0F:F4FA: A9 00     LDA #$00
C - - - - - 0x03F50C 0F:F4FC: 85 94     STA ram_0094_скрипт
C - - - - - 0x03F50E 0F:F4FE: 20 0D D0  JSR sub_D00D_очистить_оперативку_2
C - - - - - 0x03F511 0F:F501: A9 00     LDA #$00
C - - - - - 0x03F513 0F:F503: 85 A0     STA ram_strength
C - - - - - 0x03F515 0F:F505: 85 A1     STA ram_strength + $01
                                        LDA ram_game_mode
                                        EOR #$01
                                        BNE bra_F506
                                        LDA ram_option_misc
                                        AND #$08
                                        BEQ bra_F506
                                        INC ram_strength  ; 01
bra_F506:
                                        LDA #con_script_draw_04
C - - - - - 0x03F517 0F:F507: F0 EE     JMP loc_F5AE_подготовить_новый_скрипт



ofs_000_F509_05_konami:
C - - J - - 0x03F519 0F:F509: A5 90     LDA ram_sum_btn_press
C - - - - - 0x03F51B 0F:F50B: 29 30     AND #con_btns_SS
C - - - - - 0x03F51D 0F:F50D: D0 55     BEQ bra_F50F
; if досрочный пропуск лого konami
C - - - - - 0x03F57C 0F:F56C: 4C 3E E1  JMP loc_FE58_отрисовка_экрана_главное_меню
bra_F50F:
C - - - - - 0x03F51F 0F:F50F: A6 21     LDX ram_script_draw_lo
C - - - - - 0x03F521 0F:F511: D0 2B     BNE bra_F53E
; 00
C - - - - - 0x03F523 0F:F513: 20 88 FB  JSR sub_FB88_disable_irq
C - - - - - 0x03F526 0F:F516: 20 09 D0  JSR sub_D009_очистить_оперативку_1
C - - - - - 0x03F529 0F:F519: 20 42 F0  JSR sub_F042_отрисовать_пустой_экран
C - - - - - 0x03F52C 0F:F51C: A2 04     LDX #con_screen_konami
C - - - - - 0x03F52E 0F:F51E: 20 44 F0  JSR sub_F044_отрисовать_экран
C - - - - - 0x03F531 0F:F521: A9 00     LDA #con_D57A_00
C - - - - - 0x03F533 0F:F523: 20 B0 D3  JSR sub_D3B0_записать_палитру_для_фона
C - - - - - 0x03F536 0F:F526: 20 90 FC  JSR sub_FC90_set_mirroring_H
C - - - - - 0x03F539 0F:F529: 20 90 FC  JSR sub_FC90_set_mirroring_H
C - - - - - 0x03F53C 0F:F52C: A9 78     LDA #con_chr_bank_bg + $78
C - - - - - 0x03F53E 0F:F52E: 85 32     STA ram_chr_bank_bg
C - - - - - 0x03F540 0F:F530: 85 33     STA ram_chr_bank_bg + $01
C - - - - - 0x03F542 0F:F532: A5 FF     LDA ram_for_2000
C - - - - - 0x03F544 0F:F534: 09 02     ORA #$02
C - - - - - 0x03F546 0F:F536: 85 FF     STA ram_for_2000
bra_F538:
C D 3 - - - 0x03F548 0F:F538: 20 C4 F5  JSR sub_F5C4_записать_таймер_экрана_0100
C - - - - - 0x03F54B 0F:F53B: E6 21     INC ram_script_draw_lo
C - - - - - 0x03F54D 0F:F53D: 60        RTS
bra_F53E:
C - - - - - 0x03F54E 0F:F53E: CA        DEX
C - - - - - 0x03F54F 0F:F53F: D0 0C     BNE bra_F54D
; 01
C - - - - - 0x03F551 0F:F541: A5 FC     LDA ram_scroll_Y
C - - - - - 0x03F553 0F:F543: 18        CLC
C - - - - - 0x03F554 0F:F544: 69 02     ADC #$02
C - - - - - 0x03F556 0F:F546: 85 FC     STA ram_scroll_Y
C - - - - - 0x03F558 0F:F548: C9 E0     CMP #$E0
C - - - - - 0x03F55A 0F:F54A: B0 EC     BCS bra_F538
bra_F54C_RTS:
C - - - - - 0x03F55C 0F:F54C: 60        RTS
bra_F54D:
; 02
C - - - - - 0x03F55D 0F:F54D: 20 B3 F5  JSR sub_F5B3_проверить_и_уменьшить_16битный_таймер_экрана
C - - - - - 0x03F560 0F:F550: D0 FA     BNE bra_F54C_RTS
; if таймер закончился
C - - - - - 0x03F562 0F:F552: A9 00     LDA #$00
C - - - - - 0x03F564 0F:F554: 85 94     STA ram_0094_скрипт
C - - - - - 0x03F566 0F:F556: 20 8C FC  JSR sub_FC8C_set_mirroring_V
C - - - - - 0x03F569 0F:F559: A5 FF     LDA ram_for_2000
C - - - - - 0x03F56B 0F:F55B: 29 FC     AND #$FC
C - - - - - 0x03F56D 0F:F55D: 85 FF     STA ram_for_2000
C - - - - - 0x03F56F 0F:F55F: A9 0A     LDA #con_script_draw_opening
C - - - - - 0x03F571 0F:F561: 4C AE F5  JMP loc_F5AE_подготовить_новый_скрипт



ofs_000_F56F_06_копирайты:
C - - J - - 0x03F57F 0F:F56F: A6 21     LDX ram_script_draw_lo
C - - - - - 0x03F581 0F:F571: D0 1D     BNE bra_F590
C - - - - - 0x03F583 0F:F573: 20 09 D0  JSR sub_D009_очистить_оперативку_1
C - - - - - 0x03F586 0F:F576: A2 06     LDX #con_screen_копирайты
C - - - - - 0x03F588 0F:F578: 20 44 F0  JSR sub_F044_отрисовать_экран
C - - - - - 0x03F58B 0F:F57B: A9 00     LDA #con_D57A_00
C - - - - - 0x03F58D 0F:F57D: 20 B0 D3  JSR sub_D3B0_записать_палитру_для_фона
C - - - - - 0x03F590 0F:F580: A5 FF     LDA ram_for_2000
C - - - - - 0x03F592 0F:F582: 29 FC     AND #$FC
C - - - - - 0x03F594 0F:F584: 85 FF     STA ram_for_2000
C - - - - - 0x03F596 0F:F586: A9 7C     LDA #con_chr_bank_bg + $7C
C - - - - - 0x03F598 0F:F588: 85 32     STA ram_chr_bank_bg
C - - - - - 0x03F59A 0F:F58A: A9 7E     LDA #con_chr_bank_bg + $7E
C - - - - - 0x03F59C 0F:F58C: 85 33     STA ram_chr_bank_bg + $01
C - - - - - 0x03F59E 0F:F58E: D0 A8     BNE bra_F538    ; jmp
bra_F590:
C - - - - - 0x03F5A0 0F:F590: 20 B3 F5  JSR sub_F5B3_проверить_и_уменьшить_16битный_таймер_экрана
C - - - - - 0x03F5A3 0F:F593: D0 B7     BNE bra_F54C_RTS
; if таймер закончился
C - - - - - 0x03F5A5 0F:F595: A9 05     LDA #con_script_draw_konami
C - - - - - 0x03F5A7 0F:F597: 4C AE F5  JMP loc_F5AE_подготовить_новый_скрипт



ofs_000_F59A_08_tournament_1:
C - - J - - 0x03F5AA 0F:F59A: A9 00     LDA #$00
C - - - - - 0x03F5AC 0F:F59C: 8D 75 06  STA ram_0675
C - - - - - 0x03F5AF 0F:F59F: E6 20     INC ram_script_draw_hi    ; con_script_draw_tournament_2
C - - - - - 0x03F5B1 0F:F5A1: 4C 88 FB  JMP loc_FB88_disable_irq



loc_F5AE_подготовить_новый_скрипт:
sub_F5AE_подготовить_новый_скрипт:
sub_0x03F5BE_подготовить_новый_скрипт:
loc_0x03F5BE_подготовить_новый_скрипт:
C D 3 - - - 0x03F5BE 0F:F5AE: 85 20     STA ram_script_draw_hi
C - - - - - 0x03F5C0 0F:F5B0: 4C A9 F5  LDA #$00
                                        STA ram_script_draw_lo
                                        RTS



sub_F5B3_проверить_и_уменьшить_16битный_таймер_экрана:
; на выходе A
    ; 00 = таймер закончился
    ; 01 = таймер еще не закончился
C - - - - - 0x03F5C3 0F:F5B3: A5 9C     LDA ram_009C_таймер_экрана_lo
C - - - - - 0x03F5C5 0F:F5B5: 05 9F     ORA ram_009F_таймер_экрана_hi
C - - - - - 0x03F5C7 0F:F5B7: F0 0A     BEQ bra_F5C3_RTS
; можно было бы оптимизировать как DEC lo + BNE + DEC hi,
; но оригинальный формат гарантирует 00 для hi в случае если таймер закончился,
; тогда не нужно постоянно записывать hi если требуется таймер < 0100
C - - - - - 0x03F5C9 0F:F5B9: A5 9C     LDA ram_009C_таймер_экрана_lo
C - - - - - 0x03F5CB 0F:F5BB: D0 02     BNE bra_F5BF
C - - - - - 0x03F5CD 0F:F5BD: C6 9F     DEC ram_009F_таймер_экрана_hi
bra_F5BF:
C - - - - - 0x03F5CF 0F:F5BF: C6 9C     DEC ram_009C_таймер_экрана_lo
C - - - - - 0x03F5D1 0F:F5C1: A9 01     LDA #$01
bra_F5C3_RTS:   ; A = 00
C - - - - - 0x03F5D3 0F:F5C3: 60        RTS



sub_F5C4_записать_таймер_экрана_0100:
C - - - - - 0x03F5D4 0F:F5C4: A0 01     LDY #$01
loc_F5C6_записать_таймер_экрана_0400:   ; Y = 04
C D 3 - - - 0x03F5D6 0F:F5C6: A9 00     LDA #$00
C - - - - - 0x03F5D8 0F:F5C8: 85 9C     STA ram_009C_таймер_экрана_lo
C - - - - - 0x03F5DA 0F:F5CA: 84 9F     STY ram_009F_таймер_экрана_hi
C D 3 - - - 0x03F5DC 0F:F5CC: 60        RTS



sub_F5DF_swap_prg_08:
                                        LDA #con_prg_bank + $08
                                        BNE bra_F5F9    ; jmp



sub_F5DF_swap_prg_10:
                                        LDA #con_prg_bank + $10
                                        BNE bra_F5F9    ; jmp



sub_F5DF_swap_prg_12:
C - - - - - 0x03F5EF 0F:F5DF: A9 32     LDA #con_prg_bank + $12
C - - - - - 0x03F5F1 0F:F5E1: D0 16     BNE bra_F5F9    ; jmp



sub_F5E3_swap_prg_14:
C - - - - - 0x03F5F3 0F:F5E3: A9 34     LDA #con_prg_bank + $14
C - - - - - 0x03F5F5 0F:F5E5: D0 12     BNE bra_F5F9    ; jmp



sub_F5E7_swap_prg_16:
loc_0x03F5F7_swap_prg_16:
C D 3 - - - 0x03F5F7 0F:F5E7: A9 36     LDA #con_prg_bank + $16
C - - - - - 0x03F5F9 0F:F5E9: D0 0E     BNE bra_F5F9    ; jmp



sub_F5EB_swap_prg_18:
C - - - - - 0x03F5FB 0F:F5EB: A9 38     LDA #con_prg_bank + $18
C - - - - - 0x03F5FD 0F:F5ED: D0 0A     BNE bra_F5F9    ; jmp



sub_F5EF_swap_prg_1A:
C - - - - - 0x03F5FF 0F:F5EF: A9 3A     LDA #con_prg_bank + $1A
C - - - - - 0x03F601 0F:F5F1: D0 06     BNE bra_F5F9    ; jmp



sub_F5F3_swap_prg_1C:
C - - - - - 0x03F603 0F:F5F3: A9 3C     LDA #con_prg_bank + $1C
C - - - - - 0x03F605 0F:F5F5: D0 02     BNE bra_F5F9    ; jmp



sub_F600_swap_prg_16_no_return:
; bzk optimize, прыжок на 0x03F5F7 (а может не надо, раз 3 команды в 0x03F609 не выполняются)
                                        LDA #con_prg_bank + $16
                                        BNE bra_F600    ; jmp



bra_F5F9:
sub_F5F9_swap_prg_A_id:
C - - - - - 0x03F609 0F:F5F9: E6 3D     INC ram_003D
C - - - - - 0x03F60B 0F:F5FB: A4 3D     LDY ram_003D
C - - - - - 0x03F60D 0F:F5FD: 99 3E 00  STA ram_003E,Y ; 003F 0040 0041 
bra_F600:
C - - - - - 0x03F610 0F:F600: A0 06     LDY #$06
C - - - - - 0x03F612 0F:F602: 84 42     STY ram_copy_8000
C - - - - - 0x03F614 0F:F604: 8C 00 80  STY $8000
C - - - - - 0x03F617 0F:F607: 8D 01 80  STA $8001
C - - - - - 0x03F61A 0F:F60A: C8        INY ; 07
C - - - - - 0x03F61B 0F:F60B: 18        CLC
C - - - - - 0x03F61C 0F:F60C: 69 01     ADC #$01
C - - - - - 0x03F61E 0F:F60E: 84 42     STY ram_copy_8000
C - - - - - 0x03F620 0F:F610: 8C 00 80  STY $8000
C - - - - - 0x03F623 0F:F613: 8D 01 80  STA $8001
C - - - - - 0x03F626 0F:F616: 60        RTS



sub_F617_restore_prg:
loc_F617_restore_prg:
loc_0x03F627_restore_prg:
C D 3 - - - 0x03F627 0F:F617: C6 3D     DEC ram_003D
C - - - - - 0x03F629 0F:F619: A4 3D     LDY ram_003D
C - - - - - 0x03F62B 0F:F61B: B9 3E 00  LDA ram_003E,Y ; 003E 003F 0040 
C - - - - - 0x03F62E 0F:F61E: 10 E0     BPL bra_F600    ; jmp



sub_F620_запись_chr_банков:
C - - - - - 0x03F630 0F:F620: A5 23     LDA ram_nmi_flag
C - - - - - 0x03F634 0F:F624: D0 10     BNE bra_F636
C - - - - - 0x03F636 0F:F626: A5 34     LDA ram_chr_bank_spr
C - - - - - 0x03F638 0F:F628: 85 38     STA ram_copy_chr_bank_spr
C - - - - - 0x03F63A 0F:F62A: A5 35     LDA ram_chr_bank_spr + $01
C - - - - - 0x03F63C 0F:F62C: 85 39     STA ram_copy_chr_bank_spr + $01
C - - - - - 0x03F63E 0F:F62E: A5 36     LDA ram_chr_bank_spr + $02
C - - - - - 0x03F640 0F:F630: 85 3A     STA ram_copy_chr_bank_spr + $02
C - - - - - 0x03F642 0F:F632: A5 37     LDA ram_chr_bank_spr + $03
C - - - - - 0x03F644 0F:F634: 85 3B     STA ram_copy_chr_bank_spr + $03
bra_F636:
C - - - - - 0x03F646 0F:F636: A5 32     LDA ram_chr_bank_bg
C - - - - - 0x03F648 0F:F638: A2 00     LDX #$00
C - - - - - 0x03F64A 0F:F63A: 8E 00 80  STX $8000
C - - - - - 0x03F64D 0F:F63D: 8D 01 80  STA $8001
C - - - - - 0x03F650 0F:F640: E8        INX ; 01
C - - - - - 0x03F651 0F:F641: A5 33     LDA ram_chr_bank_bg + $01
C - - - - - 0x03F653 0F:F643: 8E 00 80  STX $8000
C - - - - - 0x03F656 0F:F646: 8D 01 80  STA $8001
C - - - - - 0x03F659 0F:F649: E8        INX ; 02
C - - - - - 0x03F65A 0F:F64A: A0 03     LDY #$03
bra_F64C_loop:
C - - - - - 0x03F65C 0F:F64C: B5 36     LDA ram_copy_chr_bank_spr - $02,X
C - - - - - 0x03F65E 0F:F64E: 8E 00 80  STX $8000
C - - - - - 0x03F661 0F:F651: 8D 01 80  STA $8001
C - - - - - 0x03F664 0F:F654: E8        INX
C - - - - - 0x03F665 0F:F655: 88        DEY
C - - - - - 0x03F666 0F:F656: 10 F4     BPL bra_F64C_loop
C - - - - - 0x03F668 0F:F658: 60        RTS



sub_F68B_выключить_звуки_и_записать_новый:
loc_F68B_выключить_звуки_и_записать_новый:
sub_0x03F69B_выключить_звуки_и_записать_новый:
loc_0x03F69B_выключить_звуки_и_записать_новый:
                                        STY ram_global_obj_index
                                        STX ram_local_obj_index
                                        PHA
                                        JSR sub_F6A8_добавить_выключение_музыки_и_звуков_в_очередь
                                        PLA
                                        JMP loc_F694_записать_звук



loc_F690_записать_звук_сохранив_X_Y:
sub_F690_записать_звук_сохранив_X_Y:
sub_0x03F6A0_записать_звук_сохранив_X_Y:
loc_0x03F6A0_записать_звук_сохранив_X_Y:
C D 3 - - - 0x03F6A0 0F:F690: 84 A9     STY ram_global_obj_index
C - - - - - 0x03F6A2 0F:F692: 86 A8     STX ram_local_obj_index
loc_F694_записать_звук:
sub_0x03F6A4_записать_звук:
loc_0x03F6A4_записать_звук:
                                        JSR sub_F6A8_добавить_звук_в_очередь
                                        LDX ram_local_obj_index
                                        LDY ram_global_obj_index
                                        RTS



sub_F6C2_выключить_музыку_и_звуки:
sub_0x03F6D2_выключить_музыку_и_звуки:
C D 3 - - - 0x03F6D2 0F:F6C2: 84 A9     STY ram_global_obj_index
C - - - - - 0x03F6D8 0F:F6C8: 86 A8     STX ram_local_obj_index
C - - - - - 0x03F6DA 0F:F6CA: 20 69 F6  JSR sub_F6A8_добавить_выключение_музыки_и_звуков_в_очередь
                                        LDX ram_local_obj_index
                                        LDY ram_global_obj_index
                                        RTS



sub_F6A8_добавить_выключение_музыки_и_звуков_в_очередь:
                                        LDA #con_music_sfx_off
sub_F6A8_добавить_звук_в_очередь:
                                        LDX ram_индекс_очереди_звуков
                                        CPX #$05
                                        BCS bra_F6D2_RTS
                                        STA ram_очередь_звуков,X
                                        INC ram_индекс_очереди_звуков
bra_F6D2_RTS:
                                        RTS



sub_F6D3_спрайтовый_движок:
C - - - - - 0x03F6E3 0F:F6D3: 20 E3 F5  JSR sub_F5E3_swap_prg_14
C - - - - - 0x03F6E6 0F:F6D6: 20 1F D7  JSR sub_D71F_спрайтовый_движок
C - - - - - 0x03F6E9 0F:F6D9: 4C 17 F6  JMP loc_F617_restore_prg



ofs_000_F6DC_07_options:
C - - J - - 0x03F6EC 0F:F6DC: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F6EF 0F:F6DF: 20 01 80  JSR sub_0x038011_обработчик_экрана_с_опциями
C - - - - - 0x03F6F2 0F:F6E2: 4C 17 F6  JMP loc_F617_restore_prg



sub_F6E5_написать_текст_на_экране:
sub_0x03F6F5_написать_текст_на_экране:
loc_0x03F6F5_написать_текст_на_экране:
C D 3 - - - 0x03F6F5 0F:F6E5: 48        PHA
C - - - - - 0x03F6F6 0F:F6E6: 20 EB F5  JSR sub_F5EB_swap_prg_18
C - - - - - 0x03F6F9 0F:F6E9: 68        PLA
C - - - - - 0x03F6FA 0F:F6EA: 20 76 80  JSR sub_0x030086_написать_текст_на_экране
C - - - - - 0x03F6FD 0F:F6ED: 4C 17 F6  JMP loc_F617_restore_prg



sub_F6F9:
C - - - - - 0x03F709 0F:F6F9: 20 E7 F5  JSR sub_F5E7_swap_prg_16
C - - - - - 0x03F70C 0F:F6FC: 20 CE 80  JSR sub_0x02C0DE
C - - - - - 0x03F70F 0F:F6FF: 4C 17 F6  JMP loc_F617_restore_prg



sub_F702_запись_буферов_в_ppu:
; перемещено из банка 18
                                        BIT $2002
C D 0 - - - 0x030016 0C:8006: A0 00     LDY #$00
loc_8008_main_loop:
C - - - - - 0x030018 0C:8008: BE 00 03  LDX ram_ppu_buffer,Y
C - - - - - 0x03001B 0C:800B: F0 28     BEQ bra_8035_00
C - - - - - 0x03001D 0C:800D: A5 FF     LDA ram_for_2000
C - - - - - 0x03001F 0C:800F: 29 18     AND #$18
C - - - - - 0x030021 0C:8011: 1D 00 80  ORA tbl_8001 - $01,X
C - - - - - 0x030024 0C:8014: 8D 00 20  STA $2000
                                        LDA tbl_8009_lo - $01,X
                                        STA ram_0002
                                        LDA tbl_800A_hi - $01,X
                                        STA ram_0003
C - - - - - 0x03002B 0C:801B: B9 01 03  LDA ram_ppu_buffer + $02,Y
C - - - - - 0x03002E 0C:801E: 8D 06 20  STA $2006
C - - - - - 0x030031 0C:8021: B9 00 03  LDA ram_ppu_buffer + $01,Y
C - - - - - 0x030034 0C:8024: 8D 06 20  STA $2006
C - - - - - 0x030037 0C:8027: C8        INY
C - - - - - 0x030038 0C:8028: C8        INY
                                        INY
                                        JMP (ram_0002)
bra_8035_00:
; X = 00
; выключить буфер и обнулить индекс
C - - - - - 0x030047 0C:8037: 8D 00 03  STX ram_ppu_buffer
C - - - - - 0x03004A 0C:803A: 85 25     STX ram_index_ppu_buffer
C - - - - - 0x03004C 0C:803C: 60        RTS



tbl_8001:
- D 0 - - - 0x030011 0C:8001: 00        .byte $00   ; 01 +01
- D 0 - - - 0x030012 0C:8002: 04        .byte $04   ; 02 +32
- D 0 - - - 0x030013 0C:8003: 00        .byte $00   ; 03 +01
- D 0 - - - 0x030014 0C:8004: 00        .byte $00   ; 04 +01
- D 0 - - - 0x030015 0C:8005: 04        .byte $04   ; 05 +32



tbl_8009_lo:
    .byte < ofs_067_800A_buf_mode_01
    .byte < ofs_067_800A_buf_mode_02
    .byte < ofs_067_800A_buf_mode_03
    .byte < ofs_067_800A_buf_mode_04
    .byte < ofs_067_800A_buf_mode_05

tbl_800A_hi:
    .byte > ofs_067_800A_buf_mode_01
    .byte > ofs_067_800A_buf_mode_02
    .byte > ofs_067_800A_buf_mode_03
    .byte > ofs_067_800A_buf_mode_04
    .byte > ofs_067_800A_buf_mode_05



bra_803E_loop:
                                        STA $2007
ofs_067_800A_buf_mode_01:
; записать список байтов, FF = end token, +01
ofs_067_800A_buf_mode_02:
; записать список байтов, FF = end token, +32
                                        LDA ram_ppu_buffer,Y
                                        INY
                                        CMP #$FF
                                        BNE bra_803E_loop
                                        JMP loc_8008_main_loop



ofs_067_800A_buf_mode_03:
; счетчик + запись байта N раз, +01
ofs_067_800A_buf_mode_05:
; счетчик + запись байта N раз, +32
                                        LDX ram_ppu_buffer,Y
                                        INY
                                        LDA ram_ppu_buffer,Y
                                        INY
bra_805B_loop:
                                        STA $2007
                                        DEX
                                        BNE bra_805B_loop
                                        JMP loc_8008_main_loop



ofs_067_800A_buf_mode_04:
; счетчик + запись байта N раз с постоянным его увеличением, +01
                                        LDX ram_ppu_buffer,Y
                                        INY
                                        LDA ram_ppu_buffer,Y
                                        INY
                                        CLC
bra_806C_loop:
                                        STA $2007
                                        ADC #$01
                                        DEX
                                        BNE bra_806C_loop
                                        JMP loc_8008_main_loop



sub_F70B_обработчик_ai:
C - - - - - 0x03F71B 0F:F70B: 20 EF F5  JSR sub_F5EF_swap_prg_1A
C - - - - - 0x03F71E 0F:F70E: 20 01 80  JSR sub_0x034011_обработчик_ai
C - - - - - 0x03F721 0F:F711: 4C 17 F6  JMP loc_F617_restore_prg



sub_0x03F723_отрисовка_финальной_стойки:
                                        JSR sub_F5DF_swap_prg_12
                                        JSR sub_0x02438E_анимация_стойки
                                        JMP loc_F715



sub_F714_смена_тайловых_наборов_для_анимаций:
loc_F714_смена_тайловых_наборов_для_анимаций:
sub_0x03F724_смена_тайловых_наборов_для_анимаций:
loc_0x03F724_смена_тайловых_наборов_для_анимаций:
C D 3 - - - 0x03F724 0F:F714: 20 DF F5  JSR sub_F5DF_swap_prg_12
loc_F715:
C - - - - - 0x03F727 0F:F717: 20 42 B1  JSR sub_0x027152
C - - - - - 0x03F72A 0F:F71A: 4C 17 F6  JMP loc_F617_restore_prg



ofs_000_F5A4_09_tournament_2:
C D 3 - - - 0x03F72D 0F:F71D: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F730 0F:F720: 20 7B 8C  JSR sub_0x038C8B_обработчик_экрана_с_клавиатурой
C - - - - - 0x03F733 0F:F723: 4C 17 F6  JMP loc_F617_restore_prg



sub_F726_отрисовать_турнирную_сетку:
C - - - - - 0x03F736 0F:F726: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F739 0F:F729: 20 BB 82  JSR sub_0x0382CB_отрисовать_турнирную_сетку
C - - - - - 0x03F73C 0F:F72C: 4C 17 F6  JMP loc_F617_restore_prg



ofs_001_F73F_0E_обработка_экрана_continue:
C - - J - - 0x03F74F 0F:F73F: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F752 0F:F742: 20 D6 85  JSR sub_0x0385E6_обработка_экрана_continue
C - - - - - 0x03F755 0F:F745: 4C 17 F6  JMP loc_F617_restore_prg



ofs_002_F748_03_обработка_экрана_с_выбором_арены:
C - - J - - 0x03F758 0F:F748: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F75B 0F:F74B: 20 90 88  JSR sub_0x0388A0_обработка_экрана_с_выбором_арены
C - - - - - 0x03F75E 0F:F74E: 4C 17 F6  JMP loc_F617_restore_prg



loc_F751:
sub_F751:
C D 3 - - - 0x03F761 0F:F751: 20 DF F5  JSR sub_F5DF_swap_prg_12
C - - - - - 0x03F764 0F:F754: 20 51 BB  JSR sub_0x027B61
C - - - - - 0x03F767 0F:F757: 4C 17 F6  JMP loc_F617_restore_prg



sub_0x03F76A:
C - - - - - 0x03F76B 0F:F75B: 20 DF F5  JSR sub_F5DF_swap_prg_12
C - - - - - 0x03F76E 0F:F75E: 68        LDA ram_0671
C - - - - - 0x03F76F 0F:F75F: 20 B3 B0  JSR sub_0x0270C3_добавить_очки_игроку
C - - - - - 0x03F772 0F:F762: 20 F6 AF  JSR sub_0x027006_отрисовать_инфу_в_статусбаре
C - - - - - 0x03F775 0F:F765: 4C 17 F6  JMP loc_F617_restore_prg



sub_F775_вычислить_расстояние_между_персами:
sub_0x03F785_вычислить_расстояние_между_персами:
C - - - - - 0x03F785 0F:F775: A0 00     LDY #$00
C - - - - - 0x03F787 0F:F777: A2 01     LDX #$01
C - - - - - 0x03F789 0F:F779: 20 0C D2  JSR sub_D20C_получить_разницу_pos_X_двух_объектов
C - - - - - 0x03F78C 0F:F77C: AC 70 05  LDY ram_0570_obj
C - - - - - 0x03F78F 0F:F77F: 38        SEC
C - - - - - 0x03F790 0F:F780: F9 4C AD  SBC tbl_0x026D5C_хитбокс,Y
C - - - - - 0x03F793 0F:F783: 90 09     BCC bra_F78E
C - - - - - 0x03F795 0F:F785: AC 71 05  LDY ram_0570_obj + $01
C - - - - - 0x03F798 0F:F788: 38        SEC
C - - - - - 0x03F799 0F:F789: F9 4C AD  SBC tbl_0x026D5C_хитбокс,Y
C - - - - - 0x03F79C 0F:F78C: B0 02     BCS bra_F790
bra_F78E:
C - - - - - 0x03F79E 0F:F78E: A9 00     LDA #$00
bra_F790:
C - - - - - 0x03F7A0 0F:F790: 8D 38 06  STA ram_расстояние_между_персами
C - - - - - 0x03F7A3 0F:F793: 60        RTS



loc_F794:
C D 3 - - - 0x03F7A4 0F:F794: 20 DF F5  JSR sub_F5DF_swap_prg_12
C - - - - - 0x03F7A7 0F:F797: 20 1F FD  JSR sub_FD1F
C - - - - - 0x03F7AA 0F:F79A: 4C 17 F6  JMP loc_F617_restore_prg



sub_F79D:
C - - - - - 0x03F7AD 0F:F79D: 20 DF F5  JSR sub_F5DF_swap_prg_12
C - - - - - 0x03F7B0 0F:F7A0: 20 B7 BB  JSR sub_0x027BC7
C - - - - - 0x03F7B3 0F:F7A3: 4C 17 F6  JMP loc_F617_restore_prg



sub_F7A6_подсчитать_время_и_здоровье_после_боя:
C - - - - - 0x03F7B6 0F:F7A6: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F7B9 0F:F7A9: 20 6A 8A  JSR sub_0x038A7A_подсчитать_время_и_здоровье_после_боя
C - - - - - 0x03F7BC 0F:F7AC: 4C 17 F6  JMP loc_F617_restore_prg



ofs_000_F7AF_0A_opening:
C - - J - - 0x03F7BF 0F:F7AF: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F7C2 0F:F7B2: 20 9F 90  JSR sub_0x0390AF_обработчик_opening
C - - - - - 0x03F7C5 0F:F7B5: 4C 17 F6  JMP loc_F617_restore_prg



ofs_000_F7B8_0B_ending:
C - - J - - 0x03F7C8 0F:F7B8: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F7CB 0F:F7BB: 20 00 96  JSR sub_0x039610_обработчик_ending
C - - - - - 0x03F7CE 0F:F7BE: 4C 17 F6  JMP loc_F617_restore_prg



ofs_000_F7CA_0C_topscore:
C - - J - - 0x03F7DA 0F:F7CA: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F7DD 0F:F7CD: 20 BF 9F  JSR sub_0x039FCF_обработчик_экрана_topscore
C - - - - - 0x03F7E0 0F:F7D0: 4C 17 F6  JMP loc_F617_restore_prg



sub_F7D3_отрисовать_портреты:       ; A = 00 04 05
sub_0x03F7E3_отрисовать_портреты:   ; A = 01 03
loc_0x03F7E3_отрисовать_портреты:   ; A = 02
; отрисовать 2 портрета персов
C D 3 - - - 0x03F7E3 0F:F7D3: 48        PHA
C - - - - - 0x03F7E4 0F:F7D4: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F7E7 0F:F7D7: 68        PLA
C - - - - - 0x03F7E8 0F:F7D8: 20 E3 A0  JSR sub_0x03A0F3_отрисовать_портреты
C - - - - - 0x03F7EB 0F:F7DB: 4C 17 F6  JMP loc_F617_restore_prg



sub_F7DE:
C - - - - - 0x03F7EE 0F:F7DE: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F7F1 0F:F7E1: 20 36 9B  JSR sub_0x039B46_обработка_выбранного_speech
C - - - - - 0x03F7F4 0F:F7E4: 4C 17 F6  JMP loc_F617_restore_prg



sub_F7E7_обработать_рожи_в_турнирной_сетке:
ofs_001_F7E7_02_обработать_рожи_в_турнирной_сетке:
C - - J - - 0x03F7F7 0F:F7E7: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F7FA 0F:F7EA: 20 6C A3  JSR sub_0x03A37C_обработать_рожи_в_турнирной_сетке
C - - - - - 0x03F7FD 0F:F7ED: 4C 17 F6  JMP loc_F617_restore_prg



ofs_001_F7F0_12_обработка_экрана_rematch:
C - - J - - 0x03F800 0F:F7F0: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F803 0F:F7F3: 20 8F A4  JSR sub_0x03A49F_обработка_экрана_rematch
C - - - - - 0x03F806 0F:F7F6: 4C 17 F6  JMP loc_F617_restore_prg



ofs_001_F7F9_11_подготовка_экрана_rematch:
; подпрограмма срабатывает дважды подряд
C - - J - - 0x03F809 0F:F7F9: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F80C 0F:F7FC: 20 27 A4  JSR sub_0x03A437_подготовка_экрана_rematch
C - - - - - 0x03F80F 0F:F7FF: 4C 17 F6  JMP loc_F617_restore_prg



loc_F802:
C D 3 - - - 0x03F812 0F:F802: 20 E3 F5  JSR sub_F5E3_swap_prg_14
C - - - - - 0x03F815 0F:F805: 20 11 BF  JSR sub_0x02BF21
C - - - - - 0x03F818 0F:F808: 4C 17 F6  JMP loc_F617_restore_prg



sub_F80B:
C - - - - - 0x03F81B 0F:F80B: 20 DF F5  JSR sub_F5DF_swap_prg_12
C - - - - - 0x03F81E 0F:F80E: 20 F6 AF  JSR sub_0x027006_отрисовать_инфу_в_статусбаре
C - - - - - 0x03F821 0F:F811: 4C 17 F6  JMP loc_F617_restore_prg



sub_F814_подготовить_irq_handler:
sub_0x03F824_подготовить_irq_handler:
loc_0x03F824_подготовить_irq_handler:
C D 3 - - - 0x03F824 0F:F814: 85 48     STA ram_irq_handler
C - - - - - 0x03F83F 0F:F82F: 0A        ASL
C - - - - - 0x03F840 0F:F830: A8        TAY
C - - - - - 0x03F841 0F:F831: B9 3C F8  LDA tbl_F83C_irq_handler,Y
C - - - - - 0x03F844 0F:F834: 85 4B     STA ram_004B
C - - - - - 0x03F846 0F:F836: B9 3D F8  LDA tbl_F83C_irq_handler + $01,Y
C - - - - - 0x03F849 0F:F839: 85 4C     STA ram_004C
C - - - - - 0x03F835 0F:F825: A0 01     LDY #$01    ; enable irq
C - - - - - 0x03F837 0F:F827: 84 49     STY ram_irq_flag
C - - - - - 0x03F839 0F:F829: 88        DEY ; 00
C - - - - - 0x03F83A 0F:F82A: 84 4D     STY ram_004D
C - - - - - 0x03F83C 0F:F82C: 78        SEI
C - - - - - 0x03F84B 0F:F83B: 60        RTS



tbl_F83C_irq_handler:
; смотреть con_0048
- - - - - - 0x03F84C 0F:F83C: 7D F8     .word $FFFF              ; 00 ; unused, индекс не существует  
- - - - - - 0x03F84E 0F:F83E: 85 F8     .word $FFFF              ; 01 ; unused, индекс не существует  
- D 3 - - - 0x03F850 0F:F840: D0 F8     .word ofs_irq_handler_F8D0_02
- - - - - - 0x03F852 0F:F842: 40 F9     .word $FFFF              ; 03 ; unused, индекс не существует
- - - - - - 0x03F854 0F:F844: 57 F9     .word $FFFF              ; 04 ; unused, индекс не существует
- D 3 - - - 0x03F856 0F:F846: 38 FA     .word ofs_irq_handler_FA38_05
- D 3 - - - 0x03F858 0F:F848: 6E F9     .word ofs_irq_handler_F96E_06_скроллинг_фона_vs_экрана
- D 3 - - - 0x03F85A 0F:F84A: 96 FA     .word ofs_irq_handler_FA96_07
- D 3 - - - 0x03F85C 0F:F84C: B2 FA     .word ofs_irq_handler_FAB2_08
- D 3 - - - 0x03F85E 0F:F84E: BA FA     .word ofs_irq_handler_FABA_09
- D 3 - - - 0x03F860 0F:F850: D4 FA     .word ofs_irq_handler_FAD4_0A
- D 3 - - - 0x03F862 0F:F852: A7 FA     .word ofs_irq_handler_FAA7_0B
- D 3 - - - 0x03F864 0F:F854: 07 FB     .word ofs_irq_handler_FB07_0C
- D 3 - - - 0x03F866 0F:F856: 35 FB     .word ofs_irq_handler_FB35_0D
- D 3 - - - 0x03F868 0F:F858: 2D FB     .word ofs_irq_handler_FB2D_0E
- D 3 - - - 0x03F86A 0F:F85A: 3D FB     .word ofs_irq_handler_FB3D_0F
- D 3 - - - 0x03F86C 0F:F85C: 68 FB     .word ofs_irq_handler_FB68_10



vec_F85E_IRQ:
C - - - - - 0x03F86E 0F:F85E: 48        PHA
C - - - - - 0x03F86F 0F:F85F: 8A        TXA
C - - - - - 0x03F870 0F:F860: 48        PHA
C - - - - - 0x03F871 0F:F861: 98        TYA
C - - - - - 0x03F872 0F:F862: 48        PHA
C - - - - - 0x03F873 0F:F863: 8D 00 E0  STA $E000
C - - - - - 0x03F876 0F:F866: 8D 01 E0  STA $E001
C - - - - - 0x03F879 0F:F869: 20 7A F8  JSR sub_F87A_indirect_jmp
loc_F86C_выход_из_прерывания:
C - - - - - 0x03F87E 0F:F86E: B9 42 00  LDA ram_copy_8000
C - - - - - 0x03F881 0F:F871: 8D 00 80  STA $8000
C - - - - - 0x03F884 0F:F874: 68        PLA
C - - - - - 0x03F885 0F:F875: A8        TAY
C - - - - - 0x03F886 0F:F876: 68        PLA
C - - - - - 0x03F887 0F:F877: AA        TAX
C - - - - - 0x03F888 0F:F878: 68        PLA
C - - - - - 0x03F889 0F:F879: 40        RTI



sub_F87A_indirect_jmp:
; обработчик irq
C - - - - - 0x03F88A 0F:F87A: 6C 4B 00  JMP (ram_004B)



sub_F881_garbage_loop:
bra_F881_garbage_loop:
C - - - - - 0x03F891 0F:F881: CA        DEX
C - - - - - 0x03F892 0F:F882: 10 FD     BPL bra_F881_garbage_loop
C - - - - - 0x03F894 0F:F884: 60        RTS



tbl_F885:
- D 3 - - - 0x03F895 0F:F885: 00        .byte off_F890_00_leo - tbl_F890
- D 3 - - - 0x03F896 0F:F886: 0A        .byte off_F89A_01_raph - tbl_F890
- D 3 - - - 0x03F897 0F:F887: 00        .byte off_F890_02_mike - tbl_F890
- D 3 - - - 0x03F898 0F:F888: 0A        .byte off_F89A_03_don - tbl_F890
- D 3 - - - 0x03F899 0F:F889: 0A        .byte off_F89A_04_casey - tbl_F890
- D 3 - - - 0x03F89A 0F:F88A: 0A        .byte off_F89A_05_hot - tbl_F890
- D 3 - - - 0x03F89B 0F:F88B: 14        .byte off_F8A4_06_shred - tbl_F890
- D 3 - - - 0x03F89C 0F:F88C: 1E        .byte off_F8AE_07 - tbl_F890



tbl_F890:
off_F890_00_leo:
off_F890_02_mike:
- D 3 - - - 0x03F8A0 0F:F890: 04        .byte $04   ; 
- D 3 - - - 0x03F8A1 0F:F891: 4F        .byte $4F   ; 
- D 3 - - - 0x03F8A2 0F:F892: 10        .byte $10   ; 
- D 3 - - - 0x03F8A3 0F:F893: 04        .byte $04   ; 
- D 3 - - - 0x03F8A4 0F:F894: 05        .byte $05   ; 

- D 3 - - - 0x03F8A5 0F:F895: 66        .byte < (ram_0056 + $10)   ; 
- D 3 - - - 0x03F8A6 0F:F896: 68        .byte < (ram_0056 + $12)   ; 
- D 3 - - - 0x03F8A7 0F:F897: 6A        .byte < (ram_0056 + $14)   ; 
- D 3 - - - 0x03F8A8 0F:F898: 6C        .byte < (ram_0056 + $16)   ; 
- D 3 - - - 0x03F8A9 0F:F899: 6E        .byte < (ram_0056 + $18)   ; 



off_F89A_01_raph:
off_F89A_03_don:
off_F89A_04_casey:
off_F89A_05_hot:
- D 3 - - - 0x03F8AA 0F:F89A: 04        .byte $04   ; 
- D 3 - - - 0x03F8AB 0F:F89B: 4A        .byte $4A   ; 
- D 3 - - - 0x03F8AC 0F:F89C: 05        .byte $05   ; 
- D 3 - - - 0x03F8AD 0F:F89D: 10        .byte $10   ; 
- D 3 - - - 0x03F8AE 0F:F89E: 0A        .byte $0A   ; 

- D 3 - - - 0x03F8AF 0F:F89F: 6E        .byte < (ram_0056 + $18)   ; 
- D 3 - - - 0x03F8B0 0F:F8A0: 6E        .byte < (ram_0056 + $18)   ; 
- D 3 - - - 0x03F8B1 0F:F8A1: 6E        .byte < (ram_0056 + $18)   ; 
- D 3 - - - 0x03F8B2 0F:F8A2: 6E        .byte < (ram_0056 + $18)   ; 
- D 3 - - - 0x03F8B3 0F:F8A3: 6E        .byte < (ram_0056 + $18)   ; 



off_F8A4_06_shred:
- D 3 - - - 0x03F8B4 0F:F8A4: 04        .byte $04   ; 
- D 3 - - - 0x03F8B5 0F:F8A5: 4A        .byte $4A   ; 
- D 3 - - - 0x03F8B6 0F:F8A6: 05        .byte $05   ; 
- D 3 - - - 0x03F8B7 0F:F8A7: 10        .byte $10   ; 
- D 3 - - - 0x03F8B8 0F:F8A8: 0A        .byte $0A   ; 

- D 3 - - - 0x03F8B9 0F:F8A9: 5E        .byte < (ram_0056 + $08)   ; 
- D 3 - - - 0x03F8BA 0F:F8AA: 5E        .byte < (ram_0056 + $08)   ; 
- D 3 - - - 0x03F8BB 0F:F8AB: 61        .byte < (ram_0056 + $0B)   ; 
- D 3 - - - 0x03F8BC 0F:F8AC: 6E        .byte < (ram_0056 + $18)   ; 
- D 3 - - - 0x03F8BD 0F:F8AD: 6E        .byte < (ram_0056 + $18)   ; 



off_F8AE_07:
- D 3 - - - 0x03F8BE 0F:F8AE: 01        .byte $01   ; 
- D 3 - - - 0x03F8BF 0F:F8AF: 01        .byte $01   ; 
- D 3 - - - 0x03F8C0 0F:F8B0: 51        .byte $51   ; 
- D 3 - - - 0x03F8C1 0F:F8B1: 18        .byte $18   ; 
- D 3 - - - 0x03F8C2 0F:F8B2: 04        .byte $04   ; 

- D 3 - - - 0x03F8C3 0F:F8B3: 5E        .byte < (ram_0056 + $08)   ; 
- D 3 - - - 0x03F8C4 0F:F8B4: 5E        .byte < (ram_0056 + $08)   ; 
- D 3 - - - 0x03F8C5 0F:F8B5: 5E        .byte < (ram_0056 + $08)   ; 
- D 3 - - - 0x03F8C6 0F:F8B6: 61        .byte < (ram_0056 + $0B)   ; 
- D 3 - - - 0x03F8C7 0F:F8B7: 63        .byte < (ram_0056 + $0D)   ; 



ofs_0x03F8E0:
ofs_irq_handler_F8D0_02:
C - - J - - 0x03F8E0 0F:F8D0: A0 05     LDY #$05
bra_F8D2_garbage_loop:
C - - - - - 0x03F8E2 0F:F8D2: 88        DEY
C - - - - - 0x03F8E3 0F:F8D3: D0 FD     BNE bra_F8D2_garbage_loop
C - - - - - 0x03F8E5 0F:F8D5: A5 4D     LDA ram_004D
C - - - - - 0x03F8E7 0F:F8D7: F0 49     BEQ bra_F922
C - - - - - 0x03F8E9 0F:F8D9: C9 06     CMP #$06
C - - - - - 0x03F8EB 0F:F8DB: B0 4E     BCS bra_F92B
; A = 01-05
C - - - - - 0x03F8ED 0F:F8DD: A6 9E     LDX ram_номер_боя_story
C - - - - - 0x03F8EF 0F:F8DF: 7D 85 F8  ADC tbl_F885,X
C - - - - - 0x03F8F2 0F:F8E2: A8        TAY
C - - - - - 0x03F8F3 0F:F8E3: B9 8F F8  LDA tbl_F890 - $01,Y
C - - - - - 0x03F8F6 0F:F8E6: BE 94 F8  LDX tbl_F890 - $01 + $05,Y
C - - - - - 0x03F8F9 0F:F8E9: BC 00 00  LDY ram_0056 - $56,X
bra_F8EC:
C - - - - - 0x03F8FC 0F:F8EC: 8D 00 C0  STA $C000
C - - - - - 0x03F901 0F:F8F1: E6 4D     INC ram_004D
C - - - - - 0x03F903 0F:F8F3: AD 02 20  LDA $2002
C - - - - - 0x03F906 0F:F8F6: A5 FC     LDA ram_scroll_Y
C - - - - - 0x03F908 0F:F8F8: 8C 05 20  STY $2005
C - - - - - 0x03F90B 0F:F8FB: 8D 05 20  STA $2005
C - - - - - 0x03F90E 0F:F8FE: A4 4D     LDY ram_004D
C - - - - - 0x03F910 0F:F900: C0 02     CPY #$02
C - - - - - 0x03F912 0F:F902: D0 1D     BNE bra_F921_RTS
C - - - - - 0x03F914 0F:F904: A9 20     LDA #> $20A0
C - - - - - 0x03F916 0F:F906: A0 A0     LDY #< $20A0
C - - - - - 0x03F918 0F:F908: 8D 06 20  STA $2006
C - - - - - 0x03F91B 0F:F90B: 8C 06 20  STY $2006
C - - - - - 0x03F91E 0F:F90E: A2 00     LDX #$00
C - - - - - 0x03F920 0F:F910: A5 4E     LDA ram_alt_chr_bank_bg_1
C - - - - - 0x03F922 0F:F912: 8E 00 80  STX $8000
C - - - - - 0x03F925 0F:F915: 8D 01 80  STA $8001
C - - - - - 0x03F928 0F:F918: E8        INX ; 01
C - - - - - 0x03F929 0F:F919: A5 4F     LDA ram_alt_chr_bank_bg_1 + $01
C - - - - - 0x03F92B 0F:F91B: 8E 00 80  STX $8000
C - - - - - 0x03F92E 0F:F91E: 8D 01 80  STA $8001
bra_F921_RTS:
C - - - - - 0x03F931 0F:F921: 60        RTS
bra_F922:
C - - - - - 0x03F932 0F:F922: 18        CLC
C - - - - - 0x03F933 0F:F923: A5 86     LDA ram_0086
C - - - - - 0x03F935 0F:F925: 85 87     STA ram_0087
C - - - - - 0x03F937 0F:F927: 69 03     ADC #$03
C - - - - - 0x03F939 0F:F929: D0 C1     BNE bra_F8EC
bra_F92B:
C - - - - - 0x03F93B 0F:F92B: E6 88     INC ram_0088
C - - - - - 0x03F93D 0F:F92D: A6 88     LDX ram_0088
C - - - - - 0x03F93F 0F:F92F: E0 0A     CPX #$0A
C - - - - - 0x03F941 0F:F931: B0 06     BCS bra_F939
C - - - - - 0x03F943 0F:F933: B4 6D     LDY ram_0056 + $17,X
C - - - - - 0x03F945 0F:F935: A9 03     LDA #$03
C - - - - - 0x03F947 0F:F937: D0 B3     BNE bra_F8EC    ; jmp
bra_F939:
loc_F939:
C D 3 - - - 0x03F949 0F:F939: A2 00     LDX #< $2300
C - - - - - 0x03F94B 0F:F93B: A0 23     LDY #> $2300
C - - - - - 0x03F94D 0F:F93D: AD 02 20  LDA $2002
C - - - - - 0x03F950 0F:F940: A9 04     LDA #$04
C - - - - - 0x03F952 0F:F942: 8D 05 20  STA $2005
C - - - - - 0x03F955 0F:F945: 8E 05 20  STX $2005
C - - - - - 0x03F958 0F:F948: 8C 06 20  STY $2006
C - - - - - 0x03F95B 0F:F94B: 8E 06 20  STX $2006
C - - - - - 0x03F95E 0F:F94E: A2 00     LDX #$00
C - - - - - 0x03F960 0F:F950: A9 7C     LDA #$7C
C - - - - - 0x03F962 0F:F952: 8E 00 80  STX $8000
C - - - - - 0x03F965 0F:F955: 8D 01 80  STA $8001
C - - - - - 0x03F968 0F:F958: E8        INX ; 01
C - - - - - 0x03F969 0F:F959: A9 7E     LDA #$7E
C - - - - - 0x03F96B 0F:F95B: 8E 00 80  STX $8000
C - - - - - 0x03F96E 0F:F95E: 8D 01 80  STA $8001
C - - - - - 0x03F971 0F:F961: 20 8D FB  JSR sub_FB8D
C - - - - - 0x03F974 0F:F964: A4 48     LDY ram_irq_handler
C - - - - - 0x03F976 0F:F966: C0 05     CPY #$05
C - - - - - 0x03F978 0F:F968: B0 03     BCS bra_F96D_RTS
C - - - - - 0x03F97A 0F:F96A: 4C C9 FC  JMP loc_FCC9_вычислить_скроллинг_фона
bra_F96D_RTS:
C - - - - - 0x03F97D 0F:F96D: 60        RTS



ofs_irq_handler_F96E_06_скроллинг_фона_vs_экрана:
C - - J - - 0x03F97E 0F:F96E: A2 01     LDX #$01
C - - - - - 0x03F980 0F:F970: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03F983 0F:F973: A4 4D     LDY ram_004D
C - - - - - 0x03F985 0F:F975: D0 4C     BNE bra_F9C3
C - - - - - 0x03F987 0F:F977: A5 56     LDA ram_0056 + $01
C - - - - - 0x03F989 0F:F979: A2 52     LDX #$52
C - - - - - 0x03F98B 0F:F97B: 8E 00 C0  STX $C000
C - - - - - 0x03F990 0F:F980: E6 4D     INC ram_004D
C - - - - - 0x03F992 0F:F982: AC 02 20  LDY $2002
C - - - - - 0x03F995 0F:F985: 8D 05 20  STA $2005
C - - - - - 0x03F998 0F:F988: A5 FC     LDA ram_scroll_Y
C - - - - - 0x03F99A 0F:F98A: 8D 05 20  STA $2005
C - - - - - 0x03F99D 0F:F98D: A0 00     LDY #$00
sub_F98F:   ; Y = 01
loc_F98F:   ; Y = 01
C D 3 - - - 0x03F99F 0F:F98F: A2 00     LDX #$00
C - - - - - 0x03F9A1 0F:F991: 8E 00 80  STX $8000
C - - - - - 0x03F9A4 0F:F994: B9 4E 00  LDA ram_alt_chr_bank_bg_1,Y
C - - - - - 0x03F9A7 0F:F997: 8D 01 80  STA $8001
C - - - - - 0x03F9AA 0F:F99A: E8        INX ; 01
C - - - - - 0x03F9AB 0F:F99B: B9 50 00  LDA ram_alt_chr_bank_bg_2,Y
C - - - - - 0x03F9AE 0F:F99E: 8E 00 80  STX $8000
C - - - - - 0x03F9B1 0F:F9A1: 8D 01 80  STA $8001
C - - - - - 0x03F9B4 0F:F9A4: A9 02     LDA #$02
C - - - - - 0x03F9B6 0F:F9A6: 8D 00 80  STA $8000
C - - - - - 0x03F9B9 0F:F9A9: B9 52 00  LDA ram_alt_chr_bank_spr_1,Y
C - - - - - 0x03F9BC 0F:F9AC: 8D 01 80  STA $8001
C - - - - - 0x03F9BF 0F:F9AF: A9 03     LDA #$03
C - - - - - 0x03F9C1 0F:F9B1: 8D 00 80  STA $8000
C - - - - - 0x03F9C4 0F:F9B4: B9 54 00  LDA ram_alt_chr_bank_spr_2,Y
C - - - - - 0x03F9C7 0F:F9B7: 8D 01 80  STA $8001
C - - - - - 0x03F9CA 0F:F9BA: 60        RTS



tbl_F9BB_опции_по_умолчанию:
- D 3 - - - 0x03F9CB 0F:F9BB: 03        .byte $03   ; 00 ram_option_difficulty
- D 3 - - - 0x03F9CC 0F:F9BC: 01        .byte $01   ; 01 ram_option_speed
- D 3 - - - 0x03F9CD 0F:F9BD: 01        .byte $01   ; 02 ram_option_timer
- D 3 - - - 0x03F9CE 0F:F9BE: 01        .byte $01   ; 03 ram_option_health
- D 3 - - - 0x03F9CF 0F:F9BF: 00        .byte $00   ; 04 ram_plr_колво_побед_в_матчах
- D 3 - - - 0x03F9D0 0F:F9C0: 00        .byte $00   ; 05 ram_plr_колво_побед_в_матчах + $01
- D 3 - - - 0x03F9D1 0F:F9C1: 08        .byte $08   ; 06 ram_option_misc
- D 3 - - - 0x03F9D2 0F:F9C2: 02        .byte $02   ; 07 ram_option_team_keeps



bra_F9C3:
C - - - - - 0x03F9D3 0F:F9C3: 88        DEY
C - - - - - 0x03F9D4 0F:F9C4: D0 28     BNE bra_F9EE
C - - - - - 0x03F9D6 0F:F9C6: A9 2A     LDA #$2A
C - - - - - 0x03F9D8 0F:F9C8: 8D 00 C0  STA $C000
C - - - - - 0x03F9DD 0F:F9CD: E6 4D     INC ram_004D
C - - - - - 0x03F9DF 0F:F9CF: AC 02 20  LDY $2002
C - - - - - 0x03F9E2 0F:F9D2: A9 FF     LDA #$FF
C - - - - - 0x03F9E4 0F:F9D4: A2 00     LDX #$00
C - - - - - 0x03F9E6 0F:F9D6: 8D 05 20  STA $2005
C - - - - - 0x03F9E9 0F:F9D9: 8E 05 20  STX $2005
C - - - - - 0x03F9EC 0F:F9DC: 8E 00 80  STX $8000
C - - - - - 0x03F9EF 0F:F9DF: A9 7E     LDA #$7E
C - - - - - 0x03F9F1 0F:F9E1: 8D 01 80  STA $8001
C - - - - - 0x03F9F4 0F:F9E4: E8        INX ; 01
C - - - - - 0x03F9F5 0F:F9E5: 8E 00 80  STX $8000
C - - - - - 0x03F9F8 0F:F9E8: A9 20     LDA #$20
C - - - - - 0x03F9FA 0F:F9EA: 8D 01 80  STA $8001
C - - - - - 0x03F9FD 0F:F9ED: 60        RTS
bra_F9EE:
C - - - - - 0x03F9FE 0F:F9EE: A2 13     LDX #$13
C - - - - - 0x03FA00 0F:F9F0: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FA03 0F:F9F3: AD 02 20  LDA $2002
C - - - - - 0x03FA06 0F:F9F6: A5 57     LDA ram_0056
C - - - - - 0x03FA08 0F:F9F8: 8D 05 20  STA $2005
C - - - - - 0x03FA0B 0F:F9FB: A5 FC     LDA ram_scroll_Y
C - - - - - 0x03FA0D 0F:F9FD: 8D 05 20  STA $2005
C - - - - - 0x03FA10 0F:FA00: A5 FF     LDA ram_for_2000
C - - - - - 0x03FA12 0F:FA02: 09 01     ORA #$01
C - - - - - 0x03FA14 0F:FA04: 8D 00 20  STA $2000
C - - - - - 0x03FA17 0F:FA07: A0 01     LDY #$01
C - - - - - 0x03FA19 0F:FA09: 20 8F F9  JSR sub_F98F
C - - - - - 0x03FA1C 0F:FA0C: 4C 8D FB  JMP loc_FB8D



bra_FA0F:
loc_FA0F_запись_скролла_и_банков_фона:
C D 3 - - - 0x03FA1F 0F:FA0F: 84 4E     STY ram_alt_chr_bank_bg_1
C - - - - - 0x03FA21 0F:FA11: 8E 00 C0  STX $C000
C - - - - - 0x03FA26 0F:FA16: E6 4D     INC ram_004D
C - - - - - 0x03FA28 0F:FA18: AC 02 20  LDY $2002
C - - - - - 0x03FA2B 0F:FA1B: 8D 05 20  STA $2005
C - - - - - 0x03FA2E 0F:FA1E: A5 FC     LDA ram_scroll_Y
C - - - - - 0x03FA30 0F:FA20: 8D 05 20  STA $2005
C - - - - - 0x03FA33 0F:FA23: A5 4E     LDA ram_alt_chr_bank_bg_1
bra_FA25:
loc_FA25_запись_банков_фона_из_A:
sub_FA25_запись_банков_фона_из_A:
C D 3 - - - 0x03FA35 0F:FA25: A2 00     LDX #$00
C - - - - - 0x03FA37 0F:FA27: 8E 00 80  STX $8000
C - - - - - 0x03FA3A 0F:FA2A: 8D 01 80  STA $8001
C - - - - - 0x03FA3D 0F:FA2D: E8        INX ; 01
C - - - - - 0x03FA3E 0F:FA2E: 18        CLC
C - - - - - 0x03FA3F 0F:FA2F: 69 02     ADC #$02
C - - - - - 0x03FA41 0F:FA31: 8E 00 80  STX $8000
C - - - - - 0x03FA44 0F:FA34: 8D 01 80  STA $8001
C - - - - - 0x03FA47 0F:FA37: 60        RTS



ofs_irq_handler_FA38_05:
C - - J - - 0x03FA48 0F:FA38: A2 01     LDX #$01
C - - - - - 0x03FA4A 0F:FA3A: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FA4D 0F:FA3D: A4 4D     LDY ram_004D
C - - - - - 0x03FA4F 0F:FA3F: D0 08     BNE bra_FA49
C - - - - - 0x03FA51 0F:FA41: A9 00     LDA #$00
C - - - - - 0x03FA53 0F:FA43: A2 3C     LDX #$3C
C - - - - - 0x03FA55 0F:FA45: A0 74     LDY #con_chr_bank_bg + $74
; bzk optimize, JMP для безопасности
C - - - - - 0x03FA57 0F:FA47: D0 C6     BNE bra_FA0F    ; jmp
bra_FA49:
C - - - - - 0x03FA59 0F:FA49: 88        DEY
C - - - - - 0x03FA5A 0F:FA4A: D0 07     BNE bra_FA53
C - - - - - 0x03FA5C 0F:FA4C: 20 67 FA  JSR sub_FA67
C - - - - - 0x03FA5F 0F:FA4F: A9 7C     LDA #con_chr_bank_bg + $7C
; bzk optimize, JMP для безопасности
C - - - - - 0x03FA61 0F:FA51: D0 D2     BNE bra_FA25    ; jmp
bra_FA53:
C - - - - - 0x03FA63 0F:FA53: 88        DEY
C - - - - - 0x03FA64 0F:FA54: D0 2E     BNE bra_FA84
C - - - - - 0x03FA66 0F:FA56: 20 67 FA  JSR sub_FA67
C - - - - - 0x03FA69 0F:FA59: A9 22     LDA #> $2240
C - - - - - 0x03FA6B 0F:FA5B: A0 40     LDY #< $2240
C - - - - - 0x03FA6D 0F:FA5D: 8D 06 20  STA $2006
C - - - - - 0x03FA70 0F:FA60: 8C 06 20  STY $2006
C - - - - - 0x03FA73 0F:FA63: 4C E3 E3  JMP loc_E3E3



sub_FA67:
C - - - - - 0x03FA77 0F:FA67: A4 4D     LDY ram_004D
C - - - - - 0x03FA79 0F:FA69: B9 93 FA  LDA tbl_FA94 - $01,Y
C - - - - - 0x03FA7C 0F:FA6C: 8D 00 C0  STA $C000
C - - - - - 0x03FA81 0F:FA71: E6 4D     INC ram_004D
C - - - - - 0x03FA83 0F:FA73: 18        CLC
C - - - - - 0x03FA84 0F:FA74: A5 4D     LDA ram_004D
C - - - - - 0x03FA86 0F:FA76: 6D 30 05  ADC ram_0530_obj_state
C - - - - - 0x03FA89 0F:FA79: 29 01     AND #$01
C - - - - - 0x03FA8B 0F:FA7B: 05 FE     ORA ram_for_2001
C - - - - - 0x03FA8D 0F:FA7D: AC 02 20  LDY $2002
C - - - - - 0x03FA90 0F:FA80: 8D 01 20  STA $2001
C - - - - - 0x03FA93 0F:FA83: 60        RTS



bra_FA84:
C - - - - - 0x03FA94 0F:FA84: A2 02     LDX #$02
C - - - - - 0x03FA96 0F:FA86: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FA99 0F:FA89: A5 FE     LDA ram_for_2001
C - - - - - 0x03FA9B 0F:FA8B: AC 02 20  LDY $2002
C - - - - - 0x03FA9E 0F:FA8E: 8D 01 20  STA $2001
C - - - - - 0x03FAA1 0F:FA91: 4C 8D FB  JMP loc_FB8D



tbl_FA94:
- D 3 - - - 0x03FAA4 0F:FA94: 1F        .byte $1F   ; 01
- D 3 - - - 0x03FAA5 0F:FA95: 50        .byte $50   ; 02



ofs_irq_handler_FA96_07:
C - - J - - 0x03FAA6 0F:FA96: A2 01     LDX #$01
C - - - - - 0x03FAA8 0F:FA98: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FAAB 0F:FA9B: A5 4D     LDA ram_004D
C - - - - - 0x03FAAD 0F:FA9D: D0 05     BNE bra_FAA4
C - - - - - 0x03FAAF 0F:FA9F: A9 2C     LDA #$2C
C - - - - - 0x03FAB1 0F:FAA1: A8        TAY
C - - - - - 0x03FAB2 0F:FAA2: D0 43     BNE bra_FAE7    ; jmp
bra_FAA4:
C - - - - - 0x03FAB4 0F:FAA4: 4C FE FA  JMP loc_FAFE



ofs_irq_handler_FAA7_0B:
C - - J - - 0x03FAB7 0F:FAA7: A2 01     LDX #$01
C - - - - - 0x03FAB9 0F:FAA9: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FABC 0F:FAAC: A2 02     LDX #$02
C - - - - - 0x03FABE 0F:FAAE: 20 81 F8  JSR sub_F881_garbage_loop
ofs_irq_handler_FAB2_08:
C - - J - - 0x03FAC2 0F:FAB2: A9 7C     LDA #con_chr_bank_bg + $7C
C - - - - - 0x03FAC4 0F:FAB4: 20 25 FA  JSR sub_FA25_запись_банков_фона_из_A
C - - - - - 0x03FAC7 0F:FAB7: 4C 8D FB  JMP loc_FB8D



ofs_irq_handler_FABA_09:
C - - J - - 0x03FACA 0F:FABA: A2 01     LDX #$01
C - - - - - 0x03FACC 0F:FABC: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FACF 0F:FABF: A4 4D     LDY ram_004D
C - - - - - 0x03FAD1 0F:FAC1: D0 09     BNE bra_FACC
C - - - - - 0x03FAD3 0F:FAC3: A5 A6     LDA ram_screen_pos_X
C - - - - - 0x03FAD5 0F:FAC5: A2 9A     LDX #$9A
C - - - - - 0x03FAD7 0F:FAC7: A0 6C     LDY #con_chr_bank_bg + $6C
C - - - - - 0x03FAD9 0F:FAC9: 4C 0F FA  JMP loc_FA0F_запись_скролла_и_банков_фона
bra_FACC:
C - - - - - 0x03FADC 0F:FACC: A2 02     LDX #$02
C - - - - - 0x03FADE 0F:FACE: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FAE1 0F:FAD1: 4C 39 F9  JMP loc_F939



ofs_irq_handler_FAD4_0A:
C - - J - - 0x03FAE4 0F:FAD4: A2 01     LDX #$01
C - - - - - 0x03FAE6 0F:FAD6: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FAE9 0F:FAD9: A2 01     LDX #$01
bra_FADB_garbage_loop:
C - - - - - 0x03FAEB 0F:FADB: CA        DEX
C - - - - - 0x03FAEC 0F:FADC: 10 FD     BPL bra_FADB_garbage_loop
C - - - - - 0x03FAEE 0F:FADE: A4 4D     LDY ram_004D
C - - - - - 0x03FAF0 0F:FAE0: C0 03     CPY #$03
C - - - - - 0x03FAF2 0F:FAE2: B0 1A     BCS bra_FAFE
C - - - - - 0x03FAF4 0F:FAE4: B9 04 FB  LDA tbl_FB04,Y
bra_FAE7:
C - - - - - 0x03FAF7 0F:FAE7: 8D 00 C0  STA $C000
C - - - - - 0x03FAFC 0F:FAEC: E6 4D     INC ram_004D
C - - - - - 0x03FAFE 0F:FAEE: 88        DEY
C - - - - - 0x03FAFF 0F:FAEF: F0 05     BEQ bra_FAF6
C - - - - - 0x03FB01 0F:FAF1: A9 7C     LDA #con_chr_bank_bg + $7C
C - - - - - 0x03FB03 0F:FAF3: 4C 25 FA  JMP loc_FA25_запись_банков_фона_из_A
bra_FAF6:
C - - - - - 0x03FB06 0F:FAF6: 4C 34 FC  JMP loc_FC34_запись_банков_фона_из_адресов



bra_FAF9:
C - - - - - 0x03FB09 0F:FAF9: A2 01     LDX #$01
bra_FAFB_garbage_loop:
C - - - - - 0x03FB0B 0F:FAFB: CA        DEX
C - - - - - 0x03FB0C 0F:FAFC: 10 FD     BPL bra_FAFB_garbage_loop
bra_FAFE:
loc_FAFE:
C D 3 - - - 0x03FB0E 0F:FAFE: 20 34 FC  JSR sub_FC34_запись_банков_фона_из_адресов
C - - - - - 0x03FB11 0F:FB01: 4C 8D FB  JMP loc_FB8D



tbl_FB04:
- D 3 - - - 0x03FB14 0F:FB04: 1C        .byte $1C   ; 00
- D 3 - - - 0x03FB15 0F:FB05: 36        .byte $36   ; 01
- D 3 - - - 0x03FB16 0F:FB06: 10        .byte $10   ; 02



ofs_irq_handler_FB07_0C:
C - - J - - 0x03FB17 0F:FB07: A2 01     LDX #$01
C - - - - - 0x03FB19 0F:FB09: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FB1C 0F:FB0C: A5 4D     LDA ram_004D
C - - - - - 0x03FB1E 0F:FB0E: D0 E9     BNE bra_FAF9
C - - - - - 0x03FB20 0F:FB10: E6 4D     INC ram_004D
C - - - - - 0x03FB22 0F:FB12: A9 90     LDA #$90
C - - - - - 0x03FB24 0F:FB14: 8D 00 C0  STA $C000
C - - - - - 0x03FB29 0F:FB19: A2 00     LDX #$00
C - - - - - 0x03FB2B 0F:FB1B: 8E 00 80  STX $8000
C - - - - - 0x03FB2E 0F:FB1E: A9 5A     LDA #$5A
C - - - - - 0x03FB30 0F:FB20: 8D 01 80  STA $8001
C - - - - - 0x03FB33 0F:FB23: E8        INX ; 01
C - - - - - 0x03FB34 0F:FB24: A9 7E     LDA #$7E
C - - - - - 0x03FB36 0F:FB26: 8E 00 80  STX $8000
C - - - - - 0x03FB39 0F:FB29: 8D 01 80  STA $8001
C - - - - - 0x03FB3C 0F:FB2C: 60        RTS



ofs_irq_handler_FB2D_0E:
C - - J - - 0x03FB3D 0F:FB2D: A2 01     LDX #$01
C - - - - - 0x03FB3F 0F:FB2F: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FB42 0F:FB32: A9 6C     LDA #con_chr_bank_bg + $6C
C - - - - - 0x03FB44 0F:FB34: 2C        .byte $2C   ; BIT
bra_FB35:
ofs_irq_handler_FB35_0D:
C - - - - - 0x03FB45 0F:FB35: A9 7C     LDA #con_chr_bank_bg + $7C
C - - - - - 0x03FB47 0F:FB37: 20 25 FA  JSR sub_FA25_запись_банков_фона_из_A
C - - - - - 0x03FB4A 0F:FB3A: 4C 8D FB  JMP loc_FB8D



ofs_irq_handler_FB3D_0F:
C - - J - - 0x03FB4D 0F:FB3D: A2 02     LDX #$02
C - - - - - 0x03FB4F 0F:FB3F: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FB52 0F:FB42: A5 4D     LDA ram_004D
C - - - - - 0x03FB54 0F:FB44: D0 10     BNE bra_FB56
C - - - - - 0x03FB58 0F:FB48: A9 54     LDA #$54
C - - - - - 0x03FB5A 0F:FB4A: 8D 00 C0  STA $C000
C - - - - - 0x03FB5F 0F:FB4F: 85 4D     STA ram_004D
C - - - - - 0x03FB61 0F:FB51: A0 01     LDY #$01
C - - - - - 0x03FB63 0F:FB53: 4C 8F F9  JMP loc_F98F
bra_FB56:
C - - - - - 0x03FB66 0F:FB56: A2 00     LDX #$00
C - - - - - 0x03FB68 0F:FB58: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FB6B 0F:FB5B: 20 02 D6  JSR sub_D602_выбрать_chr_банк_на_основе_опции_skin
C - - - - - 0x03FB6E 0F:FB5E: A9 03     LDA #$03
C - - - - - 0x03FB70 0F:FB60: 8D 00 80  STA $8000
C - - - - - 0x03FB73 0F:FB63: 8E 01 80  STX $8001
C - - - - - 0x03FB76 0F:FB66: D0 CD     BNE bra_FB35    ; jmp



ofs_irq_handler_FB68_10:
C - - J - - 0x03FB78 0F:FB68: A2 01     LDX #$01
C - - - - - 0x03FB7A 0F:FB6A: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FB7D 0F:FB6D: A2 03     LDX #$03
C - - - - - 0x03FB7F 0F:FB6F: 20 81 F8  JSR sub_F881_garbage_loop
C - - - - - 0x03FB82 0F:FB72: A2 00     LDX #$00
C - - - - - 0x03FB84 0F:FB74: 8E 00 80  STX $8000
C - - - - - 0x03FB87 0F:FB77: A9 72     LDA #$72
C - - - - - 0x03FB89 0F:FB79: 8D 01 80  STA $8001
C - - - - - 0x03FB8C 0F:FB7C: E8        INX ; 01
C - - - - - 0x03FB8D 0F:FB7D: A9 70     LDA #$70
C - - - - - 0x03FB8F 0F:FB7F: 8E 00 80  STX $8000
C - - - - - 0x03FB92 0F:FB82: 8D 01 80  STA $8001
C - - - - - 0x03FB95 0F:FB85: 4C 8D FB  JMP loc_FB8D



bra_FB88_disable_irq:
loc_FB88_disable_irq:
sub_FB88_disable_irq:
sub_0x03FB98_disable_irq:
C D 3 - - - 0x03FB98 0F:FB88: A9 00     LDA #$00
C - - - - - 0x03FB9A 0F:FB8A: 85 49     STA ram_irq_flag
C - - - - - 0x03FB9C 0F:FB8C: 60        RTS



sub_FB8D:
loc_FB8D:
C D 3 - - - 0x03FB9D 0F:FB8D: 8D 00 E0  STA $E000
C - - - - - 0x03FBA0 0F:FB90: A5 49     LDA ram_irq_flag
C - - - - - 0x03FBA2 0F:FB92: 30 F4     BMI bra_FB88_disable_irq
C - - - - - 0x03FBA4 0F:FB94: 60        RTS



sub_FB95_подготовить_irq:
C - - - - - 0x03FBA5 0F:FB95: A4 49     LDY ram_irq_flag
C - - - - - 0x03FBA7 0F:FB97: 99 00 E0  STA $E000,Y
C - - - - - 0x03FBAA 0F:FB9A: F0 53     BEQ bra_FBEF_RTS    ; if irq off
; if irq on
C - - - - - 0x03FBE2 0F:FBD2: A4 48     LDY ram_irq_handler
C - - - - - 0x03FBE4 0F:FBD4: C0 10     CPY #con_0048_10
C - - - - - 0x03FBE6 0F:FBD6: D0 05     BNE bra_FBDD
C - - - - - 0x03FBE8 0F:FBD8: AD 0C 01  LDA ram_custom_scanline
C - - - - - 0x03FBEB 0F:FBDB: D0 03     BNE bra_FBE0
bra_FBDD:
C - - - - - 0x03FBED 0F:FBDD: B9 9A FC  LDA tbl_FC9A_scanline,Y
bra_FBE0:
C - - - - - 0x03FBF2 0F:FBE2: 8D 00 C0  STA $C000
C - - - - - 0x03FBF5 0F:FBE5: 8D 01 C0  STA $C001
C - - - - - 0x03FBF8 0F:FBE8: A9 00     LDA #$00
C - - - - - 0x03FBFA 0F:FBEA: 85 4D     STA ram_004D
C - - - - - 0x03FBFC 0F:FBEC: 85 88     STA ram_0088
C - - - - - 0x03FBFE 0F:FBEE: 58        CLI
bra_FBEF_RTS:
C - - - - - 0x03FBFF 0F:FBEF: 60        RTS



loc_FC34_запись_банков_фона_из_адресов:
sub_FC34_запись_банков_фона_из_адресов:
C D 3 - - - 0x03FC44 0F:FC34: A9 00     LDA #$00
C - - - - - 0x03FC46 0F:FC36: 8D 00 80  STA $8000
C - - - - - 0x03FC49 0F:FC39: A5 32     LDA ram_chr_bank_bg
C - - - - - 0x03FC4B 0F:FC3B: 8D 01 80  STA $8001
C - - - - - 0x03FC4E 0F:FC3E: A9 01     LDA #$01
C - - - - - 0x03FC50 0F:FC40: 8D 00 80  STA $8000
C - - - - - 0x03FC53 0F:FC43: A5 33     LDA ram_chr_bank_bg + $01
C - - - - - 0x03FC55 0F:FC45: 8D 01 80  STA $8001
C - - - - - 0x03FC58 0F:FC48: 60        RTS



loc_FC8C_set_mirroring_V:
sub_FC8C_set_mirroring_V:
sub_0x03FC9C_set_mirroring_V:
C D 3 - - - 0x03FC9C 0F:FC8C: A9 00     LDA #$00
C - - - - - 0x03FC9E 0F:FC8E: F0 02     BEQ bra_FC92    ; jmp



sub_FC90_set_mirroring_H:
sub_0x03FCA0_set_mirroring_H:
C - - - - - 0x03FCA0 0F:FC90: A9 01     LDA #$01
bra_FC92:
C - - - - - 0x03FCA6 0F:FC96: 8D 00 A0  STA $A000
C - - - - - 0x03FCA9 0F:FC99: 60        RTS



tbl_FC9A_scanline:
; смотреть con_0048
; номер сканлинии
- - - - - - 0x03FCAA 0F:FC9A: 30        .byte $30   ; 00
- D 3 - - - 0x03FCAB 0F:FC9B: 28        .byte $28   ; 01
- D 3 - - - 0x03FCAC 0F:FC9C: 28        .byte $28   ; 02
- - - - - - 0x03FCAD 0F:FC9D: 28        .byte $28   ; 03
- - - - - - 0x03FCAE 0F:FC9E: 28        .byte $28   ; 04
- D 3 - - - 0x03FCAF 0F:FC9F: 20        .byte $20   ; 05
- D 3 - - - 0x03FCB0 0F:FCA0: 08        .byte $08   ; 06
- D 3 - - - 0x03FCB1 0F:FCA1: A0        .byte $A0   ; 07
- D 3 - - - 0x03FCB2 0F:FCA2: 7C        .byte $7C   ; 08
- D 3 - - - 0x03FCB3 0F:FCA3: 28        .byte $28   ; 09
- D 3 - - - 0x03FCB4 0F:FCA4: 30        .byte $30   ; 0A
- D 3 - - - 0x03FCB5 0F:FCA5: 98        .byte $98   ; 0B
- D 3 - - - 0x03FCB6 0F:FCA6: 30        .byte $30   ; 0C
- D 3 - - - 0x03FCB7 0F:FCA7: 70        .byte $70   ; 0D
- D 3 - - - 0x03FCB8 0F:FCA8: 5F        .byte $5F   ; 0E
- D 3 - - - 0x03FCB9 0F:FCA9: 64        .byte $64   ; 0F
- D 3 - - - 0x03FCBA 0F:FCAA: 03        .byte $03   ; 10



tbl_FCAB_саундтрек:
- D 3 - - - 0x03FCBB 0F:FCAB: 2E        .byte con_music_ost_sewer   ; 00 con_fighter_leo
- D 3 - - - 0x03FCBC 0F:FCAC: 2F        .byte con_music_ost_down_town   ; 01 con_fighter_raph
- D 3 - - - 0x03FCBD 0F:FCAD: 2E        .byte con_music_ost_sewer   ; 02 con_fighter_mike
- D 3 - - - 0x03FCBE 0F:FCAE: 2F        .byte con_music_ost_down_town   ; 03 con_fighter_don
- D 3 - - - 0x03FCBF 0F:FCAF: 30        .byte con_music_ost_pirate_ship   ; 04 con_fighter_casey
- D 3 - - - 0x03FCC0 0F:FCB0: 30        .byte con_music_ost_pirate_ship   ; 05 con_fighter_hot
- D 3 - - - 0x03FCC1 0F:FCB1: 31        .byte con_music_ost_water_front   ; 06 con_fighter_shred
- D 3 - - - 0x03FCC2 0F:FCB2: 42        .byte con_music_ost_technodrome   ; 07 



tbl_FCBA_звук_no_time:
- D 3 - - - 0x03FCCA 0F:FCBA: 33        .byte con_music_no_time_sewer   ; 00 con_fighter_leo
- D 3 - - - 0x03FCCB 0F:FCBB: 34        .byte con_music_no_time_down_town   ; 01 con_fighter_raph
- D 3 - - - 0x03FCCC 0F:FCBC: 33        .byte con_music_no_time_sewer   ; 02 con_fighter_mike
- D 3 - - - 0x03FCCD 0F:FCBD: 34        .byte con_music_no_time_down_town   ; 03 con_fighter_don
- D 3 - - - 0x03FCCE 0F:FCBE: 35        .byte con_music_no_time_pirate_ship   ; 04 con_fighter_casey
- D 3 - - - 0x03FCCF 0F:FCBF: 35        .byte con_music_no_time_pirate_ship   ; 05 con_fighter_hot
- D 3 - - - 0x03FCD0 0F:FCC0: 36        .byte con_music_no_time_water_front   ; 06 con_fighter_shred
- - - - - - 0x03FCD1 0F:FCC1: 3B        .byte con_075C_3B   ; 07 



loc_FCC9_вычислить_скроллинг_фона:
C D 3 - - - 0x03FCD9 0F:FCC9: A9 00     LDA #$00
C - - - - - 0x03FCDB 0F:FCCB: 85 B7     STA ram_00B7
C - - - - - 0x03FCDD 0F:FCCD: 38        SEC
C - - - - - 0x03FCDE 0F:FCCE: A5 A6     LDA ram_screen_pos_X
C - - - - - 0x03FCE0 0F:FCD0: E9 60     SBC #$60
C - - - - - 0x03FCE2 0F:FCD2: B0 05     BCS bra_FCD9
C - - - - - 0x03FCE4 0F:FCD4: E6 B7     INC ram_00B7
C - - - - - 0x03FCE6 0F:FCD6: 20 FC D1  JSR sub_D1FC_EOR
bra_FCD9:
C - - - - - 0x03FCE9 0F:FCD9: 85 B8     STA ram_00B8
C - - - - - 0x03FCEB 0F:FCDB: A9 00     LDA #$00
C - - - - - 0x03FCED 0F:FCDD: 85 BA     STA ram_00BA
; / 20
; bzk optimize, адреса 00BD 00BE 00BF бесполезные
C - - - - - 0x03FCEF 0F:FCDF: A5 B8     LDA ram_00B8
C - - - - - 0x03FCF1 0F:FCE1: 4A        LSR
C - - - - - 0x03FCF2 0F:FCE2: 85 BD     STA ram_00BD
C - - - - - 0x03FCF4 0F:FCE4: 66 BA     ROR ram_00BA
C - - - - - 0x03FCF6 0F:FCE6: 4A        LSR
C - - - - - 0x03FCF7 0F:FCE7: 66 BA     ROR ram_00BA
C - - - - - 0x03FCF9 0F:FCE9: 4A        LSR
C - - - - - 0x03FCFA 0F:FCEA: 66 BA     ROR ram_00BA
C - - - - - 0x03FCFC 0F:FCEC: 85 BE     STA ram_00BE
C - - - - - 0x03FCFE 0F:FCEE: 4A        LSR
C - - - - - 0x03FCFF 0F:FCEF: 66 BA     ROR ram_00BA
C - - - - - 0x03FD01 0F:FCF1: 4A        LSR
C - - - - - 0x03FD02 0F:FCF2: 66 BA     ROR ram_00BA
C - - - - - 0x03FD04 0F:FCF4: 85 BF     STA ram_00BF
C - - - - - 0x03FD06 0F:FCF6: 85 B9     STA ram_00B9
C - - - - - 0x03FD08 0F:FCF8: A9 00     LDA #$00
C - - - - - 0x03FD0A 0F:FCFA: 85 BC     STA ram_00BC
C - - - - - 0x03FD0C 0F:FCFC: 85 BB     STA ram_00BB
C - - - - - 0x03FD0E 0F:FCFE: A2 00     LDX #$00
bra_FD00_loop:
C - - - - - 0x03FD10 0F:FD00: 18        CLC
C - - - - - 0x03FD11 0F:FD01: A5 BC     LDA ram_00BC
C - - - - - 0x03FD13 0F:FD03: 65 BA     ADC ram_00BA
C - - - - - 0x03FD15 0F:FD05: 85 BC     STA ram_00BC
C - - - - - 0x03FD17 0F:FD07: A5 BB     LDA ram_00BB
C - - - - - 0x03FD19 0F:FD09: 65 B9     ADC ram_00B9
C - - - - - 0x03FD1B 0F:FD0B: 85 BB     STA ram_00BB
C - - - - - 0x03FD1D 0F:FD0D: A4 B7     LDY ram_00B7
C - - - - - 0x03FD1F 0F:FD0F: F0 03     BEQ bra_FD14
C - - - - - 0x03FD21 0F:FD11: 20 FC D1  JSR sub_D1FC_EOR
bra_FD14:
C - - - - - 0x03FD24 0F:FD14: 18        CLC
C - - - - - 0x03FD25 0F:FD15: 69 60     ADC #$60
C - - - - - 0x03FD27 0F:FD17: 95 56     STA ram_0056,X
C - - - - - 0x03FD29 0F:FD19: E8        INX
C - - - - - 0x03FD2A 0F:FD1A: E0 23     CPX #$23
C - - - - - 0x03FD2C 0F:FD1C: 90 E2     BCC bra_FD00_loop
C - - - - - 0x03FD2E 0F:FD1E: 60        RTS



sub_FD1F:
C - - - - - 0x03FD2F 0F:FD1F: 20 96 EA  JSR sub_EA96_обновить_и_отрисовать_время_боя
C - - - - - 0x03FD32 0F:FD22: A5 AA     LDA ram_таймер_задержки_фпс
C - - - - - 0x03FD34 0F:FD24: F0 12     BEQ bra_FD38
C - - - - - 0x03FD36 0F:FD26: 30 05     BMI bra_FD2D_в_процессе_смерти
C - - - - - 0x03FD38 0F:FD28: C6 AA     DEC ram_таймер_задержки_фпс
bra_FD2A:
C - - - - - 0x03FD3A 0F:FD2A: 4C 02 FE  JMP loc_FE02
bra_FD2D_в_процессе_смерти:
C - - - - - 0x03FD3D 0F:FD2D: E6 AB     INC ram_таймер_замедления_фпс
C - - - - - 0x03FD3F 0F:FD2F: 38        SEC
C - - - - - 0x03FD40 0F:FD30: A5 AB     LDA ram_таймер_замедления_фпс
C - - - - - 0x03FD42 0F:FD32: E9 04     SBC #$04
C - - - - - 0x03FD44 0F:FD34: 90 F4     BCC bra_FD2A
C - - - - - 0x03FD46 0F:FD36: 85 AB     STA ram_таймер_замедления_фпс
bra_FD38:
C - - - - - 0x03FD48 0F:FD38: E6 2A     INC ram_002A
C - - - - - 0x03FD4A 0F:FD3A: AC 30 06  LDY ram_0630_таймер
C - - - - - 0x03FD4D 0F:FD3D: F0 08     BEQ bra_FD47
C - - - - - 0x03FD4F 0F:FD3F: CE 30 06  DEC ram_0630_таймер
C - - - - - 0x03FD52 0F:FD42: B9 36 FE  LDA tbl_FE37 - $01,Y
C - - - - - 0x03FD55 0F:FD45: 85 86     STA ram_0086
bra_FD47:
C - - - - - 0x03FD57 0F:FD47: 20 75 F7  JSR sub_F775_вычислить_расстояние_между_персами
C - - - - - 0x03FD5A 0F:FD4A: 20 0B F7  JSR sub_F70B_обработчик_ai
C - - - - - 0x03FD5D 0F:FD4D: 20 04 80  JSR sub_0x024014
C - - - - - 0x03FD60 0F:FD50: 20 91 AD  JSR sub_0x026DA1
C - - - - - 0x03FD63 0F:FD53: 20 3B FF  JSR sub_FF3B_вычисление_приоритета_игрока_в_бою
loc_FD57_loop:
C D 3 - - - 0x03FD67 0F:FD57: A6 AD     LDX ram_00AD
C - - - - - 0x03FD69 0F:FD59: BD 36 06  LDA ram_0636_plr,X ; 0636 0637 
C - - - - - 0x03FD6C 0F:FD5C: F0 14     BEQ bra_FD72
C - - - - - 0x03FD6E 0F:FD5E: DE 36 06  DEC ram_0636_plr,X ; 0636 0637 
C - - - - - 0x03FD71 0F:FD61: BD 10 05  LDA ram_obj_flip,X ; 0510 0511 
C - - - - - 0x03FD74 0F:FD64: 0A        ASL
C - - - - - 0x03FD75 0F:FD65: 0A        ASL
C - - - - - 0x03FD76 0F:FD66: A9 FF     LDA #$FF
C - - - - - 0x03FD78 0F:FD68: 90 02     BCC bra_FD6C
C - - - - - 0x03FD7A 0F:FD6A: A9 00     LDA #$00
bra_FD6C:
C - - - - - 0x03FD7C 0F:FD6C: 7D 80 04  ADC ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x03FD7F 0F:FD6F: 9D 80 04  STA ram_obj_spd_X_hi,X ; 0480 0481 
bra_FD72:
C - - - - - 0x03FD82 0F:FD72: A6 AD     LDX ram_00AD
C - - - - - 0x03FD84 0F:FD74: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x03FD87 0F:FD77: 0A        ASL
C - - - - - 0x03FD88 0F:FD78: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x03FD8B 0F:FD7B: B0 1C     BCS bra_FD99
C - - - - - 0x03FD8D 0F:FD7D: A9 E8     LDA #$E8
C - - - - - 0x03FD8F 0F:FD7F: BC 10 04  LDY ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x03FD92 0F:FD82: C0 B0     CPY #con_координата_пола
C - - - - - 0x03FD94 0F:FD84: B0 02     BCS bra_FD88
C - - - - - 0x03FD96 0F:FD86: A9 E7     LDA #$E7
bra_FD88:
C - - - - - 0x03FD98 0F:FD88: DD 40 04  CMP ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x03FD9B 0F:FD8B: F0 02     BEQ bra_FD8F
C - - - - - 0x03FD9D 0F:FD8D: B0 0A     BCS bra_FD99
bra_FD8F:
C - - - - - 0x03FD9F 0F:FD8F: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x03FDA2 0F:FD92: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x03FDA5 0F:FD95: 10 1D     BPL bra_FDB4
- - - - - - 0x03FDA7 0F:FD97: 30 18     BMI bra_FDB1   ; jmp
bra_FD99:
C - - - - - 0x03FDA9 0F:FD99: A9 18     LDA #$18
C - - - - - 0x03FDAB 0F:FD9B: BC 10 04  LDY ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x03FDAE 0F:FD9E: C0 B0     CPY #con_координата_пола
C - - - - - 0x03FDB0 0F:FDA0: B0 02     BCS bra_FDA4
C - - - - - 0x03FDB2 0F:FDA2: A9 19     LDA #$19
bra_FDA4:
C - - - - - 0x03FDB4 0F:FDA4: DD 40 04  CMP ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x03FDB7 0F:FDA7: 90 08     BCC bra_FDB1
C - - - - - 0x03FDB9 0F:FDA9: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 
C - - - - - 0x03FDBC 0F:FDAC: BD 80 04  LDA ram_obj_spd_X_hi,X ; 0480 0481 
C - - - - - 0x03FDBF 0F:FDAF: 30 03     BMI bra_FDB4
bra_FDB1:
C - - - - - 0x03FDC1 0F:FDB1: 20 65 DB  JSR sub_DB65_добавить_spd_X_к_pos_X
bra_FDB4:
C - - - - - 0x03FDC4 0F:FDB4: 20 4C DB  JSR sub_DB4C_добавить_spd_Z_к_pos_Y
C - - - - - 0x03FDC7 0F:FDB7: BD 30 05  LDA ram_0530_obj_state,X ; 0520 0521 
C - - - - - 0x03FDCA 0F:FDBA: C9 03     CMP #$03
C - - - - - 0x03FDCC 0F:FDBC: D0 1F     BNE bra_FDDD
C - - - - - 0x03FDCE 0F:FDBE: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x03FDD1 0F:FDC1: C9 04     CMP #con_plr_state_нокаут
C - - - - - 0x03FDD3 0F:FDC3: F0 18     BEQ bra_FDDD
C - - - - - 0x03FDD5 0F:FDC5: C9 09     CMP #$09
C - - - - - 0x03FDD7 0F:FDC7: B0 14     BCS bra_FDDD
C - - - - - 0x03FDD9 0F:FDC9: BD 60 04  LDA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x03FDDC 0F:FDCC: 30 0F     BMI bra_FDDD
C - - - - - 0x03FDDE 0F:FDCE: 1D 60 04  ORA ram_obj_spd_Z_hi,X ; 0460 0461 
C - - - - - 0x03FDE1 0F:FDD1: F0 0A     BEQ bra_FDDD
C - - - - - 0x03FDE3 0F:FDD3: A9 B1     LDA #con_координата_пола + $01
C - - - - - 0x03FDE5 0F:FDD5: DD 10 04  CMP ram_obj_pos_Y_lo,X ; 0410 0411 
C - - - - - 0x03FDE8 0F:FDD8: B0 03     BCS bra_FDDD
C - - - - - 0x03FDEA 0F:FDDA: 9D 10 04  STA ram_obj_pos_Y_lo,X ; 0410 0411 
bra_FDDD:
C - - - - - 0x03FDED 0F:FDDD: 20 3F A2  JSR sub_0x02624F
C - - - - - 0x03FDF0 0F:FDE0: A6 AD     LDX ram_00AD
C - - - - - 0x03FDF2 0F:FDE2: 20 91 A9  JSR sub_0x0269A1
C D 3 - - - 0x03FF23 0F:FF13: A5 9D     LDA ram_009D
C - - - - - 0x03FF25 0F:FF15: D0 0A     BNE bra_FF21
C - - - - - 0x03FF27 0F:FF17: E6 AD     INC ram_00AD
C - - - - - 0x03FF29 0F:FF19: A5 AD     LDA ram_00AD
C - - - - - 0x03FF2B 0F:FF1B: 4A        LSR
C - - - - - 0x03FF2C 0F:FF1C: F0 07     BEQ bra_FF25
C - - - - - 0x03FF2E 0F:FF1E: 4C EC FD  BNE bra_FDEC    ; jmp
bra_FF21:
C - - - - - 0x03FF31 0F:FF21: C6 AD     DEC ram_00AD
C - - - - - 0x03FF33 0F:FF23: 30 F9     BMI bra_FDEC
bra_FF25:
C - - - - - 0x03FF35 0F:FF25: 4C 57 FD  JMP loc_FD57_loop
bra_FDEC:
C D 3 - - - 0x03FDFC 0F:FDEC: AD 35 06  LDA ram_0635_флаг_обновления_очков
C - - - - - 0x03FDFF 0F:FDEF: F0 08     BEQ bra_FDF9_очки_не_менялись
C - - - - - 0x03FE01 0F:FDF1: A9 00     LDA #$00
C - - - - - 0x03FE03 0F:FDF3: 8D 35 06  STA ram_0635_флаг_обновления_очков
C - - - - - 0x03FE06 0F:FDF6: 20 F6 AF  JSR sub_0x027006_отрисовать_инфу_в_статусбаре
bra_FDF9_очки_не_менялись:
C - - - - - 0x03FE09 0F:FDF9: 20 42 B1  JSR sub_0x027152
                                        JSR sub_F5E7_swap_prg_16
C - - - - - 0x03FE0C 0F:FDFC: 20 4F 9E  JSR sub_0x025E5F_обработка_состояния_мяча
C - - - - - 0x03FE0F 0F:FDFF: 20 AB A8  JSR sub_0x0268BB_обработчик_состояния_летящего_сплинтера
                                        JSR sub_F617_restore_prg
loc_FE02:
C D 3 - - - 0x03FE12 0F:FE02: 20 E8 BA  JSR sub_0x027AF8
C - - - - - 0x03FE15 0F:FE05: A2 0F     LDX #$0F
bra_FE07_loop:
C - - - - - 0x03FE17 0F:FE07: BD E0 05  LDA ram_05E0_obj,X ; 05E0 05E1 05E2 05E3 05E4 05E5 05E6 05E7 05E8 05E9 05EA 05EB 05EC 05ED 05EE 05EF 
C - - - - - 0x03FE1A 0F:FE0A: 10 27     BPL bra_FE33
C - - - - - 0x03FE1C 0F:FE0C: 38        SEC
C - - - - - 0x03FE1D 0F:FE0D: BD 50 04  LDA ram_obj_spd_X_fr,X ; 0450 0451 0454 0455 0456 045A 045B 
C - - - - - 0x03FE20 0F:FE10: ED 3D 06  SBC ram_063D
C - - - - - 0x03FE23 0F:FE13: 9D 50 04  STA ram_obj_spd_X_fr,X ; 0450 0451 0454 0455 0456 045A 045B 
C - - - - - 0x03FE26 0F:FE16: A0 00     LDY #$00
C - - - - - 0x03FE28 0F:FE18: 84 00     STY ram_0000
C - - - - - 0x03FE2A 0F:FE1A: 38        SEC
C - - - - - 0x03FE2B 0F:FE1B: AD 3C 06  LDA ram_063C
C - - - - - 0x03FE2E 0F:FE1E: 10 02     BPL bra_FE22
C - - - - - 0x03FE30 0F:FE20: C6 00     DEC ram_0000
bra_FE22:
C - - - - - 0x03FE32 0F:FE22: BD 40 04  LDA ram_obj_pos_X_lo,X ; 0440 0441 0444 0445 0446 044A 044B 
C - - - - - 0x03FE35 0F:FE25: ED 3C 06  SBC ram_063C
C - - - - - 0x03FE38 0F:FE28: 9D 40 04  STA ram_obj_pos_X_lo,X ; 0440 0441 0444 0445 0446 044A 044B 
C - - - - - 0x03FE3B 0F:FE2B: BD 30 04  LDA ram_obj_pos_X_hi,X ; 0430 0431 0434 0435 0436 043A 043B 
C - - - - - 0x03FE3E 0F:FE2E: E5 00     SBC ram_0000
C - - - - - 0x03FE40 0F:FE30: 9D 30 04  STA ram_obj_pos_X_hi,X ; 0430 0431 0434 0435 0436 043A 043B 
bra_FE33:
C - - - - - 0x03FE43 0F:FE33: CA        DEX
C - - - - - 0x03FE44 0F:FE34: 10 D1     BPL bra_FE07_loop
C - - - - - 0x03FE46 0F:FE36: 60        RTS



tbl_FE37:
; будет использовано в спрайтовом движке в 0x03D819?
- D 3 - - - 0x03FE47 0F:FE37: 00        .byte $00   ; 01
- D 3 - - - 0x03FE48 0F:FE38: 01        .byte $01   ; 02
- D 3 - - - 0x03FE49 0F:FE39: FF        .byte $FF   ; 03
- D 3 - - - 0x03FE4A 0F:FE3A: 00        .byte $00   ; 04
- D 3 - - - 0x03FE4B 0F:FE3B: 01        .byte $01   ; 05
- D 3 - - - 0x03FE4C 0F:FE3C: 02        .byte $02   ; 06
- D 3 - - - 0x03FE4D 0F:FE3D: 01        .byte $01   ; 07
- D 3 - - - 0x03FE4E 0F:FE3E: 00        .byte $00   ; 08
- D 3 - - - 0x03FE4F 0F:FE3F: FF        .byte $FF   ; 09
- D 3 - - - 0x03FE50 0F:FE40: FE        .byte $FE   ; 0A
- D 3 - - - 0x03FE51 0F:FE41: FF        .byte $FF   ; 0B
- D 3 - - - 0x03FE52 0F:FE42: 00        .byte $00   ; 0C
- D 3 - - - 0x03FE53 0F:FE43: 02        .byte $02   ; 0D
- D 3 - - - 0x03FE54 0F:FE44: FE        .byte $FE   ; 0E
- D 3 - - - 0x03FE55 0F:FE45: 00        .byte $00   ; 0F
- D 3 - - - 0x03FE56 0F:FE46: 02        .byte $02   ; 10
- D 3 - - - 0x03FE57 0F:FE47: 00        .byte $00   ; 11
- D 3 - - - 0x03FE58 0F:FE48: 00        .byte $00   ; 12
- D 3 - - - 0x03FE59 0F:FE49: FE        .byte $FE   ; 13
- D 3 - - - 0x03FE5A 0F:FE4A: 00        .byte $00   ; 14
- D 3 - - - 0x03FE5B 0F:FE4B: 00        .byte $00   ; 15
- D 3 - - - 0x03FE5C 0F:FE4C: 02        .byte $02   ; 16
- D 3 - - - 0x03FE5D 0F:FE4D: 00        .byte $00   ; 17
- D 3 - - - 0x03FE5E 0F:FE4E: 00        .byte $00   ; 18
- D 3 - - - 0x03FE5F 0F:FE4F: FE        .byte $FE   ; 19
- D 3 - - - 0x03FE60 0F:FE50: 00        .byte $00   ; 1A
- D 3 - - - 0x03FE61 0F:FE51: 00        .byte $00   ; 1B
- D 3 - - - 0x03FE62 0F:FE52: 00        .byte $00   ; 1C
- D 3 - - - 0x03FE63 0F:FE53: 02        .byte $02   ; 1D
- D 3 - - - 0x03FE64 0F:FE54: 00        .byte $00   ; 1E
- D 3 - - - 0x03FE65 0F:FE55: 00        .byte $00   ; 1F
- D 3 - - - 0x03FE66 0F:FE56: FE        .byte $FE   ; 20


; bzk garbage?
- - - - - - 0x03FE67 0F:FE57: EA        .byte $EA   ; 



loc_FE58_отрисовка_экрана_главное_меню:
loc_0x03FE68_отрисовка_экрана_главное_меню:
C - - - - - 0x03FE6E 0F:FE5E: A9 00     LDA #con_script_draw_главное_меню
C - - - - - 0x03FE70 0F:FE60: 20 AE F5  JSR sub_F5AE_подготовить_новый_скрипт
C - - - - - 0x03F579 0F:F569: 20 C2 F6  JSR sub_F6C2_выключить_музыку_и_звуки
C - - - - - 0x03FE73 0F:FE63: 4C 3E E1  JMP loc_E13E_подготовить_затемнение_из_белого_в_цветной



sub_0x03FE76:
; bzk optimize, переместить в банк 12 когда там будет место
C - - - - - 0x03FE76 0F:FE66: AC 28 01  LDY ram_option_health
C - - - - - 0x03FE79 0F:FE69: C0 03     CPY #$03
C - - - - - 0x03FE7B 0F:FE6B: F0 0C     BEQ bra_FE79_RTS
C - - - - - 0x03FE7D 0F:FE6D: BC 0D 01  LDY ram_plr_hp_hi,X ; 010D 010E 
C - - - - - 0x03FE80 0F:FE70: D0 04     BNE bra_FE76
C - - - - - 0x03FE82 0F:FE72: DE 90 05  DEC ram_plr_hp_lo,X ; 0590 0591 
C - - - - - 0x03FE85 0F:FE75: 60        RTS
bra_FE76:
C - - - - - 0x03FE86 0F:FE76: DE 0D 01  DEC ram_plr_hp_hi,X ; 010D 010E 
bra_FE79_RTS:
C - - - - - 0x03FE89 0F:FE79: 60        RTS



loc_0x03FEAF:
C D 3 - - - 0x03FEAF 0F:FE9F: 30 0B     BMI bra_FEAC
C - - - - - 0x03FEB1 0F:FEA1: D0 0B     BNE bra_FEAE
C - - - - - 0x03FEB3 0F:FEA3: B9 10 04  LDA ram_obj_pos_Y_lo,Y ; 0410 0411 
C - - - - - 0x03FEB6 0F:FEA6: C9 B0     CMP #con_координата_пола
C - - - - - 0x03FEB8 0F:FEA8: A9 02     LDA #$02
C - - - - - 0x03FEBA 0F:FEAA: B0 0A     BCS bra_FEB6
bra_FEAC:
C - - - - - 0x03FEBC 0F:FEAC: A9 30     LDA #con_0552_special_shred_волна ; обычный удар, но для совместимости считаем, что shred_волна
bra_FEAE:
C - - - - - 0x03FEBE 0F:FEAE: 0A        ASL
C - - - - - 0x03FEBF 0F:FEAF: 6D 26 01  ADC ram_option_speed
C - - - - - 0x03FEC2 0F:FEB2: A8        TAY
C - - - - - 0x03FEC3 0F:FEB3: B9 5C FE  LDA tbl_FEBA - con_колво_обычных_ударов * $02,Y
bra_FEB6:
C - - - - - 0x03FEC6 0F:FEB6: 9D F0 05  STA ram_05F0_obj,X ; 05F0 05F1 
C - - - - - 0x03FEC9 0F:FEB9: 60        RTS



tbl_FEBA:
;                                              +---------- 00 normal
;                                              |    +----- 01 turbo
;                                              |    |
- D 3 - - - 0x03FECA 0F:FEBA: 04        .byte $04, $02   ; 5E
- D 3 - - - 0x03FECC 0F:FEBC: 01        .byte $01, $01   ; 5F
- - - - - - 0x03FECE 0F:FEBE: 04        .byte $04, $01   ; 60
- - - - - - 0x03FED0 0F:FEC0: 02        .byte $02, $02   ; 61
- D 3 - - - 0x03FED2 0F:FEC2: 03        .byte $03, $01   ; 62
- - - - - - 0x03FED4 0F:FEC4: 03        .byte $03, $01   ; 63
- D 3 - - - 0x03FED6 0F:FEC6: 04        .byte $04, $02   ; 64
- - - - - - 0x03FED8 0F:FEC8: 04        .byte $04, $03   ; 65
- D 3 - - - 0x03FEDA 0F:FECA: 01        .byte $01, $01   ; 66
- - - - - - 0x03FEDC 0F:FECC: 01        .byte $01, $02   ; 67
- D 3 - - - 0x03FEDE 0F:FECE: 04        .byte $04, $02   ; 68



loc_0x03FEEF:
C D 3 - - - 0x03FEEF 0F:FEDF: BD 20 05  LDA ram_obj_state_hi,X ; 0520 0521 
C - - - - - 0x03FEF2 0F:FEE2: C9 08     CMP #con_plr_state_делает_суперку
C - - - - - 0x03FEF4 0F:FEE4: D0 03     BNE bra_FEE9
- - - - - - 0x03FEF6 0F:FEE6: BD 80 05  LDA ram_0580_obj,X
bra_FEE9:
C - - - - - 0x03FEF9 0F:FEE9: C9 02     CMP #$02
C - - - - - 0x03FEFB 0F:FEEB: 49 07     EOR #$07
C - - - - - 0x03FEFD 0F:FEED: 60        RTS



sub_0x03FF1D:
C - - - - - 0x03FF1D 0F:FF0D: 20 E7 F5  JSR sub_F5E7_swap_prg_16
C - - - - - 0x03FF20 0F:FF10: 4C D6 A6  JSR sub_0x02E6E6
                                        JMP loc_F617_restore_prg



sub_FF3B_вычисление_приоритета_игрока_в_бою:
sub_0x03FF4B_вычисление_приоритета_игрока_в_бою:
C - - - - - 0x03FF4B 0F:FF3B: A2 01     LDX #$01
C - - - - - 0x03FF4D 0F:FF3D: AD 54 01  LDA ram_0154
C - - - - - 0x03FF50 0F:FF40: 0A        ASL
C - - - - - 0x03FF51 0F:FF41: A8        TAY
C - - - - - 0x03FF52 0F:FF42: B9 56 01  LDA ram_tournament_индекс_игрока + $01,Y ; 0156 0158 015A 
                                        ADC ram_tournament_индекс_игрока,Y ; 0155 0157 0159 
                                        BPL bra_FF5A    ; if никто из соперников cpu, либо оба cpu
                                        LDA ram_tournament_индекс_игрока,Y ; 0155 0157 0159 
                                        BPL bra_FF6D    ; if 2 соперник cpu
                                        BMI bra_FF6C    ; jmp if 1 соперник cpu
bra_FF5A:
C - - - - - 0x03FF5A 0F:FF4A: AD 0D 01  LDA ram_plr_hp_hi
C - - - - - 0x03FF5D 0F:FF4D: 0D 0E 01  ORA ram_plr_hp_hi + $01
C - - - - - 0x03FF60 0F:FF50: F0 09     BEQ bra_FF5B
C - - - - - 0x03FF62 0F:FF52: AD 0D 01  LDA ram_plr_hp_hi
C - - - - - 0x03FF65 0F:FF55: CD 0E 01  CMP ram_plr_hp_hi + $01
C - - - - - 0x03FF68 0F:FF58: 4C 61 FF  JMP loc_FF61
bra_FF5B:
C - - - - - 0x03FF6B 0F:FF5B: AD 90 05  LDA ram_plr_hp_lo
C - - - - - 0x03FF6E 0F:FF5E: CD 91 05  CMP ram_plr_hp_lo + $01
loc_FF61:
C D 3 - - - 0x03FF71 0F:FF61: D0 07     BNE bra_FF6A
C - - - - - 0x03FF73 0F:FF63: AD 40 06  LDA ram_номер_раунда_боя
C - - - - - 0x03FF76 0F:FF66: 29 01     AND #$01
C - - - - - 0x03FF78 0F:FF68: D0 02     BNE bra_FF6C
bra_FF6A:
C - - - - - 0x03FF7A 0F:FF6A: B0 01     BCS bra_FF6D
bra_FF6C:
C - - - - - 0x03FF7C 0F:FF6C: CA        DEX ; 00
bra_FF6D:
C - - - - - 0x03FF7D 0F:FF6D: 86 9D     STX ram_009D
C - - - - - 0x03FF7F 0F:FF6F: 86 AD     STX ram_00AD
C - - - - - 0x03FF81 0F:FF71: 60        RTS



loc_0x03F6EC_броски:
C - - J - - 0x03F6EC 0F:F6DC: 20 F3 F5  JSR sub_F5F3_swap_prg_1C
C - - - - - 0x03F6EF 0F:F6DF: 20 01 80  JSR sub_0x0251AA_броски
C - - - - - 0x03F6F2 0F:F6E2: 4C 17 F6  JMP loc_F617_restore_prg



sub_0x02519C:
; перемещено из банка 1A
C - - - - - 0x02519C 09:918C: A4 A9     LDY ram_global_obj_index
C - - - - - 0x02519E 09:918E: B9 20 05  LDA ram_obj_state_hi,Y ; 0520 0521 
C - - - - - 0x0251A1 09:9191: C9 0A     CMP #con_plr_state_брошен_соперником
C - - - - - 0x0251A3 09:9193: D0 72     BNE bra_9199_RTS
C - - - - - 0x0251A5 09:9195: B9 40 05  LDA ram_obj_state_lo,Y ; 0540 0541 
C - - - - - 0x0251A8 09:9198: 4A        LSR
bra_9199_RTS:
C - - - - - 0x0251A9 09:9199: 60        RTS



tbl_0x03E32D_индекс_анимации_портрета:
                                        .byte $1B ; 00 con_fighter_leo
                                        .byte $1C ; 01 con_fighter_raph
                                        .byte $1D ; 02 con_fighter_mike
                                        .byte $1E ; 03 con_fighter_don
                                        .byte $1F ; 04 con_fighter_casey
                                        .byte $20 ; 05 con_fighter_hot
                                        .byte $21 ; 06 con_fighter_shred
                                    .if con_новые_персы <> $00
                                        .byte $1B ; 07 con_fighter___leo
                                        .byte $1C ; 08 con_fighter___raph
                                        .byte $1D ; 09 con_fighter___mike
                                        .byte $1E ; 0A con_fighter___don
                                        .byte $1F ; 0B con_fighter___casey
                                        .byte $20 ; 0C con_fighter___hot
                                        .byte $21 ; 0D con_fighter___shred
                                    .endif



_общий_RTS:
                                        RTS



.out .sprintf("Free bytes in bank FF: %d [%Xh]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x04000A 0F:FFFA: 19 F2     .word vec_F219_NMI
- D 3 - - - 0x04000C 0F:FFFC: 6D F1     .word vec_F16D_RESET
- D 3 - - - 0x04000E 0F:FFFE: 5E F8     .word vec_F85E_IRQ



