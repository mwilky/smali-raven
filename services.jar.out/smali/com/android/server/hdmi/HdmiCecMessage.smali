.class public Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "HdmiCecMessage.java"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field public final mDestination:I

.field public final mOpcode:I

.field public final mParams:[B

.field public final mSource:I

.field public final mValidationResult:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 7

    and-int/lit16 v0, p3, 0xff

    invoke-static {p1, p2, v0, p4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validate(III[B)I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-void
.end method

.method public constructor <init>(III[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    and-int/lit16 p1, p3, 0xff

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    iput p5, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    return-void
.end method

.method public static build(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method public static build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0x73

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa6

    if-eq p2, v0, :cond_0

    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0

    :cond_0
    invoke-static {p0, p1, p3}, Lcom/android/server/hdmi/ReportFeaturesMessage;->build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1, p3}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static filterMessageParameters(I)Z
    .locals 1

    const/16 v0, 0x45

    if-eq p0, v0, :cond_0

    const/16 v0, 0x47

    if-eq p0, v0, :cond_0

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x89
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isCecTransportMessage(I)Z
    .locals 1

    const/16 v0, 0xa7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xf8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isUserControlPressedMessage(I)Z
    .locals 1

    const/16 v0, 0x44

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static opcodeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_6

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1b

    if-eq p0, v0, :cond_4

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x7e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x99

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9a

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Opcode: %02X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "Select Digital Service"

    return-object p0

    :pswitch_1
    const-string p0, "Select Analog Service"

    return-object p0

    :pswitch_2
    const-string p0, "Get Menu Language"

    return-object p0

    :pswitch_3
    const-string p0, "Report Power Status"

    return-object p0

    :pswitch_4
    const-string p0, "Give Device Power Status"

    return-object p0

    :pswitch_5
    const-string p0, "Menu Status"

    return-object p0

    :pswitch_6
    const-string p0, "Menu Request"

    return-object p0

    :pswitch_7
    const-string p0, "Give Device Vendor Id"

    return-object p0

    :pswitch_8
    const-string p0, "Vendor Remote Button Up"

    return-object p0

    :pswitch_9
    const-string p0, "Vendor Remote Button Down"

    return-object p0

    :pswitch_a
    const-string p0, "Vendor Command"

    return-object p0

    :pswitch_b
    const-string p0, "Device Vendor Id"

    return-object p0

    :pswitch_c
    const-string p0, "Set Stream Path"

    return-object p0

    :pswitch_d
    const-string p0, "Request Active Source"

    return-object p0

    :pswitch_e
    const-string p0, "Report Physical Address"

    return-object p0

    :pswitch_f
    const-string p0, "Give Physical Address"

    return-object p0

    :pswitch_10
    const-string p0, "Active Source"

    return-object p0

    :pswitch_11
    const-string p0, "Routing Information"

    return-object p0

    :pswitch_12
    const-string p0, "Routing Change"

    return-object p0

    :pswitch_13
    const-string p0, "Set Audio Volume Level"

    return-object p0

    :pswitch_14
    const-string p0, "Set System Audio Mode"

    return-object p0

    :pswitch_15
    const-string p0, "Give Audio Status"

    return-object p0

    :pswitch_16
    const-string p0, "System Audio Mode Request"

    return-object p0

    :pswitch_17
    const-string p0, "Set Osd Name"

    return-object p0

    :pswitch_18
    const-string p0, "Give Osd Name"

    return-object p0

    :pswitch_19
    const-string p0, "User Control Release"

    return-object p0

    :pswitch_1a
    const-string p0, "User Control Pressed"

    return-object p0

    :pswitch_1b
    const-string p0, "Timer Cleared Status"

    return-object p0

    :pswitch_1c
    const-string p0, "Deck Control"

    return-object p0

    :pswitch_1d
    const-string p0, "Play"

    return-object p0

    :pswitch_1e
    const-string p0, "Standby"

    return-object p0

    :pswitch_1f
    const-string p0, "Timer Status"

    return-object p0

    :pswitch_20
    const-string p0, "Set Analog Timer"

    return-object p0

    :pswitch_21
    const-string p0, "Clear Analog Timer"

    return-object p0

    :pswitch_22
    const-string p0, "Set Menu Language"

    return-object p0

    :pswitch_23
    const-string p0, "Record Off"

    return-object p0

    :pswitch_24
    const-string p0, "Record Status"

    return-object p0

    :pswitch_25
    const-string p0, "Record On"

    return-object p0

    :pswitch_26
    const-string p0, "Give Tuner Device Status"

    return-object p0

    :pswitch_27
    const-string p0, "Tuner Device Status"

    return-object p0

    :pswitch_28
    const-string p0, "Tuner Step Decrement"

    return-object p0

    :pswitch_29
    const-string p0, "Tuner Step Increment"

    return-object p0

    :pswitch_2a
    const-string p0, "Image View On"

    return-object p0

    :sswitch_0
    const-string p0, "Abort"

    return-object p0

    :sswitch_1
    const-string p0, "Cdc Message"

    return-object p0

    :sswitch_2
    const-string p0, "Terminate ARC"

    return-object p0

    :sswitch_3
    const-string p0, "Request ARC Termination"

    return-object p0

    :sswitch_4
    const-string p0, "Request ARC Initiation"

    return-object p0

    :sswitch_5
    const-string p0, "Report ARC Terminated"

    return-object p0

    :sswitch_6
    const-string p0, "Report ARC Initiated"

    return-object p0

    :sswitch_7
    const-string p0, "Initiate ARC"

    return-object p0

    :sswitch_8
    const-string p0, "Report Current Latency"

    return-object p0

    :sswitch_9
    const-string p0, "Request Current Latency"

    return-object p0

    :sswitch_a
    const-string p0, "Report Features"

    return-object p0

    :sswitch_b
    const-string p0, "Give Features"

    return-object p0

    :sswitch_c
    const-string p0, "Request Short Audio Descriptor"

    return-object p0

    :sswitch_d
    const-string p0, "Report Short Audio Descriptor"

    return-object p0

    :sswitch_e
    const-string p0, "Set External Timer"

    return-object p0

    :sswitch_f
    const-string p0, "Clear External Timer"

    return-object p0

    :sswitch_10
    const-string p0, "Vendor Command With Id"

    return-object p0

    :sswitch_11
    const-string p0, "Get Cec Version"

    return-object p0

    :sswitch_12
    const-string p0, "Cec Version"

    return-object p0

    :sswitch_13
    const-string p0, "InActive Source"

    return-object p0

    :sswitch_14
    const-string p0, "Set Digital Timer"

    return-object p0

    :sswitch_15
    const-string p0, "Report Audio Status"

    return-object p0

    :sswitch_16
    const-string p0, "Set Timer Program Title"

    return-object p0

    :sswitch_17
    const-string p0, "Set Osd String"

    return-object p0

    :sswitch_18
    const-string p0, "Record Tv Screen"

    return-object p0

    :sswitch_19
    const-string p0, "Text View On"

    return-object p0

    :cond_0
    const-string p0, "Set Audio Rate"

    return-object p0

    :cond_1
    const-string p0, "Clear Digital Timer"

    return-object p0

    :cond_2
    const-string p0, "System Audio Mode Status"

    return-object p0

    :cond_3
    const-string p0, "Give System Audio Mode Status"

    return-object p0

    :cond_4
    const-string p0, "Deck Status"

    return-object p0

    :cond_5
    const-string p0, "Give Deck Status"

    return-object p0

    :cond_6
    :sswitch_1a
    const-string p0, "Feature Abort"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1a
        0xd -> :sswitch_19
        0xf -> :sswitch_18
        0x64 -> :sswitch_17
        0x67 -> :sswitch_16
        0x7a -> :sswitch_15
        0x97 -> :sswitch_14
        0x9d -> :sswitch_13
        0x9e -> :sswitch_12
        0x9f -> :sswitch_11
        0xa0 -> :sswitch_10
        0xa1 -> :sswitch_f
        0xa2 -> :sswitch_e
        0xa3 -> :sswitch_d
        0xa4 -> :sswitch_c
        0xa5 -> :sswitch_b
        0xa6 -> :sswitch_a
        0xa7 -> :sswitch_9
        0xa8 -> :sswitch_8
        0xc0 -> :sswitch_7
        0xc1 -> :sswitch_6
        0xc2 -> :sswitch_5
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_3
        0xc5 -> :sswitch_2
        0xf8 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x70
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x80
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x89
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static validationResultToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "unknown error"

    return-object p0

    :cond_0
    const-string/jumbo p0, "short parameters"

    return-object p0

    :cond_1
    const-string p0, "invalid parameters"

    return-object p0

    :cond_2
    const-string p0, "invalid destination"

    return-object p0

    :cond_3
    const-string p0, "invalid source"

    return-object p0

    :cond_4
    const-string/jumbo p0, "ok"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/hdmi/HdmiCecMessage;

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getValidationResult()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getDestination()I
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    return p0
.end method

.method public getOpcode()I
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    return p0
.end method

.method public getParams()[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-object p0
.end method

.method public getSource()I
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    return p0
.end method

.method public getValidationResult()I
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->opcodeToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "<%s> %X%X:%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v1, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->filterMessageParameters(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " <Redacted len=%d>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->isUserControlPressedMessage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecKeycode;->getKeycodeType(B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " <Keycode type = %s>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_2

    aget-byte v6, v1, v5

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v7, v3

    const-string v6, ":%02X"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mValidationResult:I

    if-eqz p0, :cond_3

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->validationResultToString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, " <Validation error: %s>"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
