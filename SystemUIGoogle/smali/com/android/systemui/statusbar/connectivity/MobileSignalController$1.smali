.class public final Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;
.super Ljava/lang/Object;
.source "MobileSignalController.java"

# interfaces
.implements Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/connectivity/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mLastStatus:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMobileStatusChanged= updateTelephony="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mobileStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->mLastStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->mLastStatus:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->SSDF:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v4, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistory:[Ljava/lang/String;

    iget v5, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    aput-object v0, v4, v5

    add-int/2addr v5, v3

    rem-int/lit8 v5, v5, 0x40

    iput v5, v2, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mMobileStatusHistoryIndex:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getVoiceServiceState()I

    move-result v2

    iget-object v4, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v4, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v5, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->activityIn:Z

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityIn:Z

    iget-boolean v5, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->activityOut:Z

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/connectivity/ConnectivityState;->activityOut:Z

    iget-boolean v5, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataSim:Z

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    iget-boolean v5, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->carrierNetworkChangeMode:Z

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->carrierNetworkChangeMode:Z

    iget v5, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    iput v5, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataState:I

    iget-object v5, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    iput-object v5, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->signalStrength:Landroid/telephony/SignalStrength;

    iget-object v6, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iput-object v6, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object p2, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    iput-object p2, v4, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    iget-boolean p2, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelBehavior:Z

    const/4 v4, 0x0

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getSignalLevel(Landroid/telephony/SignalStrength;)I

    move-result p2

    iget v5, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastLevel:I

    if-eq p2, v5, :cond_6

    iput p2, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastLevel:I

    iput p2, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWwanLevel:I

    iget v5, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    if-ne v5, v3, :cond_3

    new-instance v5, Lcom/android/systemui/statusbar/connectivity/IconState;

    invoke-static {p2, v4}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v6

    invoke-virtual {v0, p2, v4}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ILjava/lang/String;Z)V

    iget-object v6, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    :cond_3
    iget-object v5, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast v5, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/connectivity/MobileState;->dataSim:Z

    if-eqz v5, :cond_6

    iget-object v5, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    move v6, v4

    :goto_0
    iget-object v7, v5, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    iget-object v7, v5, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-boolean v8, v7, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelBehavior:Z

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    iput p2, v7, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanCrossSimLevel:I

    iget v8, v7, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    if-eq v8, v1, :cond_5

    goto :goto_1

    :cond_5
    new-instance v8, Lcom/android/systemui/statusbar/connectivity/IconState;

    invoke-static {p2, v4}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result v9

    invoke-virtual {v7, p2, v4}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v3}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ILjava/lang/String;Z)V

    iget-object v9, v7, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    iget-boolean p2, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mProviderModelBehavior:Z

    if-eqz p2, :cond_b

    iget-object p2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/connectivity/MobileState;->getVoiceServiceState()I

    move-result p2

    if-ne v2, p2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, -0x1

    if-eq v2, v1, :cond_8

    if-eqz v2, :cond_8

    if-nez p2, :cond_b

    :cond_8
    iget-object p2, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mCurrentState:Lcom/android/systemui/statusbar/connectivity/ConnectivityState;

    check-cast p2, Lcom/android/systemui/statusbar/connectivity/MobileState;

    iget-object p2, p2, Lcom/android/systemui/statusbar/connectivity/MobileState;->serviceState:Landroid/telephony/ServiceState;

    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result p2

    if-nez p2, :cond_a

    move v4, v3

    :cond_a
    :goto_3
    xor-int/lit8 p2, v4, 0x1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->hideNoCalling()Z

    move-result v1

    xor-int/2addr v1, v3

    and-int/2addr p2, v1

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/IconState;

    const v2, 0x7f080644

    const v3, 0x7f130086

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/connectivity/SignalController;->getTextIfExists(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p2}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ILjava/lang/String;Z)V

    iget-object p2, v0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    :cond_b
    :goto_4
    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->updateTelephony()V

    goto :goto_5

    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$1;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    :goto_5
    return-void
.end method
