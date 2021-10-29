.class public Lcom/android/server/emergency/EmergencyAffordanceService;
.super Lcom/android/server/SystemService;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;,
        Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EMERGENCY_AFFORDANCE_OVERRIDE_ISO:Ljava/lang/String; = "emergency_affordance_override_iso"

.field private static final INITIALIZE_STATE:I = 0x1

.field private static final NETWORK_COUNTRY_CHANGED:I = 0x2

.field private static final SERVICE_NAME:Ljava/lang/String; = "emergency_affordance"

.field private static final SUBSCRIPTION_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EmergencyAffordanceService"

.field private static final UPDATE_AIRPLANE_MODE_STATUS:I = 0x4


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mAnyNetworkNeedsEmergencyAffordance:Z

.field private mAnySimNeedsEmergencyAffordance:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyAffordanceNeeded:Z

.field private final mEmergencyCallCountryIsos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

.field private mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mVoiceCapable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$1;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$2;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_affordance_override_iso"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleInitializeState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/emergency/EmergencyAffordanceService;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleNetworkCountryChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateAirplaneModeStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/emergency/EmergencyAffordanceService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/emergency/EmergencyAffordanceService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/emergency/EmergencyAffordanceService;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method private dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    const-string v0, "EmergencyAffordanceService (dumpsys emergency_affordance) state:\n"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEmergencyAffordanceNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVoiceCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAnySimNeedsEmergencyAffordance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnySimNeedsEmergencyAffordance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAnyNetworkNeedsEmergencyAffordance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnyNetworkNeedsEmergencyAffordance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEmergencyCallCountryIsos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private handleInitializeState()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateAirplaneModeStatus()V

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()V

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateNetworkCountry()V

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    return-void
.end method

.method private handleNetworkCountryChanged(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "EmergencyAffordanceService"

    const-string v1, "Ignore empty countryIso report when APM is on."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateNetworkCountry()V

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    return-void
.end method

.method private handleThirdPartyBootPhase()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EmergencyAffordanceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleUpdateAirplaneModeStatus()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeEnabled:Z

    return-void
.end method

.method private handleUpdateSimSubscriptionInfo()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/emergency/EmergencyAffordanceService;->isoRequiresEmergencyAffordance(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnySimNeedsEmergencyAffordance:Z

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    return-void
.end method

.method private isoRequiresEmergencyAffordance(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateEmergencyAffordanceNeeded()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnySimNeedsEmergencyAffordance:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnyNetworkNeedsEmergencyAffordance:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    const-string v3, "emergency_affordance_needed"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method private updateNetworkCountry()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService;->isoRequiresEmergencyAffordance(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnyNetworkNeedsEmergencyAffordance:Z

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleThirdPartyBootPhase()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;Lcom/android/server/emergency/EmergencyAffordanceService$1;)V

    const-string v1, "emergency_affordance"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
