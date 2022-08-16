.class public final Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;
.super Landroid/telephony/ims/RegistrationManager$RegistrationCallback;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/connectivity/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/connectivity/MobileSignalController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    invoke-direct {p0}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegistered: attributes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getTransportType()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ims/ImsRegistrationAttributes;->getAttributeFlags()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iput v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWwanLevel:I

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget v4, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWwanLevel:I

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iput v3, p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanLevel:I

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget v3, v1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanLevel:I

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    const/4 v0, 0x3

    iput v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    new-instance v0, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanCrossSimLevel:I

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget v4, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWlanCrossSimLevel:I

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/SignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistered: info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    const/4 v0, 0x1

    iput v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mImsType:I

    new-instance v1, Lcom/android/systemui/statusbar/connectivity/IconState;

    iget p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWwanLevel:I

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthIcon(IZ)I

    move-result p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget v4, v3, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mLastWwanLevel:I

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->getCallStrengthDescription(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/android/systemui/statusbar/connectivity/IconState;-><init>(ILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController$2;->this$0:Lcom/android/systemui/statusbar/connectivity/MobileSignalController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/connectivity/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyCallStateChange(Lcom/android/systemui/statusbar/connectivity/IconState;I)V

    return-void
.end method
