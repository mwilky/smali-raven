.class public Lcom/android/systemui/telephony/TelephonyListenerManager;
.super Ljava/lang/Object;
.source "TelephonyListenerManager.java"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mListening:Z

.field private final mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/telephony/TelephonyCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mListening:Z

    iput-object p1, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    return-void
.end method

.method private updateListening()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mListening:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    invoke-virtual {v0}, Lcom/android/systemui/telephony/TelephonyCallback;->hasAnyListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mListening:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    invoke-virtual {v0}, Lcom/android/systemui/telephony/TelephonyCallback;->hasAnyListeners()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mListening:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/telephony/TelephonyCallback;->addActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V

    invoke-direct {p0}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    return-void
.end method

.method public addCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/telephony/TelephonyCallback;->addCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    invoke-direct {p0}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    return-void
.end method

.method public addServiceStateListener(Landroid/telephony/TelephonyCallback$ServiceStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/telephony/TelephonyCallback;->addServiceStateListener(Landroid/telephony/TelephonyCallback$ServiceStateListener;)V

    invoke-direct {p0}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    return-void
.end method

.method public removeActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/telephony/TelephonyCallback;->removeActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V

    invoke-direct {p0}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    return-void
.end method

.method public removeCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/telephony/TelephonyCallback;->removeCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    invoke-direct {p0}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    return-void
.end method

.method public removeServiceStateListener(Landroid/telephony/TelephonyCallback$ServiceStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/telephony/TelephonyCallback;->removeServiceStateListener(Landroid/telephony/TelephonyCallback$ServiceStateListener;)V

    invoke-direct {p0}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    return-void
.end method
