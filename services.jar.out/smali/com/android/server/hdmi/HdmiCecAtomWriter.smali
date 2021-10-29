.class public Lcom/android/server/hdmi/HdmiCecAtomWriter;
.super Ljava/lang/Object;
.source "HdmiCecAtomWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;,
        Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
    }
.end annotation


# static fields
.field private static final ERROR_CODE_UNKNOWN:I = -0x1

.field private static final FEATURE_ABORT_OPCODE_UNKNOWN:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createFeatureAbortSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .locals 3

    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter$1;)V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    return-object v0
.end method

.method private createMessageReportedGenericArgs(Lcom/android/server/hdmi/HdmiCecMessage;III)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
    .locals 9

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p3, 0xa

    move v8, v0

    :goto_0
    nop

    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v7

    move-object v1, v0

    move-object v2, p0

    move v3, p4

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;IIIIII)V

    return-object v0
.end method

.method private createMessageReportedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter$1;)V

    return-object v0

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createUserControlPressedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object v0

    return-object v0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createFeatureAbortSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x44 -> :sswitch_0
    .end sparse-switch
.end method

.method private createUserControlPressedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .locals 3

    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter$1;)V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    const/16 v2, 0x29

    if-gt v1, v2, :cond_0

    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    goto :goto_0

    :cond_0
    add-int/lit16 v2, v1, 0x100

    iput v2, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    :goto_0
    return-object v0
.end method

.method private messageReportedBase(Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;)V
    .locals 10

    iget v1, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mUid:I

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDirection:I

    iget v3, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mInitiatorLogicalAddress:I

    iget v4, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDestinationLogicalAddress:I

    iget v5, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mOpcode:I

    iget v6, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mSendMessageResult:I

    iget v7, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    iget v8, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    iget v9, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    const/16 v0, 0x136

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIII)V

    return-void
.end method


# virtual methods
.method public activeSourceChanged(III)V
    .locals 1

    const/16 v0, 0x135

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public messageReported(Lcom/android/server/hdmi/HdmiCecMessage;II)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V

    return-void
.end method

.method public messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V
    .locals 2

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createMessageReportedGenericArgs(Lcom/android/server/hdmi/HdmiCecMessage;III)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createMessageReportedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReportedBase(Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;)V

    return-void
.end method
