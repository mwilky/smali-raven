.class public final Landroid/hardware/tv/cec/V1_1/CecMessageType;
.super Ljava/lang/Object;
.source "CecMessageType.java"


# static fields
.field public static final ABORT:I = 0xff

.field public static final ACTIVE_SOURCE:I = 0x82

.field public static final CEC_VERSION:I = 0x9e

.field public static final CLEAR_ANALOG_TIMER:I = 0x33

.field public static final CLEAR_DIGITAL_TIMER:I = 0x99

.field public static final CLEAR_EXTERNAL_TIMER:I = 0xa1

.field public static final DECK_CONTROL:I = 0x42

.field public static final DECK_STATUS:I = 0x1b

.field public static final DEVICE_VENDOR_ID:I = 0x87

.field public static final FEATURE_ABORT:I = 0x0

.field public static final GET_CEC_VERSION:I = 0x9f

.field public static final GET_MENU_LANGUAGE:I = 0x91

.field public static final GIVE_AUDIO_STATUS:I = 0x71

.field public static final GIVE_DECK_STATUS:I = 0x1a

.field public static final GIVE_DEVICE_POWER_STATUS:I = 0x8f

.field public static final GIVE_DEVICE_VENDOR_ID:I = 0x8c

.field public static final GIVE_FEATURES:I = 0xa5

.field public static final GIVE_OSD_NAME:I = 0x46

.field public static final GIVE_PHYSICAL_ADDRESS:I = 0x83

.field public static final GIVE_SYSTEM_AUDIO_MODE_STATUS:I = 0x7d

.field public static final GIVE_TUNER_DEVICE_STATUS:I = 0x8

.field public static final IMAGE_VIEW_ON:I = 0x4

.field public static final INACTIVE_SOURCE:I = 0x9d

.field public static final INITIATE_ARC:I = 0xc0

.field public static final MENU_REQUEST:I = 0x8d

.field public static final MENU_STATUS:I = 0x8e

.field public static final PLAY:I = 0x41

.field public static final RECORD_OFF:I = 0xb

.field public static final RECORD_ON:I = 0x9

.field public static final RECORD_STATUS:I = 0xa

.field public static final RECORD_TV_SCREEN:I = 0xf

.field public static final REPORT_ARC_INITIATED:I = 0xc1

.field public static final REPORT_ARC_TERMINATED:I = 0xc2

.field public static final REPORT_AUDIO_STATUS:I = 0x7a

.field public static final REPORT_CURRENT_LATENCY:I = 0xa8

.field public static final REPORT_FEATURES:I = 0xa6

.field public static final REPORT_PHYSICAL_ADDRESS:I = 0x84

.field public static final REPORT_POWER_STATUS:I = 0x90

.field public static final REPORT_SHORT_AUDIO_DESCRIPTOR:I = 0xa3

.field public static final REQUEST_ACTIVE_SOURCE:I = 0x85

.field public static final REQUEST_ARC_INITIATION:I = 0xc3

.field public static final REQUEST_ARC_TERMINATION:I = 0xc4

.field public static final REQUEST_CURRENT_LATENCY:I = 0xa7

.field public static final REQUEST_SHORT_AUDIO_DESCRIPTOR:I = 0xa4

.field public static final ROUTING_CHANGE:I = 0x80

.field public static final ROUTING_INFORMATION:I = 0x81

.field public static final SELECT_ANALOG_SERVICE:I = 0x92

.field public static final SELECT_DIGITAL_SERVICE:I = 0x93

.field public static final SET_ANALOG_TIMER:I = 0x34

.field public static final SET_AUDIO_RATE:I = 0x9a

.field public static final SET_DIGITAL_TIMER:I = 0x97

.field public static final SET_EXTERNAL_TIMER:I = 0xa2

.field public static final SET_MENU_LANGUAGE:I = 0x32

.field public static final SET_OSD_NAME:I = 0x47

.field public static final SET_OSD_STRING:I = 0x64

.field public static final SET_STREAM_PATH:I = 0x86

.field public static final SET_SYSTEM_AUDIO_MODE:I = 0x72

.field public static final SET_TIMER_PROGRAM_TITLE:I = 0x67

.field public static final STANDBY:I = 0x36

.field public static final SYSTEM_AUDIO_MODE_REQUEST:I = 0x70

.field public static final SYSTEM_AUDIO_MODE_STATUS:I = 0x7e

.field public static final TERMINATE_ARC:I = 0xc5

.field public static final TEXT_VIEW_ON:I = 0xd

.field public static final TIMER_CLEARED_STATUS:I = 0x43

.field public static final TIMER_STATUS:I = 0x35

.field public static final TUNER_DEVICE_STATUS:I = 0x7

.field public static final TUNER_STEP_DECREMENT:I = 0x6

.field public static final TUNER_STEP_INCREMENT:I = 0x5

.field public static final USER_CONTROL_PRESSED:I = 0x44

.field public static final USER_CONTROL_RELEASED:I = 0x45

.field public static final VENDOR_COMMAND:I = 0x89

.field public static final VENDOR_COMMAND_WITH_ID:I = 0xa0

.field public static final VENDOR_REMOTE_BUTTON_DOWN:I = 0x8a

.field public static final VENDOR_REMOTE_BUTTON_UP:I = 0x8b


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const-string v2, "FEATURE_ABORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const-string v2, "IMAGE_VIEW_ON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    :cond_0
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const-string v2, "TUNER_STEP_INCREMENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x5

    :cond_1
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    const-string v2, "TUNER_STEP_DECREMENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x6

    :cond_2
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    const-string v2, "TUNER_DEVICE_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7

    :cond_3
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const-string v2, "GIVE_TUNER_DEVICE_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    :cond_4
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_5

    const-string v2, "RECORD_ON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x9

    :cond_5
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    const-string v2, "RECORD_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xa

    :cond_6
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_7

    const-string v2, "RECORD_OFF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xb

    :cond_7
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8

    const-string v2, "TEXT_VIEW_ON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xd

    :cond_8
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_9

    const-string v2, "RECORD_TV_SCREEN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0xf

    :cond_9
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_a

    const-string v2, "GIVE_DECK_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1a

    :cond_a
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_b

    const-string v2, "DECK_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x1b

    :cond_b
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_c

    const-string v2, "SET_MENU_LANGUAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x32

    :cond_c
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_d

    const-string v2, "CLEAR_ANALOG_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x33

    :cond_d
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_e

    const-string v2, "SET_ANALOG_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x34

    :cond_e
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_f

    const-string v2, "TIMER_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x35

    :cond_f
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_10

    const-string v2, "STANDBY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x36

    :cond_10
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_11

    const-string v2, "PLAY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x41

    :cond_11
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_12

    const-string v2, "DECK_CONTROL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x42

    :cond_12
    and-int/lit8 v2, p0, 0x43

    const/16 v3, 0x43

    if-ne v2, v3, :cond_13

    const-string v2, "TIMER_CLEARED_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x43

    :cond_13
    and-int/lit8 v2, p0, 0x44

    const/16 v3, 0x44

    if-ne v2, v3, :cond_14

    const-string v2, "USER_CONTROL_PRESSED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x44

    :cond_14
    and-int/lit8 v2, p0, 0x45

    const/16 v3, 0x45

    if-ne v2, v3, :cond_15

    const-string v2, "USER_CONTROL_RELEASED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x45

    :cond_15
    and-int/lit8 v2, p0, 0x46

    const/16 v3, 0x46

    if-ne v2, v3, :cond_16

    const-string v2, "GIVE_OSD_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x46

    :cond_16
    and-int/lit8 v2, p0, 0x47

    const/16 v3, 0x47

    if-ne v2, v3, :cond_17

    const-string v2, "SET_OSD_NAME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x47

    :cond_17
    and-int/lit8 v2, p0, 0x64

    const/16 v3, 0x64

    if-ne v2, v3, :cond_18

    const-string v2, "SET_OSD_STRING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x64

    :cond_18
    and-int/lit8 v2, p0, 0x67

    const/16 v3, 0x67

    if-ne v2, v3, :cond_19

    const-string v2, "SET_TIMER_PROGRAM_TITLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x67

    :cond_19
    and-int/lit8 v2, p0, 0x70

    const/16 v3, 0x70

    if-ne v2, v3, :cond_1a

    const-string v2, "SYSTEM_AUDIO_MODE_REQUEST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x70

    :cond_1a
    and-int/lit8 v2, p0, 0x71

    const/16 v3, 0x71

    if-ne v2, v3, :cond_1b

    const-string v2, "GIVE_AUDIO_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x71

    :cond_1b
    and-int/lit8 v2, p0, 0x72

    const/16 v3, 0x72

    if-ne v2, v3, :cond_1c

    const-string v2, "SET_SYSTEM_AUDIO_MODE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x72

    :cond_1c
    and-int/lit8 v2, p0, 0x7a

    const/16 v3, 0x7a

    if-ne v2, v3, :cond_1d

    const-string v2, "REPORT_AUDIO_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7a

    :cond_1d
    and-int/lit8 v2, p0, 0x7d

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_1e

    const-string v2, "GIVE_SYSTEM_AUDIO_MODE_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7d

    :cond_1e
    and-int/lit8 v2, p0, 0x7e

    const/16 v3, 0x7e

    if-ne v2, v3, :cond_1f

    const-string v2, "SYSTEM_AUDIO_MODE_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x7e

    :cond_1f
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_20

    const-string v2, "ROUTING_CHANGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x80

    :cond_20
    and-int/lit16 v2, p0, 0x81

    const/16 v3, 0x81

    if-ne v2, v3, :cond_21

    const-string v2, "ROUTING_INFORMATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x81

    :cond_21
    and-int/lit16 v2, p0, 0x82

    const/16 v3, 0x82

    if-ne v2, v3, :cond_22

    const-string v2, "ACTIVE_SOURCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x82

    :cond_22
    and-int/lit16 v2, p0, 0x83

    const/16 v3, 0x83

    if-ne v2, v3, :cond_23

    const-string v2, "GIVE_PHYSICAL_ADDRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x83

    :cond_23
    and-int/lit16 v2, p0, 0x84

    const/16 v3, 0x84

    if-ne v2, v3, :cond_24

    const-string v2, "REPORT_PHYSICAL_ADDRESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x84

    :cond_24
    and-int/lit16 v2, p0, 0x85

    const/16 v3, 0x85

    if-ne v2, v3, :cond_25

    const-string v2, "REQUEST_ACTIVE_SOURCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x85

    :cond_25
    and-int/lit16 v2, p0, 0x86

    const/16 v3, 0x86

    if-ne v2, v3, :cond_26

    const-string v2, "SET_STREAM_PATH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x86

    :cond_26
    and-int/lit16 v2, p0, 0x87

    const/16 v3, 0x87

    if-ne v2, v3, :cond_27

    const-string v2, "DEVICE_VENDOR_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x87

    :cond_27
    and-int/lit16 v2, p0, 0x89

    const/16 v3, 0x89

    if-ne v2, v3, :cond_28

    const-string v2, "VENDOR_COMMAND"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x89

    :cond_28
    and-int/lit16 v2, p0, 0x8a

    const/16 v3, 0x8a

    if-ne v2, v3, :cond_29

    const-string v2, "VENDOR_REMOTE_BUTTON_DOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x8a

    :cond_29
    and-int/lit16 v2, p0, 0x8b

    const/16 v3, 0x8b

    if-ne v2, v3, :cond_2a

    const-string v2, "VENDOR_REMOTE_BUTTON_UP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x8b

    :cond_2a
    and-int/lit16 v2, p0, 0x8c

    const/16 v3, 0x8c

    if-ne v2, v3, :cond_2b

    const-string v2, "GIVE_DEVICE_VENDOR_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x8c

    :cond_2b
    and-int/lit16 v2, p0, 0x8d

    const/16 v3, 0x8d

    if-ne v2, v3, :cond_2c

    const-string v2, "MENU_REQUEST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x8d

    :cond_2c
    and-int/lit16 v2, p0, 0x8e

    const/16 v3, 0x8e

    if-ne v2, v3, :cond_2d

    const-string v2, "MENU_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x8e

    :cond_2d
    and-int/lit16 v2, p0, 0x8f

    const/16 v3, 0x8f

    if-ne v2, v3, :cond_2e

    const-string v2, "GIVE_DEVICE_POWER_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x8f

    :cond_2e
    and-int/lit16 v2, p0, 0x90

    const/16 v3, 0x90

    if-ne v2, v3, :cond_2f

    const-string v2, "REPORT_POWER_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x90

    :cond_2f
    and-int/lit16 v2, p0, 0x91

    const/16 v3, 0x91

    if-ne v2, v3, :cond_30

    const-string v2, "GET_MENU_LANGUAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x91

    :cond_30
    and-int/lit16 v2, p0, 0x92

    const/16 v3, 0x92

    if-ne v2, v3, :cond_31

    const-string v2, "SELECT_ANALOG_SERVICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x92

    :cond_31
    and-int/lit16 v2, p0, 0x93

    const/16 v3, 0x93

    if-ne v2, v3, :cond_32

    const-string v2, "SELECT_DIGITAL_SERVICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x93

    :cond_32
    and-int/lit16 v2, p0, 0x97

    const/16 v3, 0x97

    if-ne v2, v3, :cond_33

    const-string v2, "SET_DIGITAL_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x97

    :cond_33
    and-int/lit16 v2, p0, 0x99

    const/16 v3, 0x99

    if-ne v2, v3, :cond_34

    const-string v2, "CLEAR_DIGITAL_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x99

    :cond_34
    and-int/lit16 v2, p0, 0x9a

    const/16 v3, 0x9a

    if-ne v2, v3, :cond_35

    const-string v2, "SET_AUDIO_RATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x9a

    :cond_35
    and-int/lit16 v2, p0, 0x9d

    const/16 v3, 0x9d

    if-ne v2, v3, :cond_36

    const-string v2, "INACTIVE_SOURCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x9d

    :cond_36
    and-int/lit16 v2, p0, 0x9e

    const/16 v3, 0x9e

    if-ne v2, v3, :cond_37

    const-string v2, "CEC_VERSION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x9e

    :cond_37
    and-int/lit16 v2, p0, 0x9f

    const/16 v3, 0x9f

    if-ne v2, v3, :cond_38

    const-string v2, "GET_CEC_VERSION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x9f

    :cond_38
    and-int/lit16 v2, p0, 0xa0

    const/16 v3, 0xa0

    if-ne v2, v3, :cond_39

    const-string v2, "VENDOR_COMMAND_WITH_ID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xa0

    :cond_39
    and-int/lit16 v2, p0, 0xa1

    const/16 v3, 0xa1

    if-ne v2, v3, :cond_3a

    const-string v2, "CLEAR_EXTERNAL_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xa1

    :cond_3a
    and-int/lit16 v2, p0, 0xa2

    const/16 v3, 0xa2

    if-ne v2, v3, :cond_3b

    const-string v2, "SET_EXTERNAL_TIMER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xa2

    :cond_3b
    and-int/lit16 v2, p0, 0xa3

    const/16 v3, 0xa3

    if-ne v2, v3, :cond_3c

    const-string v2, "REPORT_SHORT_AUDIO_DESCRIPTOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xa3

    :cond_3c
    and-int/lit16 v2, p0, 0xa4

    const/16 v3, 0xa4

    if-ne v2, v3, :cond_3d

    const-string v2, "REQUEST_SHORT_AUDIO_DESCRIPTOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xa4

    :cond_3d
    and-int/lit16 v2, p0, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_3e

    const-string v2, "INITIATE_ARC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xc0

    :cond_3e
    and-int/lit16 v2, p0, 0xc1

    const/16 v3, 0xc1

    if-ne v2, v3, :cond_3f

    const-string v2, "REPORT_ARC_INITIATED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xc1

    :cond_3f
    and-int/lit16 v2, p0, 0xc2

    const/16 v3, 0xc2

    if-ne v2, v3, :cond_40

    const-string v2, "REPORT_ARC_TERMINATED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xc2

    :cond_40
    and-int/lit16 v2, p0, 0xc3

    const/16 v3, 0xc3

    if-ne v2, v3, :cond_41

    const-string v2, "REQUEST_ARC_INITIATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xc3

    :cond_41
    and-int/lit16 v2, p0, 0xc4

    const/16 v3, 0xc4

    if-ne v2, v3, :cond_42

    const-string v2, "REQUEST_ARC_TERMINATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xc4

    :cond_42
    and-int/lit16 v2, p0, 0xc5

    const/16 v3, 0xc5

    if-ne v2, v3, :cond_43

    const-string v2, "TERMINATE_ARC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xc5

    :cond_43
    and-int/lit16 v2, p0, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_44

    const-string v2, "ABORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xff

    :cond_44
    and-int/lit16 v2, p0, 0xa5

    const/16 v3, 0xa5

    if-ne v2, v3, :cond_45

    const-string v2, "GIVE_FEATURES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xa5

    :cond_45
    and-int/lit16 v2, p0, 0xa6

    const/16 v3, 0xa6

    if-ne v2, v3, :cond_46

    const-string v2, "REPORT_FEATURES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xa6

    :cond_46
    and-int/lit16 v2, p0, 0xa7

    const/16 v3, 0xa7

    if-ne v2, v3, :cond_47

    const-string v2, "REQUEST_CURRENT_LATENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xa7

    :cond_47
    and-int/lit16 v2, p0, 0xa8

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_48

    const-string v2, "REPORT_CURRENT_LATENCY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0xa8

    :cond_48
    if-eq p0, v1, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, "FEATURE_ABORT"

    return-object v0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const-string v0, "IMAGE_VIEW_ON"

    return-object v0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    const-string v0, "TUNER_STEP_INCREMENT"

    return-object v0

    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    const-string v0, "TUNER_STEP_DECREMENT"

    return-object v0

    :cond_3
    const/4 v0, 0x7

    if-ne p0, v0, :cond_4

    const-string v0, "TUNER_DEVICE_STATUS"

    return-object v0

    :cond_4
    const/16 v0, 0x8

    if-ne p0, v0, :cond_5

    const-string v0, "GIVE_TUNER_DEVICE_STATUS"

    return-object v0

    :cond_5
    const/16 v0, 0x9

    if-ne p0, v0, :cond_6

    const-string v0, "RECORD_ON"

    return-object v0

    :cond_6
    const/16 v0, 0xa

    if-ne p0, v0, :cond_7

    const-string v0, "RECORD_STATUS"

    return-object v0

    :cond_7
    const/16 v0, 0xb

    if-ne p0, v0, :cond_8

    const-string v0, "RECORD_OFF"

    return-object v0

    :cond_8
    const/16 v0, 0xd

    if-ne p0, v0, :cond_9

    const-string v0, "TEXT_VIEW_ON"

    return-object v0

    :cond_9
    const/16 v0, 0xf

    if-ne p0, v0, :cond_a

    const-string v0, "RECORD_TV_SCREEN"

    return-object v0

    :cond_a
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_b

    const-string v0, "GIVE_DECK_STATUS"

    return-object v0

    :cond_b
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_c

    const-string v0, "DECK_STATUS"

    return-object v0

    :cond_c
    const/16 v0, 0x32

    if-ne p0, v0, :cond_d

    const-string v0, "SET_MENU_LANGUAGE"

    return-object v0

    :cond_d
    const/16 v0, 0x33

    if-ne p0, v0, :cond_e

    const-string v0, "CLEAR_ANALOG_TIMER"

    return-object v0

    :cond_e
    const/16 v0, 0x34

    if-ne p0, v0, :cond_f

    const-string v0, "SET_ANALOG_TIMER"

    return-object v0

    :cond_f
    const/16 v0, 0x35

    if-ne p0, v0, :cond_10

    const-string v0, "TIMER_STATUS"

    return-object v0

    :cond_10
    const/16 v0, 0x36

    if-ne p0, v0, :cond_11

    const-string v0, "STANDBY"

    return-object v0

    :cond_11
    const/16 v0, 0x41

    if-ne p0, v0, :cond_12

    const-string v0, "PLAY"

    return-object v0

    :cond_12
    const/16 v0, 0x42

    if-ne p0, v0, :cond_13

    const-string v0, "DECK_CONTROL"

    return-object v0

    :cond_13
    const/16 v0, 0x43

    if-ne p0, v0, :cond_14

    const-string v0, "TIMER_CLEARED_STATUS"

    return-object v0

    :cond_14
    const/16 v0, 0x44

    if-ne p0, v0, :cond_15

    const-string v0, "USER_CONTROL_PRESSED"

    return-object v0

    :cond_15
    const/16 v0, 0x45

    if-ne p0, v0, :cond_16

    const-string v0, "USER_CONTROL_RELEASED"

    return-object v0

    :cond_16
    const/16 v0, 0x46

    if-ne p0, v0, :cond_17

    const-string v0, "GIVE_OSD_NAME"

    return-object v0

    :cond_17
    const/16 v0, 0x47

    if-ne p0, v0, :cond_18

    const-string v0, "SET_OSD_NAME"

    return-object v0

    :cond_18
    const/16 v0, 0x64

    if-ne p0, v0, :cond_19

    const-string v0, "SET_OSD_STRING"

    return-object v0

    :cond_19
    const/16 v0, 0x67

    if-ne p0, v0, :cond_1a

    const-string v0, "SET_TIMER_PROGRAM_TITLE"

    return-object v0

    :cond_1a
    const/16 v0, 0x70

    if-ne p0, v0, :cond_1b

    const-string v0, "SYSTEM_AUDIO_MODE_REQUEST"

    return-object v0

    :cond_1b
    const/16 v0, 0x71

    if-ne p0, v0, :cond_1c

    const-string v0, "GIVE_AUDIO_STATUS"

    return-object v0

    :cond_1c
    const/16 v0, 0x72

    if-ne p0, v0, :cond_1d

    const-string v0, "SET_SYSTEM_AUDIO_MODE"

    return-object v0

    :cond_1d
    const/16 v0, 0x7a

    if-ne p0, v0, :cond_1e

    const-string v0, "REPORT_AUDIO_STATUS"

    return-object v0

    :cond_1e
    const/16 v0, 0x7d

    if-ne p0, v0, :cond_1f

    const-string v0, "GIVE_SYSTEM_AUDIO_MODE_STATUS"

    return-object v0

    :cond_1f
    const/16 v0, 0x7e

    if-ne p0, v0, :cond_20

    const-string v0, "SYSTEM_AUDIO_MODE_STATUS"

    return-object v0

    :cond_20
    const/16 v0, 0x80

    if-ne p0, v0, :cond_21

    const-string v0, "ROUTING_CHANGE"

    return-object v0

    :cond_21
    const/16 v0, 0x81

    if-ne p0, v0, :cond_22

    const-string v0, "ROUTING_INFORMATION"

    return-object v0

    :cond_22
    const/16 v0, 0x82

    if-ne p0, v0, :cond_23

    const-string v0, "ACTIVE_SOURCE"

    return-object v0

    :cond_23
    const/16 v0, 0x83

    if-ne p0, v0, :cond_24

    const-string v0, "GIVE_PHYSICAL_ADDRESS"

    return-object v0

    :cond_24
    const/16 v0, 0x84

    if-ne p0, v0, :cond_25

    const-string v0, "REPORT_PHYSICAL_ADDRESS"

    return-object v0

    :cond_25
    const/16 v0, 0x85

    if-ne p0, v0, :cond_26

    const-string v0, "REQUEST_ACTIVE_SOURCE"

    return-object v0

    :cond_26
    const/16 v0, 0x86

    if-ne p0, v0, :cond_27

    const-string v0, "SET_STREAM_PATH"

    return-object v0

    :cond_27
    const/16 v0, 0x87

    if-ne p0, v0, :cond_28

    const-string v0, "DEVICE_VENDOR_ID"

    return-object v0

    :cond_28
    const/16 v0, 0x89

    if-ne p0, v0, :cond_29

    const-string v0, "VENDOR_COMMAND"

    return-object v0

    :cond_29
    const/16 v0, 0x8a

    if-ne p0, v0, :cond_2a

    const-string v0, "VENDOR_REMOTE_BUTTON_DOWN"

    return-object v0

    :cond_2a
    const/16 v0, 0x8b

    if-ne p0, v0, :cond_2b

    const-string v0, "VENDOR_REMOTE_BUTTON_UP"

    return-object v0

    :cond_2b
    const/16 v0, 0x8c

    if-ne p0, v0, :cond_2c

    const-string v0, "GIVE_DEVICE_VENDOR_ID"

    return-object v0

    :cond_2c
    const/16 v0, 0x8d

    if-ne p0, v0, :cond_2d

    const-string v0, "MENU_REQUEST"

    return-object v0

    :cond_2d
    const/16 v0, 0x8e

    if-ne p0, v0, :cond_2e

    const-string v0, "MENU_STATUS"

    return-object v0

    :cond_2e
    const/16 v0, 0x8f

    if-ne p0, v0, :cond_2f

    const-string v0, "GIVE_DEVICE_POWER_STATUS"

    return-object v0

    :cond_2f
    const/16 v0, 0x90

    if-ne p0, v0, :cond_30

    const-string v0, "REPORT_POWER_STATUS"

    return-object v0

    :cond_30
    const/16 v0, 0x91

    if-ne p0, v0, :cond_31

    const-string v0, "GET_MENU_LANGUAGE"

    return-object v0

    :cond_31
    const/16 v0, 0x92

    if-ne p0, v0, :cond_32

    const-string v0, "SELECT_ANALOG_SERVICE"

    return-object v0

    :cond_32
    const/16 v0, 0x93

    if-ne p0, v0, :cond_33

    const-string v0, "SELECT_DIGITAL_SERVICE"

    return-object v0

    :cond_33
    const/16 v0, 0x97

    if-ne p0, v0, :cond_34

    const-string v0, "SET_DIGITAL_TIMER"

    return-object v0

    :cond_34
    const/16 v0, 0x99

    if-ne p0, v0, :cond_35

    const-string v0, "CLEAR_DIGITAL_TIMER"

    return-object v0

    :cond_35
    const/16 v0, 0x9a

    if-ne p0, v0, :cond_36

    const-string v0, "SET_AUDIO_RATE"

    return-object v0

    :cond_36
    const/16 v0, 0x9d

    if-ne p0, v0, :cond_37

    const-string v0, "INACTIVE_SOURCE"

    return-object v0

    :cond_37
    const/16 v0, 0x9e

    if-ne p0, v0, :cond_38

    const-string v0, "CEC_VERSION"

    return-object v0

    :cond_38
    const/16 v0, 0x9f

    if-ne p0, v0, :cond_39

    const-string v0, "GET_CEC_VERSION"

    return-object v0

    :cond_39
    const/16 v0, 0xa0

    if-ne p0, v0, :cond_3a

    const-string v0, "VENDOR_COMMAND_WITH_ID"

    return-object v0

    :cond_3a
    const/16 v0, 0xa1

    if-ne p0, v0, :cond_3b

    const-string v0, "CLEAR_EXTERNAL_TIMER"

    return-object v0

    :cond_3b
    const/16 v0, 0xa2

    if-ne p0, v0, :cond_3c

    const-string v0, "SET_EXTERNAL_TIMER"

    return-object v0

    :cond_3c
    const/16 v0, 0xa3

    if-ne p0, v0, :cond_3d

    const-string v0, "REPORT_SHORT_AUDIO_DESCRIPTOR"

    return-object v0

    :cond_3d
    const/16 v0, 0xa4

    if-ne p0, v0, :cond_3e

    const-string v0, "REQUEST_SHORT_AUDIO_DESCRIPTOR"

    return-object v0

    :cond_3e
    const/16 v0, 0xc0

    if-ne p0, v0, :cond_3f

    const-string v0, "INITIATE_ARC"

    return-object v0

    :cond_3f
    const/16 v0, 0xc1

    if-ne p0, v0, :cond_40

    const-string v0, "REPORT_ARC_INITIATED"

    return-object v0

    :cond_40
    const/16 v0, 0xc2

    if-ne p0, v0, :cond_41

    const-string v0, "REPORT_ARC_TERMINATED"

    return-object v0

    :cond_41
    const/16 v0, 0xc3

    if-ne p0, v0, :cond_42

    const-string v0, "REQUEST_ARC_INITIATION"

    return-object v0

    :cond_42
    const/16 v0, 0xc4

    if-ne p0, v0, :cond_43

    const-string v0, "REQUEST_ARC_TERMINATION"

    return-object v0

    :cond_43
    const/16 v0, 0xc5

    if-ne p0, v0, :cond_44

    const-string v0, "TERMINATE_ARC"

    return-object v0

    :cond_44
    const/16 v0, 0xff

    if-ne p0, v0, :cond_45

    const-string v0, "ABORT"

    return-object v0

    :cond_45
    const/16 v0, 0xa5

    if-ne p0, v0, :cond_46

    const-string v0, "GIVE_FEATURES"

    return-object v0

    :cond_46
    const/16 v0, 0xa6

    if-ne p0, v0, :cond_47

    const-string v0, "REPORT_FEATURES"

    return-object v0

    :cond_47
    const/16 v0, 0xa7

    if-ne p0, v0, :cond_48

    const-string v0, "REQUEST_CURRENT_LATENCY"

    return-object v0

    :cond_48
    const/16 v0, 0xa8

    if-ne p0, v0, :cond_49

    const-string v0, "REPORT_CURRENT_LATENCY"

    return-object v0

    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
