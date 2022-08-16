.class public final synthetic Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/PendingIntent$CancelListener;

    sget v1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->$r8$clinit:I

    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    iget-object v0, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/window/WindowContainerTransaction;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    sget-boolean v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    const-string/jumbo v2, "onReverseStateChangedOnBackgroundThread(): rtx="

    const-string v3, "key_rtx_mode"

    const-string v4, "ReverseChargingControl"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-static {v2}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_1

    move v8, v5

    goto :goto_2

    :cond_1
    move v8, v6

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bundle="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " this="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v7, "key_reason_type"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "key_rtx_connection"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "key_accessory_type"

    invoke-virtual {p0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "key_rtx_level"

    invoke-virtual {p0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    iget-boolean v10, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez v10, :cond_4

    iget-boolean v10, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mWirelessCharging:Z

    if-eqz v10, :cond_4

    if-nez v3, :cond_4

    if-lez p0, :cond_4

    iput p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    iget-object p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    const v1, 0x7f130616

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->fireReverseChanged()V

    goto/16 :goto_13

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->isReverseSupported()Z

    move-result v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-nez v10, :cond_5

    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    iput v11, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    iput-object v12, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->fireReverseChanged()V

    goto/16 :goto_13

    :cond_5
    iget v10, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxMode:I

    const/4 v12, 0x4

    const/4 v13, 0x3

    if-ne v10, v5, :cond_d

    if-eq v3, v5, :cond_d

    iget-boolean v14, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz v14, :cond_d

    const/16 v10, 0x8

    const/4 v14, 0x2

    if-eqz v7, :cond_b

    if-eq v7, v5, :cond_a

    if-eq v7, v14, :cond_9

    if-eq v7, v13, :cond_8

    if-eq v7, v12, :cond_7

    const/16 v12, 0xf

    if-eq v7, v12, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v10}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_3

    :cond_7
    const/16 v10, 0x6e

    invoke-virtual {v0, v10}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_3

    :cond_8
    const/16 v10, 0x66

    invoke-virtual {v0, v10}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v13}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v12}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_3

    :cond_b
    if-ne v3, v14, :cond_c

    iget v12, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    if-eqz v12, :cond_c

    invoke-virtual {v0, v10}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    goto :goto_3

    :cond_c
    invoke-virtual {v0, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStopEvent(I)V

    :goto_3
    const-string v10, "Reverse charging error happened : "

    invoke-static {v10, v7, v4}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :cond_d
    if-eq v10, v5, :cond_e

    if-ne v3, v5, :cond_e

    iget-boolean v7, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez v7, :cond_e

    invoke-virtual {v0, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->logReverseStartEvent(I)V

    :cond_e
    :goto_4
    iget v7, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxMode:I

    if-eq v7, v5, :cond_f

    if-ne v3, v5, :cond_f

    iget-boolean v7, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez v7, :cond_f

    iget-boolean v7, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithWlc:Z

    if-eqz v7, :cond_f

    iget-boolean v7, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    if-nez v7, :cond_f

    invoke-virtual {v0, v6}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->enableNfcPollingMode(Z)V

    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    :cond_f
    iput v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxMode:I

    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    iput v11, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mName:Ljava/lang/String;

    const/16 v7, 0x10

    const/16 v10, 0x72

    if-ne v3, v5, :cond_22

    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mProvidingBattery:Z

    const-string v12, ", accType : "

    const/16 v13, 0x5a

    if-nez v3, :cond_15

    if-eqz v8, :cond_15

    if-eqz v1, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "playSoundIfNecessary() play start charging sound: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mStartReconnected : "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    invoke-static {v3, v12, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$14$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_10
    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-eqz v3, :cond_14

    if-eq v9, v7, :cond_12

    if-eq v9, v13, :cond_12

    if-ne v9, v10, :cond_11

    goto :goto_5

    :cond_11
    move v3, v6

    goto :goto_6

    :cond_12
    :goto_5
    move v3, v5

    :goto_6
    if-nez v3, :cond_13

    goto :goto_7

    :cond_13
    const/4 v3, 0x0

    goto :goto_8

    :cond_14
    :goto_7
    iget-object v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    const v12, 0x7f130619

    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_8
    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    goto :goto_b

    :cond_15
    if-eqz v3, :cond_19

    if-nez v8, :cond_19

    if-eqz v1, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "playSoundIfNecessary() play end charging sound: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mStartReConnected : "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    invoke-static {v3, v12, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$14$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_16
    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-nez v3, :cond_19

    if-eq v9, v7, :cond_18

    if-eq v9, v13, :cond_18

    if-ne v9, v10, :cond_17

    goto :goto_9

    :cond_17
    move v3, v6

    goto :goto_a

    :cond_18
    :goto_9
    move v3, v5

    :goto_a
    if-eqz v3, :cond_19

    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-eqz v1, :cond_19

    const-string/jumbo v3, "playSoundIfNecessary() start reconnected"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v3, 0x0

    :goto_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1a

    new-instance v12, Landroid/net/Uri$Builder;

    invoke-direct {v12}, Landroid/net/Uri$Builder;-><init>()V

    const-string v13, "file"

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v12, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->playSound(Landroid/media/Ringtone;)V

    :cond_1a
    iput-boolean v8, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mProvidingBattery:Z

    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-nez v8, :cond_1c

    if-eqz v1, :cond_1b

    const-string/jumbo p0, "receiver is not available"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iput v11, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    iput v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    goto/16 :goto_e

    :cond_1c
    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    iput p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    iput-boolean v5, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUseRxRemovalTimeOut:Z

    iget p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    if-eq p0, v9, :cond_23

    if-eqz v1, :cond_1d

    const-string/jumbo p0, "receiver type updated: "

    invoke-static {p0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-eqz v1, :cond_1e

    const-string p0, "logReverseAccessoryType: "

    invoke-static {p0, v9, v4}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline1;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1e
    if-eqz v9, :cond_21

    sget-boolean p0, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->DEBUG:Z

    new-instance p0, Landroid/frameworks/stats/VendorAtom;

    invoke-direct {p0}, Landroid/frameworks/stats/VendorAtom;-><init>()V

    const-string v3, ""

    iput-object v3, p0, Landroid/frameworks/stats/VendorAtom;->reverseDomainName:Ljava/lang/String;

    new-array v3, v5, [Landroid/frameworks/stats/VendorAtomValue;

    iput-object v3, p0, Landroid/frameworks/stats/VendorAtom;->values:[Landroid/frameworks/stats/VendorAtomValue;

    const v8, 0x186c8

    iput v8, p0, Landroid/frameworks/stats/VendorAtom;->atomId:I

    if-eq v9, v7, :cond_20

    if-ne v9, v10, :cond_1f

    goto :goto_c

    :cond_1f
    move v8, v6

    goto :goto_d

    :cond_20
    :goto_c
    move v8, v5

    :goto_d
    invoke-static {v8}, Landroid/frameworks/stats/VendorAtomValue;->intValue(I)Landroid/frameworks/stats/VendorAtomValue;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingMetrics;->reportVendorAtom(Landroid/frameworks/stats/VendorAtom;)V

    :cond_21
    iput v9, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mCurrentRtxReceiverType:I

    goto :goto_e

    :cond_22
    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mProvidingBattery:Z

    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUseRxRemovalTimeOut:Z

    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    iget-boolean p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mDoesNfcConflictWithWlc:Z

    if-eqz p0, :cond_23

    iget-boolean p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    if-eqz p0, :cond_23

    iput-boolean v6, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreWlcNfcPollingMode:Z

    iget-boolean p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRestoreUsbNfcPollingMode:Z

    xor-int/2addr p0, v5

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->enableNfcPollingMode(Z)V

    :cond_23
    :goto_e
    invoke-virtual {v0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->fireReverseChanged()V

    invoke-virtual {v0, v6}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->cancelRtxTimer(I)V

    invoke-virtual {v0, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->cancelRtxTimer(I)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->cancelRtxTimer(I)V

    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    const/4 v8, 0x3

    if-nez v3, :cond_24

    invoke-virtual {v0, v8}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->cancelRtxTimer(I)V

    :cond_24
    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz v3, :cond_2f

    iget v12, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    if-ne v12, v11, :cond_2f

    iget-boolean v1, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-eqz v1, :cond_27

    if-ne v9, v7, :cond_25

    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

    goto :goto_f

    :cond_25
    if-ne v9, v10, :cond_26

    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_PHONE_RECONNECTED_TIME_OUT:J

    goto :goto_f

    :cond_26
    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_ADVANCED_PLUS_ACCESSORY_DEVICE_RECONNECTED_TIME_OUT:J

    goto :goto_f

    :cond_27
    iget-boolean v1, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    if-eqz v1, :cond_28

    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_AC_TIME_OUT:J

    goto :goto_f

    :cond_28
    iget-boolean v1, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUseRxRemovalTimeOut:Z

    if-eqz v1, :cond_29

    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_RX_REMOVAL_TIME_OUT:J

    goto :goto_f

    :cond_29
    sget-wide v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DURATION_TO_REVERSE_TIME_OUT:J

    :goto_f
    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    if-eqz v3, :cond_2a

    const-string/jumbo v3, "rtx.ac.timeout"

    goto :goto_10

    :cond_2a
    const-string/jumbo v3, "rtx.timeout"

    :goto_10
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2b

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRtxTimeOut(): invalid timeout, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_11
    sget-boolean v3, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->DEBUG:Z

    if-eqz v3, :cond_2c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReverseStateChangedOnBackgroundThread(): time out, setRtxTimer, duration="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStartReconnected:Z

    if-eqz v3, :cond_2d

    move v6, v8

    goto :goto_12

    :cond_2d
    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mUseRxRemovalTimeOut:Z

    if-eqz v3, :cond_2e

    iget-boolean v3, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mStopReverseAtAcUnplug:Z

    if-nez v3, :cond_2e

    move v6, p0

    :cond_2e
    :goto_12
    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setRtxTimer(JI)V

    goto :goto_13

    :cond_2f
    if-eqz v3, :cond_31

    iget p0, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mRtxLevel:I

    const/16 v3, 0x64

    if-lt p0, v3, :cond_31

    if-eqz v1, :cond_30

    invoke-static {v2}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-boolean v1, v0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Rx fully charged, setRtxTimer, REVERSE_FINISH_RX_FULL"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setRtxTimer(JI)V

    :cond_31
    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
