.class final Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;
.super Ljava/lang/Object;
.source "SoundTriggerSessionPermissionsDecorator.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;


# static fields
.field static final TAG:Ljava/lang/String; = "SoundTriggerSessionPermissionsDecorator"

.field private static final TEMPORARY_PERMISSION_DENIED:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

.field private final mOriginatorIdentity:Landroid/media/permission/Identity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;Landroid/content/Context;Landroid/media/permission/Identity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mOriginatorIdentity:Landroid/media/permission/Identity;

    return-void
.end method

.method static enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0, p1, p2}, Landroid/media/permission/PermissionUtil;->checkPermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected permission check result."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->toString(Landroid/media/permission/Identity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Failed to obtain permission %s for identity %s"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isHoldingPermissions()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mOriginatorIdentity:Landroid/media/permission/Identity;

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mOriginatorIdentity:Landroid/media/permission/Identity;

    const-string v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-static {v0, v1, v2}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->enforcePermissionForPreflight(Landroid/content/Context;Landroid/media/permission/Identity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundTriggerSessionPermissionsDecorator"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method static toString(Landroid/media/permission/Identity;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/permission/Identity;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/permission/Identity;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " attributionTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/permission/Identity;->attributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This object isn\'t intended to be used as a Binder."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getDspModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->getParameter(II)I

    move-result v0

    return v0
.end method

.method public queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->queryParameter(II)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    move-result-object v0

    return-object v0
.end method

.method public setParameter(III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->isHoldingPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->setParameter(III)I

    move-result v0

    return v0
.end method

.method public startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->isHoldingPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->startRecognition(ILjava/lang/String;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;Z)I

    move-result v0

    return v0
.end method

.method public stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/voiceinteraction/SoundTriggerSessionPermissionsDecorator;->mDelegate:Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IVoiceInteractionSoundTriggerSession;->stopRecognition(ILcom/android/internal/app/IHotwordRecognitionStatusCallback;)I

    move-result v0

    return v0
.end method
