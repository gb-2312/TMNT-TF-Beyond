; TODO
; найти победные анимации
; выяснить где подключался банк 00 для 0x003F10
; удалить con_screen_bonus_tmnt



; TODO
; добавить комменты
    ; 
; добавить con
    ; 
; пофиксить баги
    ; 



; ПОДСКАЗКИ (используются как комменты) для удобного поиска
; tip_индекс_буфера_палитры = 0x03D358



; MISC разное
con_bank_id                             = $00 ; использовать только для указания байта в начале банка в 8000
con_prg_bank                            = $00 ; 
con_chr_bank                            = $00 ; в теории возможно и для фона, и для спрайтов
con_chr_bank_bg                         = $00 ; только для фона
con_chr_bank_spr                        = $00 ; только для спрайтов
con_AF40_pal                            = $00 ; индекс для 0x02EF56
                                                ; не найдены 0A 15 16 21 22 28 34
                                                ; никогда не используются 09 0B 0C 29 3C (0x03D596 и 0x03D5AA)



; CUSTOM для будущего расширения списков с данными
con_новые_персы                         = $00 ; 00 = выкл, остальные = вкл
                                                ; осбоые коды 0x03FF82 0x02EA2D 0x024AF7

.if con_новые_персы = $00
    con_колво_персов                    = $07 ; для вычислений (оригинал)
.else
    con_колво_персов                    = $0E ; для вычислений (новые персы)
.endif

con_колво_шаблонов_ai                   = $46 ; для вычислений
con_колво_обычных_ударов                = $3F ; для вычислений



; ram_btn_press
; ram_sum_btn_press
; ram_btn_hold
; ram_sum_btn_hold
con_btn_Right                           = $01 ; 
con_btn_Left                            = $02 ; 
con_btn_Down                            = $04 ; 
con_btn_Up                              = $08 ; 
con_btn_Start                           = $10 ; 
con_btn_Select                          = $20 ; 
con_btn_B                               = $40 ; 
con_btn_A                               = $80 ; 

con_btns_Dpad                           = con_btn_Right + con_btn_Left + con_btn_Down + con_btn_Up  ; 0F
con_btns_AB                             = con_btn_A + con_btn_B                                     ; C0
con_btns_LR                             = con_btn_Left + con_btn_Right                              ; 03
con_btns_UD                             = con_btn_Up + con_btn_Down                                 ; 0C
con_btns_SS                             = con_btn_Start + con_btn_Select                            ; 30



; обработчик буфера для 0x030016
con_buf_mode_01                         = $01 ; записать список байтов, FF = end token, +01
con_buf_mode_02                         = $02 ; записать список байтов, FF = end token, +32
con_buf_mode_03                         = $03 ; счетчик + запись байта N раз, +01
con_buf_mode_04                         = $04 ; счетчик + запись байта N раз с постоянным его увеличением, +01
con_buf_mode_05                         = $05 ; счетчик + запись байта N раз, +32



; ram_script_draw_hi
; обработчик в 0x03F396
con_script_draw_главное_меню            = $00 ; там где выбирать режим игры
con_script_draw_vs_экран                = $01 ; 
con_script_draw_очистка_1               = $02 ; отключает irq и делает очистку
con_script_draw_очистка_2               = $03 ; тоже чета делает, но не много, потом идет 04
con_script_draw_04                      = $04 ; хз как назвать, какой-то общий обработчик для разных экранов
con_script_draw_konami                  = $05 ; экран с KONAMI
con_script_draw_копирайты               = $06 ; самый первый экран
con_script_draw_options                 = $07 ; экран с опциями
con_script_draw_tournament_1            = $08 ; скрипт отключает irq перед 09
con_script_draw_tournament_2            = $09 ; экран с клавиатурой
con_script_draw_opening                 = $0A ; первая катсцена
con_script_draw_ending                  = $0B ; финальная катсцена
con_script_draw_topscore                = $0C ; телка с микрофоном



; ram_plr_id
; ram_obj_id
; ram_номер_боя_story
; оригинальные персы
con_fighter_leo                         = $00 ; 00 leo
con_fighter_raph                        = $01 ; 01 raph
con_fighter_mike                        = $02 ; 02 mike
con_fighter_don                         = $03 ; 03 don
con_fighter_casey                       = $04 ; 04 casey
con_fighter_hot                         = $05 ; 05 hot
con_fighter_shred                       = $06 ; 06 shred
; копии оригинальных персов
con_fighter___leo                       = $07 ; 07 
con_fighter___raph                      = $08 ; 08 
con_fighter___mike                      = $09 ; 09 
con_fighter___don                       = $0A ; 0A 
con_fighter___casey                     = $0B ; 0B 
con_fighter___hot                       = $0C ; 0C 
con_fighter___shred                     = $0D ; 0D 



; ram_speech
; для 0x039B53
con_speech_manhattan                    = $00 ; 
con_speech_strange_letter               = $01 ; 
con_speech_offer_challenge              = $02 ; 
con_speech_lousy_tricks                 = $03 ; 
con_speech_celebrate                    = $04 ; 
con_speech_taste_defeat                 = $05 ; 
con_speech_expected_tougher             = $06 ; 
con_speech_try_hard_mode                = $07 ; 
con_speech_true_power                   = $08 ; 



; обработчики в 0x026292
con_0552_00                             = $00 ; отсутствие какого-либо удара (почему-то используется у хота)
con_0552_черепаха_рука_дальняя          = $01 ; черепаха рука дальняя
con_0552_черепаха_нога_ближняя          = $02 ; черепаха нога ближняя
con_0552_черепаха_рука_в_воздухе        = $03 ; черепаха рука в воздухе
con_0552_черепаха_нога_в_воздухе        = $04 ; черепаха нога в воздухе
con_0552_черепаха_рука_сидя             = $05 ; черепаха рука сидя
con_0552_черепаха_нога_сидя_обычная     = $06 ; черепаха нога сидя обычная
con_0552_черепаха_рука_ближняя          = $07 ; черепаха рука ближняя
con_0552_черепаха_нога_дальняя_обычная  = $08 ; черепаха нога дальняя обычная
con_0552_черепаха_нога_дальняя_raph     = $09 ; черепаха нога дальняя raph
con_0552_черепаха_нога_сидя_leo         = $0A ; черепаха нога сидя leo
con_0552_черепаха_деш_локтем            = $0B ; черепаха деш локтем
con_0552_черепаха_нога_антиэйр          = $0C ; черепаха нога антиэйр
con_0552_черепаха_рука_антиэйр          = $0D ; черепаха рука антиэйр
con_0552_черепаха_деш_ногой             = $0E ; черепаха деш ногой
con_0552_casey_рука_дальняя             = $0F ; casey рука дальняя
con_0552_casey_нога_ближняя             = $10 ; casey нога ближняя
con_0552_casey_рука_сидя                = $11 ; casey рука сидя
con_0552_casey_нога_сидя                = $12 ; casey нога сидя
con_0552_casey_рука_ближняя             = $13 ; casey рука ближняя
con_0552_casey_нога_дальняя             = $14 ; casey нога дальняя
con_0552_casey_рука_антиэйр             = $15 ; casey рука антиэйр
con_0552_casey_рука_в_воздухе           = $16 ; casey рука в воздухе
con_0552_casey_нога_в_воздухе           = $17 ; casey нога в воздухе
con_0552_casey_нога_антиэйр             = $18 ; casey нога антиэйр
con_0552_hot_рука_ближняя               = $19 ; hot рука ближняя
con_0552_hot_рука_дальняя               = $1A ; hot рука дальняя
con_0552_hot_рука_в_воздухе             = $1B ; hot рука в воздухе
con_0552_hot_рука_сидя                  = $1C ; hot рука сидя
con_0552_hot_нога_ближняя               = $1D ; hot нога ближняя
con_0552_hot_нога_дальняя               = $1E ; hot нога дальняя
con_0552_hot_нога_в_воздухе             = $1F ; hot нога в воздухе
con_0552_hot_нога_сидя                  = $20 ; hot нога сидя
con_0552_hot_бабочка                    = $21 ; hot бабочка
con_0552_hot_рука_антиэйр               = $22 ; hot рука антиэйр
con_0552_hot_нога_антиэйр               = $23 ; hot нога антиэйр
con_0552_shred_рука_ближняя             = $24 ; shred рука ближняя
con_0552_shred_рука_средняя             = $25 ; shred рука средняя
con_0552_shred_рука_дальняя             = $26 ; shred рука дальняя
con_0552_shred_рука_антиэйр             = $27 ; shred рука антиэйр
con_0552_shred_рука_в_воздухе           = $28 ; shred рука в воздухе
con_0552_shred_рука_сидя                = $29 ; shred рука сидя
con_0552_shred_нога_ближняя             = $2A ; shred нога ближняя
con_0552_shred_нога_дальняя             = $2B ; shred нога дальняя
con_0552_shred_нога_в_воздухе           = $2C ; shred нога в воздухе
con_0552_shred_нога_сидя                = $2D ; shred нога сидя
con_0552_shred_нога_антиэйр             = $2E ; shred нога антиэйр
con_0552_hot_ручка_быстрая              = $2F ; hot ручка быстрая
con_0552_special_hot_огонь              = $3F ; special hot огонь
con_0552_special_shred_волна            = $40 ; special shred волна
con_0552_special_leo_крутилка           = $41 ; special leo крутилка
con_0552_special_raph_сверло            = $42 ; special raph сверло
con_0552_special_mike_ракеты_понизу     = $43 ; special mike ракеты понизу
con_0552_special_mike_ракеты_поверху    = $44 ; special mike ракеты поверху
con_0552_special_don_пила_вращение      = $45 ; special don пила вращение
con_0552_special_shred_мясо             = $46 ; special shred мясо
con_0552_special_casey_клюшка           = $47 ; special casey клюшка
con_0552_special_don_пила_подкат        = $48 ; special don пила подкат
con_0552_special_casey_песок            = $49 ; special casey песок



; связано с 0552-0555
con_062E_hot_2x_огонь_в_блок            = $4A ; special hot 2x_огонь_в_блок



; ram_plr_индекс_атаки
; для 0x025411
con_0612_черепаха_рука_дальняя          = $00 ; 
con_0612_черепаха_нога_ближняя          = $01 ; 
con_0612_черепаха_рука_в_воздухе        = $02 ; 
con_0612_черепаха_нога_в_воздухе        = $03 ; 
con_0612_черепаха_рука_сидя             = $04 ; 
con_0612_черепаха_нога_сидя_обычная     = $05 ; 
con_0612_черепаха_рука_ближняя          = $06 ; 
con_0612_черепаха_нога_дальняя_обычная  = $07 ; 
con_0612_черепаха_нога_дальняя_raph     = $08 ; 
con_0612_черепаха_нога_сидя_leo         = $09 ; 
con_0612_черепаха_деш_локтем            = $0A ; 
con_0612_черепаха_нога_антиэйр          = $0B ; 
con_0612_черепаха_рука_антиэйр          = $0C ; 
con_0612_черепаха_деш_ногой             = $0D ; 
con_0612_casey_рука_дальняя             = $0E ; 
con_0612_casey_рука_в_воздухе           = $0F ; 
con_0612_casey_рука_сидя                = $10 ; 
con_0612_casey_рука_ближняя             = $11 ; 
con_0612_casey_рука_антиэйр             = $12 ; 
con_0612_casey_нога_ближняя             = $13 ; 
con_0612_casey_нога_дальняя             = $14 ; 
con_0612_casey_нога_в_воздухе           = $15 ; 
con_0612_casey_нога_сидя                = $16 ; 
con_0612_casey_нога_антиэйр             = $17 ; 
con_0612_hot_рука_ближняя               = $18 ; 
con_0612_hot_рука_дальняя               = $19 ; 
con_0612_hot_рука_в_воздухе             = $1A ; 
con_0612_hot_рука_сидя                  = $1B ; 
con_0612_hot_нога_ближняя               = $1C ; 
con_0612_hot_нога_дальняя               = $1D ; 
con_0612_hot_нога_в_воздухе             = $1E ; 
con_0612_hot_нога_сидя                  = $1F ; 
con_0612_hot_бабочка                    = $20 ; 
con_0612_hot_рука_антиэйр               = $21 ; 
con_0612_hot_нога_антиэйр               = $22 ; 
con_0612_shred_рука_ближняя             = $23 ; 
con_0612_shred_рука_средняя             = $24 ; 
con_0612_shred_рука_дальняя             = $25 ; 
con_0612_shred_рука_антиэйр             = $26 ; 
con_0612_shred_рука_в_воздухе           = $27 ; 
con_0612_shred_рука_сидя                = $28 ; 
con_0612_shred_нога_ближняя             = $29 ; 
con_0612_shred_нога_дальняя             = $2A ; 
con_0612_shred_нога_в_воздухе           = $2B ; 
con_0612_shred_нога_сидя                = $2C ; 
con_0612_shred_нога_антиэйр             = $2D ; 
con_0612_hot_ручка_быстрая              = $2E ; 



; ram_obj_0520
; обработчик в 0x02419B
; todo комменты в 0x03FDD5 0x03DEFE 0x0366E4 0x036685 0x036565
; 0x0277B9 0x0277BD 0x025BD7 0x025BDA 0x025A91 0x024A1E 0x02496E 0x02405F
con_plr_state_на_земле                  = $00 ; стоит на земле, ходит, бежит
con_plr_state_в_прыжке                  = $01 ; в прыжке (также пишется после смерти в 0x0249EF)
con_plr_state_подбирает_мяч             = $02 ; когда подбирает мяч (также пишется после смерти в 0x0249EF)
con_plr_state_получает_урон             = $03 ; получает урон (также пишется после смерти в 0x0249EF)
con_plr_state_нокаут                    = $04 ; отлетает с нокаутом и потом шатается (также пишется после смерти в 0x024A77)
con_plr_state_запускает_мяч             = $05 ; в процессе запуска мяча (также пишется после смерти в 0x024AC8)
con_plr_state_поворачивается            = $06 ; когда требуется повернуть перса потому что соперник теперь с другой стороны
con_plr_state_сидит                     = $07 ; сидит
con_plr_state_делает_суперку            = $08 ; делает суперку
con_plr_state_бросает_соперника         = $09 ; бросает через себя или кусает как раф
con_plr_state_брошен_соперником         = $0A ; тот кого бросили или закусили
con_plr_state_попался_в_мясо            = $0B ; тот кто попал в мясо шрушера
con_plr_state_победная_анимация         = $0C ; победная анимация



; ram_0095_стадия_игры
; todo комменты 0x03E197
; todo очень часто используется INC, переделать под LDA + STA
    ; для всех кроме в 0x0388A0
; todo иногда сравнивается для больше/меньше
; todo найти unused
con_0095_очистка_1                              = $00 ; 
con_0095_очистка_2                              = $01 ; 
con_0095_рожи_в_турнирной_сетке                 = $02 ; 
con_0095_старт_vs_экрана                        = $03 ; 
con_0095_vs_экран                               = $04 ; 
con_0095_подготовка_арены                       = $05 ; после 04/09
con_0095_раунд_начинается                       = $06 ; 
con_0095_раунд_идет                             = $07 ; 
con_0095__раунд_окончен                         = $08 ; 
con_0095_подсчет_очков                          = $09 ; после 08
con_0095_бой_окончен                            = $0A ; 
con_0095_время_вышло                            = $0B ; 
con_0095_раунд_окончен_по_времени               = $0C ; какой-то доп. флаг к 08
con_0095_старт_gameover_continue                = $0D ; 
con_0095_экран_gameover_continue                = $0E ; 
con_0095_tournament_окончен                     = $0F ; 
con_0095_tournament_финальный_экран             = $10 ; 
con_0095_старт_rematch_end                      = $11 ; 
con_0095_экран_rematch_end                      = $12 ; 
con_0095_переход_из_vs_cpu_в_vs_player_1        = $13 ; когда что-то нажато на 2-м джое
con_0095_переход_из_vs_cpu_в_vs_player_2        = $14 ; после 13. непонятно, для чего нужен
con_0095_победа_в_story                         = $15 ; 
; con_0095_16                                   = $16 ; 
con_0095_bonus_game_отрисовка_1                 = $17 ; 
con_0095_bonus_game_отрисовка_2                 = $18 ; 
con_0095_bonus_game_обработка                   = $19 ; 
con_0095_bonus_game_win                         = $1A ; 
con_0095_bonus_game_lose                        = $1B ; 
con_0095_bonus_game_закончен                    = $1C ; после 1A/1B
con_0095_старт_угроз_шреда_в_story              = $1D ; 
con_0095_экран_угроз_шреда_в_story              = $1E ; 
con_0095_старт_победной_речи_шреда_в_story      = $1F ; 
con_0095_экран_победной_речи_шреда_в_story      = $20 ; 



; индекс для 0x03DFF6
con_DFE6_00                             = $00 ; 
con_DFE6_01                             = $01 ; 
con_DFE6_02                             = $02 ; 
con_DFE6_03                             = $03 ; 
con_DFE6_04                             = $04 ; 
con_DFE6_05                             = $05 ; 
con_DFE6_06                             = $06 ; 
con_DFE6_07                             = $07 ; 
con_DFE6_08                             = $08 ; 
con_DFE6_09                             = $09 ; 
con_DFE6_0A                             = $0A ; 
con_DFE6_0B                             = $0B ; 
con_DFE6_0C                             = $0C ; 
con_DFE6_0D                             = $0D ; 
con_DFE6_0E                             = $0E ; 
con_DFE6_0F                             = $0F ; 
con_DFE6_10                             = $10 ; 
con_DFE6_11                             = $11 ; 
con_DFE6_12                             = $12 ; 
con_DFE6_13                             = $13 ; 
con_DFE6_14                             = $14 ; 
con_DFE6_15                             = $15 ; 
con_DFE6_16                             = $16 ; 
con_DFE6_17                             = $17 ; 
con_DFE6_18                             = $18 ; 
con_DFE6_19                             = $19 ; 



; ram_obj_04C0
; обработчик в 0x024C3B
; todo комменты 0x037F2B 0x036792
; con_04C0_00                             = $00 ; 
; con_04C0_01                             = $01 ; 
; con_04C0_02                             = $02 ; 
; con_04C0_03                             = $03 ; 
; con_04C0_04                             = $04 ; 
; con_04C0_05                             = $05 ; 
; con_04C0_06                             = $06 ; 
; con_04C0_07                             = $07 ; получение урона от мяча?
; con_04C0_08                             = $08 ; 



; ram_game_mode
; con_gm_story                            = $00 ; story
; con_gm_vs_player                        = $01 ; vs player
; con_gm_vs_cpu                           = $02 ; vs cpu
; con_gm_vs_team                          = $03 ; vs team
; con_gm_tournament                       = $04 ; tournament
; con_gm_options                          = $05 ; options



; ram_шаблон_ai
; шаблоны для 0x034B1D
; todo комменты 0x03EDD9
; con_шаблон_ai_00                      = $00 ; оставлен для комментов, вреале нету такого индекса
con_шаблон_ai_01                        = $01 ; блок стоя
con_шаблон_ai_02                        = $02 ; блок сидя
con_шаблон_ai_03                        = $03 ; 
con_шаблон_ai_04                        = $04 ; 
con_шаблон_ai_05                        = $05 ; 
con_шаблон_ai_06                        = $06 ; 
con_шаблон_ai_07                        = $07 ; 
con_шаблон_ai_08                        = $08 ; 
con_шаблон_ai_09                        = $09 ; 
con_шаблон_ai_0A                        = $0A ; 
con_шаблон_ai_0B                        = $0B ; 
con_шаблон_ai_0C                        = $0C ; 
con_шаблон_ai_0D                        = $0D ; подбег с броском
; con_шаблон_ai_0E                      = $0E ; unused
con_шаблон_ai_0F                        = $0F ; 
con_шаблон_ai_10                        = $10 ; рука
con_шаблон_ai_11                        = $11 ; 
con_шаблон_ai_12                        = $12 ; 
con_шаблон_ai_13                        = $13 ; подбег с броском
con_шаблон_ai_14                        = $14 ; 
con_шаблон_ai_15                        = $15 ; 
con_шаблон_ai_16                        = $16 ; 
con_шаблон_ai_17                        = $17 ; нога
con_шаблон_ai_18                        = $18 ; 
con_шаблон_ai_19                        = $19 ; 
con_шаблон_ai_1A                        = $1A ; 
con_шаблон_ai_1B                        = $1B ; 
con_шаблон_ai_1C                        = $1C ; 
con_шаблон_ai_1D                        = $1D ; клюшка
con_шаблон_ai_1E                        = $1E ; 
con_шаблон_ai_1F                        = $1F ; 
con_шаблон_ai_20                        = $20 ; 
con_шаблон_ai_21                        = $21 ; 
con_шаблон_ai_22                        = $22 ; 
con_шаблон_ai_23                        = $23 ; 
con_шаблон_ai_24                        = $24 ; обычное мясо
con_шаблон_ai_25                        = $25 ; волна шреда
con_шаблон_ai_26                        = $26 ; 
con_шаблон_ai_27                        = $27 ; 
con_шаблон_ai_28                        = $28 ; 
con_шаблон_ai_29                        = $29 ; 
con_шаблон_ai_2A                        = $2A ; 
con_шаблон_ai_2B                        = $2B ; 
con_шаблон_ai_2C                        = $2C ; 
con_шаблон_ai_2D                        = $2D ; 
con_шаблон_ai_2E                        = $2E ; 
con_шаблон_ai_2F                        = $2F ; 
; con_шаблон_ai_30                      = $30 ; unused
con_шаблон_ai_31                        = $31 ; 
con_шаблон_ai_32                        = $32 ; 
con_шаблон_ai_33                        = $33 ; 
con_шаблон_ai_34                        = $34 ; 
con_шаблон_ai_35                        = $35 ; 
con_шаблон_ai_36                        = $36 ; 
con_шаблон_ai_37                        = $37 ; 
; con_шаблон_ai_38                      = $38 ; unused
con_шаблон_ai_39                        = $39 ; 
con_шаблон_ai_3A                        = $3A ; песок
con_шаблон_ai_3B                        = $3B ; 
con_шаблон_ai_3C                        = $3C ; 
con_шаблон_ai_3D                        = $3D ; 
con_шаблон_ai_3E                        = $3E ; 
con_шаблон_ai_3F                        = $3F ; 
con_шаблон_ai_40                        = $40 ; 
con_шаблон_ai_41                        = $41 ; 
con_шаблон_ai_42                        = $42 ; быстрое мясо
con_шаблон_ai_43                        = $43 ; 
con_шаблон_ai_44                        = $44 ; 
con_шаблон_ai_45                        = $45 ; 



; поинтеры на текст, смотреть 0x030C10
; bzk optimize, переделать чтобы не было unused
con_print_story                         = $00 ; название опции в главном меню
con_print_vs_player                     = $01 ; название опции в главном меню
con_print_vs_cpu                        = $02 ; название опции в главном меню
con_print_vs_team                       = $03 ; название опции в главном меню
con_print_tournament                    = $04 ; название опции в главном меню
con_print_option                        = $05 ; название опции в главном меню
con_print_game_over                     = $06 ; экран с поражением в story
con_print_continue                      = $07 ; экран с поражением в story
con_print_bonus_game                    = $08 ; bonus game
con_print_diff_easy                     = $09 ; вариант опции difficulty
con_print_diff_normal                   = $0A ; вариант опции difficulty
con_print_diff_hard                     = $0B ; вариант опции difficulty
con_print_diff_expert                   = $0C ; вариант опции difficulty
con_print_time_bonus_game               = $0D ; bonus game
; con_print_0E                          = $0E ; unused
; con_print_0F                          = $0F ; unused
; con_print_10                          = $10 ; unused
con_print_push_start                    = $11 ; мерцающая надпись на экране с выбором арены
con_print_cpu                           = $12 ; имя cpu на экране с выбором арены
con_print_spd_normal                    = $13 ; опция speed
con_print_spd_turbo                     = $14 ; опция speed
con_print_bonus_00                      = $15 ; внизу экрана при подсчете очков после боя
con_print__time                         = $16 ; внизу экрана при подсчете очков после боя
con_print_perfect                       = $17 ; внизу экрана при подсчете очков после боя
con_print_life                          = $18 ; внизу экрана при подсчете очков после боя
con_print_rematch                       = $19 ; название опции после боя
con_print_end                           = $1A ; название опции после боя
con_print_hp_100                        = $1B ; вариант опции health
con_print_hp_150                        = $1C ; вариант опции health
con_print_hp_200                        = $1D ; вариант опции health
con_print_hp_бесконечное                = $1E ; вариант опции health
con_print_time_45                       = $1F ; вариант опции time
con_print_time_60                       = $20 ; вариант опции time
con_print_time_99                       = $21 ; вариант опции time
con_print_time_бесконечное              = $22 ; вариант опции time
con_print_green                         = $23 ; вариант опции skin
con_print_original                      = $24 ; вариант опции skin
con_print_night                         = $25 ; вариант опции skin
; con_print_26                          = $26 ; unused
; con_print_27                          = $27 ; unused
; con_print_28                          = $28 ; unused
; con_print_29                          = $29 ; unused
; con_print_2A                          = $2A ; unused
; con_print_2B                          = $2B ; unused
; con_print_2C                          = $2C ; unused
; con_print_2D                          = $2D ; unused
; con_print_2E                          = $2E ; unused
; con_print_2F                          = $2F ; unused
con_print_balancing_off                 = $30 ; вариант опции balancing
con_print_balancing_on                  = $31 ; вариант опции balancing
con_print_shred_ctrl_off                = $32 ; вариант опции shred ctrl
con_print_shred_ctrl_on                 = $33 ; вариант опции shred ctrl
con_print_no_one                        = $34 ; вариант опции team keeps
con_print__loser                        = $35 ; вариант опции team keeps
con_print_losermix                      = $36 ; вариант опции team keeps
con_print_winner                        = $37 ; вариант опции team keeps
con_print_survival                      = $38 ; вариант опции team keeps
; con_print_39                          = $39 ; unused
; con_print_3A                          = $3A ; unused
; con_print_3B                          = $3B ; unused
; con_print_3C                          = $3C ; unused
; con_print_3D                          = $3D ; unused
; con_print_3E                          = $3E ; unused
; con_print_3F                          = $3F ; unused
con_print_bgm1                          = $40 ; вариант опции bgm
con_print_bgm2                          = $41 ; вариант опции bgm
con_print_bgm3                          = $42 ; вариант опции bgm
con_print_bgm4                          = $43 ; вариант опции bgm
con_print_open1                         = $44 ; вариант опции bgm
con_print_open2                         = $45 ; вариант опции bgm
con_print_se01                          = $46 ; вариант опции bgm
con_print_se02                          = $47 ; вариант опции bgm
con_print_se03                          = $48 ; вариант опции bgm
con_print_se04                          = $49 ; вариант опции bgm
con_print_se05                          = $4A ; вариант опции bgm
con_print_se06                          = $4B ; вариант опции bgm
con_print_se07                          = $4C ; вариант опции bgm
con_print_se08                          = $4D ; вариант опции bgm
con_print_se09                          = $4E ; вариант опции bgm
con_print_se10                          = $4F ; вариант опции bgm
con_print_se11                          = $50 ; вариант опции bgm
con_print_se12                          = $51 ; вариант опции bgm



; для 0x0258F8
; наборы с начальной анимацией для персов
con_init_anim_присесть                  = $00 ; присесть
con_init_anim_обычная_стойка            = $01 ; обычная стойка
con_init_anim_нокаут                    = $02 ; нанесли достаточно урона
con_init_anim_попался_в_мясо            = $03 ; попался в мясо шрушера
con_init_anim_получение_урона_сидя      = $04 ; сидеть и получать по морде
; con_init_anim_05                      = $05 ; unused
con_init_anim_получение_урона_3         = $06 ; после получения урона, фаза 3
con_init_anim_блокирование_стоя         = $07 ; блок стоя
con_init_anim_блокирование_сидя         = $08 ; блок сидя
con_init_anim_получение_урона_2         = $09 ; после получения урона, фаза 2
con_init_anim_падение_после_броска      = $0A ; когда перса перебросили
con_init_anim_полет_после_броска        = $0B ; когда перса перебросили
con_init_anim_записание_в_воздухе       = $0C ; записание в воздухе после прыжка/сальто в прыжке
con_init_anim_набор_высоты              = $0D ; поднимание в возхух после прыжка
con_init_anim_падение_после_прыжка      = $0E ; падение вниз после прыжка
con_init_anim_получение_урона_1         = $0F ; после получения урона, фаза 1
; con_init_anim_10                      = $10 ; unused
; con_init_anim_11                      = $11 ; unused
con_init_anim_получение_урона_unknown   = $12 ; сразу после получения урона от чего угодно (хз зачем оно надо)
con_init_anim_получение_урона_в_корпус  = $13 ; пишется после 12
con_init_anim_получение_урона_по_ногам  = $14 ; пишется после 12
con_init_anim_получение_урона_4         = $15 ; после получения урона, фаза 4 (только после мяча и суперок)
con_init_anim_прыжок_от_земли           = $16 ; прыжок (самое начало)



; индекс обработчика irq
; смотреть 0x03F84E и 0x03FCAB
; todo комменты 0x03F976
; con_0048_00                           = $00 ; unused
con_0048_01                             = $01 ; вероятно потом перезаписывается
con_0048_02                             = $02 ; 
; con_0048_03                           = $03 ; unused
; con_0048_04                           = $04 ; unused
con_0048_05                             = $05 ; 
con_0048_06                             = $06 ; 
con_0048_07                             = $07 ; 
con_0048_08                             = $08 ; 
con_0048_09                             = $09 ; 
con_0048_0A                             = $0A ; 
con_0048_0B                             = $0B ; 
con_0048_0C                             = $0C ; 
con_0048_0D                             = $0D ; 
con_0048_0E                             = $0E ; 
con_0048_0F                             = $0F ; 
con_0048_10                             = $10 ; 



; заготовленные пары банков chr для фона и спрайтов, смотреть 0x03DC39
; con_chr_pair_00                       = $00 ; unused
con_chr_pair_02                         = $02 ; 
con_chr_pair_04                         = $04 ; 
con_chr_pair_06                         = $06 ; 
con_chr_pair_08                         = $08 ; 
con_chr_pair_0A                         = $0A ; 
con_chr_pair_0C                         = $0C ; 
con_chr_pair_0E                         = $0E ; 
; con_chr_pair_10                       = $10 ; unused
con_chr_pair_12                         = $12 ; 
con_chr_pair_14                         = $14 ; 
con_chr_pair_16                         = $16 ; 
con_chr_pair_18                         = $18 ; 
con_chr_pair_1A                         = $1A ; 
con_chr_pair_1C                         = $1C ; 
con_chr_pair_1E                         = $1E ; 
con_chr_pair_20                         = $20 ; 



; смотреть 0x03F6AC
; 01-2D 0x020EB0 звуки
con_sound_unk_01                        = $01 ; ??? какой-то звук, используется только в 0x02068C
con_sound_unk_02                        = $02 ; ??? какой-то звук, используется только в 0x02068C
con_sound_unk_03                        = $03 ; ??? какой-то звук, используется только в 0x02068C
con_0x03F6AD_04                         = $04 ; удар ногой/удар рукой
con_0x03F6AD_05                         = $05 ; удар ногой в прыжке (все кроме черепах)
con_0x03F6AD_06                         = $06 ; удар рукой стоя (все кроме шрушера)/удар рукой шрушера в прыжке/мясо шрушера без захвата в него соперника
con_0x03F6AD_07                         = $07 ; прыжок (для всех персов)/удар рукой или ногой сидя (только черепахи)/удар рукой в прыжке (все кроме черепах)
con_0x03F6AD_08                         = $08 ; блокирование обычного удара
con_0x03F6AD_09                         = $09 ; подкат лео/деш с ногой (черепахи)
con_0x03F6AD_0A                         = $0A ; отскок мяча от земли
con_sfx_сверло_рафа                     = $0B ; суперка рафа
con_0x03F6AD_0C                         = $0C ; попадание ударом по сопернику 1/нанесение урона песком
con_0x03F6AD_0D                         = $0D ; попадание ударом по сопернику 2/блокирование суперки или мяча
con_0x03F6AD_0E                         = $0E ; попадание ударом по сопернику 3
con_0x03F6AD_0F                         = $0F ; попадание ударом по сопернику 4 (после подката лео)
con_0x03F6AD_10                         = $10 ; попадание ударом по сопернику 5 (рукой в воздухе)
con_sfx_вышибание                       = $11 ; вышибание перса при нанесении достаточного урона подряд
con_0x03F6AD_12                         = $12 ; попадание ударом по сопернику 6 (бабочка хота)/захват соперника в песок/попадание по стене в bonus game
con_0x03F6AD_13                         = $13 ; попадание ударом по сопернику 7 (мощный удар, попадание мячом)
con_sfx_разбитая_стена                  = $14 ; разбитая стена в bonus game
con_sfx_поднять_мяч                     = $15 ; подбор мяча персом
con_0x03F6AD_16                         = $16 ; полет суперки майка и дона
con_sfx_закусь_рафа                     = $17 ; DRAW, закусь рафа
con_0x03F6AD_18                         = $18 ; запуск мяча или суперки (пишется в любом случае, может дополняться двугими уникальными звуками)
con_0x03F6AD_19                         = $19 ; начальный звук броска соперника
con_sfx_полет_песка                     = $1A ; полет песка
con_sfx_огонь_хота                      = $1B ; огонь хота
con_0x03F6AD_1C                         = $1C ; полет соперника после того как его перебросили (в процессе, начало 19)
con_sfx_взрыв                           = $1D ; запуск волны шрушера/взрыв куба со сплинтером в финальной катсцене
con_0x03F6AD_1E                         = $1E ; мясо шрушера при захвате в него соперника
con_0x03F6AD_1F                         = $1F ; попадание суперкой по сопернику/поджаривание соперника хотом
con_sfx_прилет_сплинтера                = $20 ; сплинтер прилетает из-за экрана
con_0x03F6AD_21                         = $21 ; попадание ударом по сопернику 8 (ногой в воздухе (все кроме хота, у него 13))/удар соперника об землю после бросания или после смерти
con_0x03F6AD_22                         = $22 ; хз, финальное падение об землю соперника после смерти?
con_0x03F6AD_23                         = $23 ; финальный удар по сопернику перед его смертью (не все удары дают 23, например смерть от песка или броска)
con_0x03F6AD_24                         = $24 ; переход в главное меню из другого экрана
con_0x03F6AD_25                         = $25 ; прохождение по списку опций (как в главном меню кнопками вверх вниз)
con_0x03F6AD_26                         = $26 ; (аналогично 25) выбор буквы на клаве
con_0x03F6AD_27                         = $27 ; выбор опции на экране с опциями кнопками влево вправо/подсчет очков после боя и в bonus game
con_0x03F6AD_28                         = $28 ; (аналогично 29) на экране с клавой после выбора man или cpu, также после завершения печатания имени, также после выбора перса там же
con_0x03F6AD_29                         = $29 ; выбор опции с ее мерцанием, как в главном меню
con_sfx_увеличить_счетчик_побед_в_бою   = $2A ; засчитывание победы в бою (увеличение счетчика)
con_sfx_шум_зрителей                    = $2B ; шум зрителей
con_sfx_осталось_20_сек                 = $2C ; остается 20 секунд до конца боя
con_sfx_pause                           = $2D ; пауза

; 2E-46 0x021026 музыка и особые звуки с высоким приоритетом,
; при воспроизведении которых предварительно выключаются
; остальные звуки и музыка
con_music_ost_sewer                     = $2E ; (stage soundtrack normal) sewer
con_music_ost_down_town                 = $2F ; (stage soundtrack normal) down town
con_music_ost_pirate_ship               = $30 ; (stage soundtrack normal) pirate ship
con_music_ost_water_front               = $31 ; (stage soundtrack normal) water front
con_music_vs_screen                     = $32 ; vs экран
con_music_no_time_sewer                 = $33 ; (stage soundtrack low time) sewer
con_music_no_time_down_town             = $34 ; (stage soundtrack low time) down town
con_music_no_time_pirate_ship           = $35 ; (stage soundtrack low time) pirate ship
con_music_no_time_water_front           = $36 ; (stage soundtrack low time) water front
con_music_player_select                 = $37 ; экран выбора персов и арены
con_music_continue                      = $38 ; выбор персов на турнир (экран с клавой)/экран continue/экран со списоком рекордов (где телка с микрофоном)
con_music_game_over                     = $39 ; game over
con_music_opening_1                     = $3A ; самая перввая катсцена (opening 1)
con_0x03F6AD_3B                         = $3B ; (stage soundtrack low time) technodrome/следующая после 3A в самой первой катсцене
con_music_opening_2                     = $3C ; катсцена с отображением персов по порядку (opening 2)
con_music_ost_bonus_stage               = $3D ; bonus game soundtrack
con_music_bracket_winner                = $3E ; отображение турнирной сетки (победитель известен)
con_music_bonus_game_win                = $3F ; выигрыш в bonus game
con_music_bonus_game_lose               = $40 ; проигрыш в bonus game
con_0x03F6AD_41                         = $41 ; финальная музыка после прохождения story
con_music_ost_technodrome               = $42 ; (stage soundtrack normal) technodrome/музыка в credits после прохождения story
con_music_rematch                       = $43 ; rematch end после боя
con_0x03F6AD_44                         = $44 ; монолог шрушера перед боя с ним в story
con_0x03F6AD_45                         = $45 ; проигрыш в story
con_music_bracket_playoff               = $46 ; отображение турнирной сетки (победитель неизвестен)

; 47-5A 0x02100E звуки DPCM
con_sound_unk_47                        = $47 ; ??? какой-то звук, используется только в 0x02068C
con_sound_unk_48                        = $48 ; ??? какой-то звук, используется только в 0x02068C
con_sound_unk_49                        = $49 ; ??? какой-то звук, используется только в 0x02068C
con_sound_unk_4A                        = $4A ; ??? какой-то звук, используется только в 0x02068C
con_sound_unk_4B                        = $4B ; ??? какой-то звук, используется только в 0x02068C
con_sound_unk_4C                        = $4C ; ??? какой-то звук, используется только в 0x02068C
con_dmcp_dead_turtle                    = $4D ; крик черепахи после смерти
con_dmcp_dead_casey                     = $4E ; крик казея после смерти
con_dmcp_dead_shred                     = $4F ; крик шрушера после смерти
con_dmcp_dead_hot                       = $50 ; крик хота после смерти
con_dmcp_fight                          = $51 ; FIGHT!!
con_dpcm_warcry_shred_1                 = $52 ; крик шрушера при выборе перса, победная анимация
con_dpcm_warcry_turtle_1                = $53 ; крик черепахи при выборе перса, перед дешем с рукой, перед броском
con_dpcm_warcry_turtle_2                = $54 ; крик перед суперкой (черепахи) 
con_dpcm_warcry_casey_1                 = $55 ; крик казея при выборе перса, перед броском
con_dpcm_warcry_casey_2                 = $56 ; крик казея перед песком, перед клюшкой (почему-то пишется дважды)
con_dpcm_warcry_shred_2                 = $57 ; крик шрушера при броске, после мяса
con_dpcm_warcry_shred_3                 = $58 ; крик шрушера перед пусканием волны
con_dpcm_warcry_hot_1                   = $59 ; крик хота при выборе перса, после бабочки, победная анимация
con_dpcm_warcry_hot_2                   = $5A ; крик хота перед броском

; 5B 0x021008 управляющие байты
con_music_volume_fade                   = $5B ; постепенное затухание громкости
con_music_sfx_off                       = $5C ; выключить музыку и звуки



; индексы для отрисовки экранов, смотреть 0x03F0F0
con_screen_шкала_здоровья               = $00 ; для статусбара на картах (нельзя хранить в самих картах, так как карта рисуется в финальной катсцене без шкалы)
con_screen_главное_меню                 = $01 ; главное меню
con_screen_konami                       = $02 ; KONAMI после 03
con_screen_копирайты                    = $03 ; текст самого первого экрана с номером хака
con_screen_stage_water_front            = $04 ; stage water front
con_screen_stage_sewer                  = $05 ; stage sewer
con_screen_tmnt                         = $06 ; логотип tmnt внизу во время боя
con_screen_stage_pirate_ship            = $07 ; stage pirate ship
con_screen_player_select_7              = $08 ; player select (7 персов)
con_screen_stage_select                 = $09 ; stage select
con_screen_stage_down_town              = $0A ; stage down town
con_screen_турнирная_сетка              = $0B ; турнирная сетка
con_screen_options                      = $0C ; options
con_screen_player_select_4              = $0D ; player select (4 перса)
con_screen_bonus_stage                  = $0E ; bonus stage
con_screen_bonus_tmnt                   = $0F ; аналогично 06, но для bonus stage
con_screen_клавиатура                   = $10 ; клавиатура в режиме tournament
con_screen_ending_1                     = $11 ; ending, сцена 1 (черепаха со шрушером)
con_screen_ending_3                     = $12 ; ending, сцена 3 (фотка с черепахами и сплинтером)
con_screen_hiscore                      = $13 ; top score (телка с микрофоном)
con_screen_vs                           = $14 ; vs экран
con_screen_opening_1                    = $15 ; opening, сцена 1
con_screen_opening_2                    = $16 ; opening, сцена 2
con_screen_ending_2                     = $17 ; ending, сцена 2 (сплинтер)
con_screen_opening_leo                  = $18 ; opening, список персов, leo
con_screen_opening_raph                 = $19 ; opening, список персов, raph
con_screen_opening_mike                 = $1A ; opening, список персов, mike
con_screen_opening_don                  = $1B ; opening, список персов, don
con_screen_opening_casey                = $1C ; opening, список персов, casey
con_screen_opening_hot                  = $1D ; opening, список персов, hot
con_screen_player_select_vs             = $1E ; player select (vs team)
con_screen_stage_technodrome            = $1F ; stage technodrome




; смотреть 0x03D08F
con_0x03D0C3_черепахи_ходьба_вперед     = $00 ; 
; con_0x03D0C3_01                       = $01 ; unused
con_0x03D0C3_черепахи_ходьба_назад      = $02 ; 
con_0x03D0C3_сверло_рафа                = $03 ; 
con_0x03D0C3_черепахи_бег_вперед        = $04 ; 
con_0x03D0C3_casey_бег_вперед           = $05 ; 
con_0x03D0C3_casey_ходьба_вперед        = $06 ; 
con_0x03D0C3_casey_ходьба_назад         = $07 ; 
con_0x03D0C3_casey_бег_назад            = $08 ; 
con_0x03D0C3_черепахи_бег_назад         = $09 ; 
con_0x03D0C3_hot_бег_вперед             = $0A ; 
con_0x03D0C3_hot_бег_назад              = $0B ; 
con_0x03D0C3_hot_ходьба_вперед          = $0C ; 
con_0x03D0C3_hot_ходьба_назад           = $0D ; 
con_0x03D0C3_shred_бег_вперед           = $0E ; 
con_0x03D0C3_shred_бег_назад            = $0F ; 
con_0x03D0C3_shred_ходьба_вперед        = $10 ; 
con_0x03D0C3_shred_ходьба_назад         = $11 ; 
con_0x03D0C3_волна_шрушера              = $12 ; только для суперки, а не для самого шрушера
con_0x03D0C3_черепахи_сальто_вперед     = $13 ; 
con_0x03D0C3_черепахи_сальто_назад      = $14 ; также катиться кубарем после получения урона от суперки или мяча (остальные персы просто падают)
con_0x03D0C3_casey_сальто_вперед        = $15 ; 
con_0x03D0C3_casey_сальто_назад         = $16 ; 
con_0x03D0C3_мяч_хота                   = $17 ; только для мяча, а не для самого хота
con_0x03D0C3_песок_казея                = $18 ; только для суперки, а не для самого казея



; палитра 0x03D58A
con_D57A_00                             = $00 ; 
con_D57A_01                             = $01 ; 
con_D57A_02                             = $02 ; 
; con_D57A_03                           = $03 ; unused
con_D57A_04                             = $04 ; 
con_D57A_05                             = $05 ; 
con_D57A_06                             = $06 ; 
con_D57A_07                             = $07 ; 
; con_D57A_08                           = $08 ; unused
con_D57A_09                             = $09 ; 
con_D57A_0A                             = $0A ; 
con_D57A_0B                             = $0B ; 
con_D57A_0C                             = $0C ; 
con_D57A_0D                             = $0D ; 
con_D57A_0E                             = $0E ; 
con_D57A_0F                             = $0F ; 
con_D57A_10                             = $10 ; 
con_D57A_11                             = $11 ; 
con_D57A_12                             = $12 ; 
con_D57A_13                             = $13 ; 
con_D57A_14                             = $14 ; 
con_D57A_15                             = $15 ; 
con_D57A_16                             = $16 ; 
con_D57A_17                             = $17 ; 
con_D57A_18                             = $18 ; 
con_D57A_19                             = $19 ; 
con_D57A_1A                             = $1A ; 
con_D57A_1B                             = $1B ; 



