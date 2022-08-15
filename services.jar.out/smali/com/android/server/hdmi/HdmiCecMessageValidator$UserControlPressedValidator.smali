.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;
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
    name = "UserControlPressedValidator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 4

    array-length p0, p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ge p0, v1, :cond_0

    return v0

    :cond_0
    array-length p0, p1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_1

    return v2

    :cond_1
    aget-byte p0, p1, v2

    const/16 v3, 0x56

    if-eq p0, v3, :cond_6

    const/16 v3, 0x57

    if-eq p0, v3, :cond_5

    const/16 v3, 0x60

    if-eq p0, v3, :cond_4

    const/16 v3, 0x67

    if-eq p0, v3, :cond_2

    return v2

    :cond_2
    array-length p0, p1

    if-lt p0, v0, :cond_3

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidChannelIdentifier([BI)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    :cond_3
    return v0

    :cond_4
    aget-byte p0, p1, v1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPlayMode(I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0

    :cond_5
    aget-byte p0, p1, v1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidUiSoundPresenationControl(I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0

    :cond_6
    aget-byte p0, p1, v1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidUiBroadcastType(I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
