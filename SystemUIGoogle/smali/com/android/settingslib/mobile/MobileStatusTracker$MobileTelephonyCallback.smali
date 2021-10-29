.class public Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;
.super Landroid/telephony/TelephonyCallback;
.source "MobileStatusTracker.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$SignalStrengthsListener;
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$DataActivityListener;
.implements Landroid/telephony/TelephonyCallback$CarrierNetworkListener;
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
.implements Landroid/telephony/TelephonyCallback$DisplayInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/mobile/MobileStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MobileTelephonyCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/mobile/MobileStatusTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActiveDataSubscriptionIdChanged: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$300(Lcom/android/settingslib/mobile/MobileStatusTracker;)V

    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarrierNetworkChange: active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput-boolean p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->carrierNetworkChangeMode:Z

    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity: direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0, p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$200(Lcom/android/settingslib/mobile/MobileStatusTracker;I)V

    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p2}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p2

    iput p1, p2, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->dataState:I

    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 p2, 0x1

    new-instance v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    invoke-interface {p1, p2, v0}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V
    .locals 3

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayInfoChanged: telephonyDisplayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput-object p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->telephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged voiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " dataState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput-object p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->serviceState:Landroid/telephony/ServiceState;

    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    const-string v0, "MobileStatusTracker"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {v0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object v0

    iput-object p1, v0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;->signalStrength:Landroid/telephony/SignalStrength;

    iget-object p1, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p1}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$100(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;

    move-result-object p1

    const/4 v0, 0x1

    new-instance v1, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    iget-object p0, p0, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileTelephonyCallback;->this$0:Lcom/android/settingslib/mobile/MobileStatusTracker;

    invoke-static {p0}, Lcom/android/settingslib/mobile/MobileStatusTracker;->access$000(Lcom/android/settingslib/mobile/MobileStatusTracker;)Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;-><init>(Lcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/mobile/MobileStatusTracker$Callback;->onMobileStatusChanged(ZLcom/android/settingslib/mobile/MobileStatusTracker$MobileStatus;)V

    return-void
.end method
