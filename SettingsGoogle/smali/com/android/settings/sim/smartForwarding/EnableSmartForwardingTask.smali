.class public Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;
.super Ljava/lang/Object;
.source "EnableSmartForwardingTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;,
        Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallForwardingCommand;,
        Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCallWaitingCommand;,
        Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallForwardingCommand;,
        Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCallWaitingCommand;,
        Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$UpdateCommand;,
        Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$QueryCommand;,
        Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$Command;,
        Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;,
        Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FlowController;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;",
        ">;"
    }
.end annotation


# instance fields
.field client:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallForwardingNumber:[Ljava/lang/String;

.field mResult:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;

.field private final sm:Landroid/telephony/SubscriptionManager;

.field private final tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;-><init>(Z[Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$SlotUTData;)V

    iput-object v0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->mResult:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->client:Lcom/google/common/util/concurrent/SettableFuture;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->sm:Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->mCallForwardingNumber:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->tm:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;)Landroid/telephony/SubscriptionManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->sm:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method


# virtual methods
.method public call()Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    new-instance v0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FlowController;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FlowController;-><init>(Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;)V

    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->mCallForwardingNumber:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FlowController;->init([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FlowController;->startProcess()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->client:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->mResult:Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->client:Lcom/google/common/util/concurrent/SettableFuture;

    const-wide/16 v0, 0x14

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask;->call()Lcom/android/settings/sim/smartForwarding/EnableSmartForwardingTask$FeatureResult;

    move-result-object p0

    return-object p0
.end method
