.class public Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;
.super Ljava/lang/Object;
.source "UsbAudioWarningDialogMessage.java"


# instance fields
.field private mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

.field private final mDialogType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogType:I

    :try_start_0
    new-instance p3, Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-direct {p3, p1, p2}, Lcom/android/systemui/usb/UsbDialogHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object p3, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "UsbAudioWarningDialogMessage"

    const-string p2, "Unable to initialize UsbDialogHelper!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private hasAudioCapture()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioCapture()Z

    move-result p0

    return p0
.end method

.method private hasAudioPlayback()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioPlayback()Z

    move-result p0

    return p0
.end method

.method private hasRecordPermission()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDialogHelper;->packageHasAudioRecordingPermission()Z

    move-result p0

    return p0
.end method

.method private isUsbAudioDevice()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->isUsbDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioCapture()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDialogHelper;->deviceHasAudioPlayback()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getMessageId()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogHelper:Lcom/android/systemui/usb/UsbDialogHelper;

    invoke-virtual {v0}, Lcom/android/systemui/usb/UsbDialogHelper;->isUsbDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->getUsbAccessoryPromptId()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->hasRecordPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->isUsbAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lcom/android/systemui/R$string;->usb_audio_device_prompt:I

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->hasRecordPermission()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->isUsbAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->hasAudioPlayback()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->hasAudioCapture()Z

    move-result v0

    if-nez v0, :cond_2

    sget p0, Lcom/android/systemui/R$string;->usb_audio_device_prompt:I

    return p0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->hasRecordPermission()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->isUsbAudioDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->hasAudioCapture()Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/android/systemui/R$string;->usb_audio_device_prompt_warn:I

    return p0

    :cond_3
    const-string p0, "UsbAudioWarningDialogMessage"

    const-string v0, "Only shows title with empty content description!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getPromptTitleId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogType:I

    if-nez p0, :cond_0

    sget p0, Lcom/android/systemui/R$string;->usb_audio_device_permission_prompt_title:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$string;->usb_audio_device_confirm_prompt_title:I

    :goto_0
    return p0
.end method

.method public getUsbAccessoryPromptId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/usb/UsbAudioWarningDialogMessage;->mDialogType:I

    if-nez p0, :cond_0

    sget p0, Lcom/android/systemui/R$string;->usb_accessory_permission_prompt:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$string;->usb_accessory_confirm_prompt:I

    :goto_0
    return p0
.end method
