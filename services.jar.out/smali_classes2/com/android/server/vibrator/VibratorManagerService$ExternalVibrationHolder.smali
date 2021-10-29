.class final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ExternalVibrationHolder"
.end annotation


# instance fields
.field public final externalVibration:Landroid/os/ExternalVibration;

.field private mEndTimeDebug:J

.field private final mStartTimeDebug:J

.field private mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public scale:I

.field final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStartTimeDebug:J

    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V

    return-void
.end method


# virtual methods
.method public end(Lcom/android/server/vibrator/Vibration$Status;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mEndTimeDebug:J

    return-void
.end method

.method public getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;
    .locals 14

    new-instance v13, Lcom/android/server/vibrator/Vibration$DebugInfo;

    iget-wide v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStartTimeDebug:J

    iget-wide v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mEndTimeDebug:J

    iget v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    int-to-float v7, v0

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0}, Landroid/os/ExternalVibration;->getUid()I

    move-result v9

    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v0}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/android/server/vibrator/Vibration$DebugInfo;-><init>(JJLandroid/os/CombinedVibration;Landroid/os/CombinedVibration;FLandroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/vibrator/Vibration$Status;)V

    return-object v13
.end method
