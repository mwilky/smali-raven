.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigitalTimerValidator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 3

    array-length p0, p1

    const/4 v0, 0x4

    const/16 v1, 0xb

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    aget-byte v1, p1, p0

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDayOfMonth(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    aget-byte v1, p1, v2

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMonthOfYear(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidHour(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMinute(I)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDurationHours(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMinute(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidRecordingSequence(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDigitalServiceIdentification([BI)Z

    move-result p1

    if-eqz p1, :cond_1

    move p0, v2

    :cond_1
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
