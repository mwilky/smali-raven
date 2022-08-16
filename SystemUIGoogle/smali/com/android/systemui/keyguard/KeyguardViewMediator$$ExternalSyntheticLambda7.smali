.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;->$r8$classId:I

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;->f$1:I

    iget-object p0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUiSoundsStreamType:I

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v4, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v4

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p0

    monitor-enter v0

    :try_start_0
    iput p0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;

    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda7;->f$1:I

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlay:Lcom/android/systemui/biometrics/UdfpsControllerOverlay;

    if-nez v0, :cond_1

    const-string p0, "UdfpsController"

    const-string v0, "onEnrollProgress received but serverRequest is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->enrollHelper:Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget v1, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iput p0, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    :cond_3
    iget v1, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mRemainingSteps:I

    if-eq p0, v1, :cond_4

    iget v1, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mLocationsEnrolled:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mLocationsEnrolled:I

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->isCenterEnrollmentStage()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mCenterTouchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mCenterTouchCount:I

    :cond_4
    iput p0, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mRemainingSteps:I

    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mListener:Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;

    if-eqz v1, :cond_5

    iget v0, v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;->mTotalSteps:I

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;->onEnrollmentProgress(II)V

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
