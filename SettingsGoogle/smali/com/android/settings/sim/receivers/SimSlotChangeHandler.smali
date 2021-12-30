.class public Lcom/android/settings/sim/receivers/SimSlotChangeHandler;
.super Ljava/lang/Object;
.source "SimSlotChangeHandler.java"


# static fields
.field private static volatile sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubMgr:Landroid/telephony/SubscriptionManager;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$_rIyJ7VmT1y9FwXu3qhT5LmGpIo(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->lambda$getGroupedEmbeddedSubscriptions$0(Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/settings/sim/receivers/SimSlotChangeHandler;
    .locals 2

    sget-object v0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    invoke-direct {v1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;-><init>()V

    sput-object v1, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->sSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    return-object v0
.end method

.method private getGroupedEmbeddedSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getSelectableSubscriptionInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/sim/receivers/SimSlotChangeHandler$$ExternalSyntheticLambda0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private getLastRemovableSimSlotState(Landroid/content/Context;)I
    .locals 1

    const-string p0, "euicc_prefs"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "removable_slot_state"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getRemovableUiccSlotInfo()Landroid/telephony/UiccSlotInfo;
    .locals 5

    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "SimSlotChangeHandler"

    const-string v1, "slotInfos is null. Unable to get slot infos."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/telephony/UiccSlotInfo;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getSuwRemovableSlotAction(Landroid/content/Context;)I
    .locals 1

    const-string p0, "euicc_prefs"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "suw_psim_action"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private handleSimInsert(Landroid/telephony/UiccSlotInfo;)V
    .locals 3

    const-string v0, "SimSlotChangeHandler"

    const-string v1, "Handle SIM inserted."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->isSuwFinished(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string p1, "Still in SUW. Handle SIM insertion after SUW is finished"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v2}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->setSuwRemovableSlotAction(Landroid/content/Context;I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getIsActive()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "The removable slot is already active. Do nothing."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->hasActiveEsimSubscription()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isMultiSimSupported()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Enabled profile exists. DSDS condition satisfied."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->startDsdsDialogActivity()V

    goto :goto_0

    :cond_2
    const-string p1, "Enabled profile exists. DSDS condition not satisfied."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->startChooseSimActivity(Z)V

    :goto_0
    return-void

    :cond_3
    const-string p1, "No enabled eSIM profile. Ready to switch to removable slot and show notification."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settings/network/UiccSlotUtil;->switchToRemovableSlot(ILandroid/content/Context;)V
    :try_end_0
    .catch Lcom/android/settings/network/UiccSlotsException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/sim/SimNotificationService;->scheduleSimNotification(Landroid/content/Context;I)V

    return-void

    :catch_0
    const-string p0, "Failed to switch to removable slot."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleSimRemove(Landroid/telephony/UiccSlotInfo;)V
    .locals 4

    const-string v0, "SimSlotChangeHandler"

    const-string v1, "Handle SIM removed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->isSuwFinished(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "Still in SUW. Handle SIM removal after SUW is finished"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->setSuwRemovableSlotAction(Landroid/content/Context;I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->getGroupedEmbeddedSubscriptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getIsActive()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    const-string p1, "Only 1 eSIM profile found. Ask user\'s consent to switch."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->startSwitchSlotConfirmDialogActivity(Landroid/telephony/SubscriptionInfo;)V

    return-void

    :cond_2
    const-string p1, "Multiple eSIM profiles found. Ask user which subscription to use."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->startChooseSimActivity(Z)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "eSIM slot is active or no subscriptions exist. Do nothing."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasActiveEsimSubscription()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/network/SwitchToRemovableSlotSidecar$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/network/SwitchToRemovableSlotSidecar$$ExternalSyntheticLambda0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mSubMgr:Landroid/telephony/SubscriptionManager;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static isSuwFinished(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "device_provisioned"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "SimSlotChangeHandler"

    const-string v2, "Cannot get DEVICE_PROVISIONED from the device."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static synthetic lambda$getGroupedEmbeddedSubscriptions$0(Landroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p0

    return p0
.end method

.method private setRemovableSimSlotState(Landroid/content/Context;I)V
    .locals 1

    const-string p0, "euicc_prefs"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "removable_slot_state"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setSuwRemovableSlotAction(Landroid/content/Context;I)V
    .locals 1

    const-string p0, "euicc_prefs"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "suw_psim_action"

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private startChooseSimActivity(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/sim/ChooseSimActivity;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "has_psim"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startDsdsDialogActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/sim/DsdsDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startSwitchSlotConfirmDialogActivity(Landroid/telephony/SubscriptionInfo;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/sim/SwitchToEsimConfirmDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "sub_to_enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method onSlotsStatusChange(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->init(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    const-string v0, "SimSlotChangeHandler"

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    const-string p0, "The device is already in DSDS mode. Do nothing."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->getRemovableUiccSlotInfo()Landroid/telephony/UiccSlotInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Unable to find the removable slot. Do nothing."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->getLastRemovableSimSlotState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v3}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->setRemovableSimSlotState(Landroid/content/Context;I)V

    const/4 v4, 0x2

    if-ne v2, v1, :cond_2

    if-ne v3, v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->handleSimInsert(Landroid/telephony/UiccSlotInfo;)V

    return-void

    :cond_2
    if-ne v2, v4, :cond_3

    if-ne v3, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->handleSimRemove(Landroid/telephony/UiccSlotInfo;)V

    return-void

    :cond_3
    const-string p0, "Do nothing on slot status changes."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot be called from main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method onSuwFinish(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->init(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    const-string v0, "SimSlotChangeHandler"

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    const-string p0, "The device is already in DSDS mode. Do nothing."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->getRemovableUiccSlotInfo()Landroid/telephony/UiccSlotInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Unable to find the removable slot. Do nothing."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->getGroupedEmbeddedSubscriptions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->getSuwRemovableSlotAction(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v3}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->setSuwRemovableSlotAction(Landroid/content/Context;I)V

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v2

    if-ne v2, v3, :cond_4

    iget-object p1, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isMultiSimSupported()I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "DSDS condition satisfied. Show notification."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->mContext:Landroid/content/Context;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/settings/sim/SimNotificationService;->scheduleSimNotification(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    if-ne v4, v1, :cond_5

    const-string p1, "Both removable SIM and eSIM are present. DSDS condition doesn\'t satisfied. User inserted pSIM during SUW. Show choose SIM screen."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->startChooseSimActivity(Z)V

    goto :goto_1

    :cond_4
    if-ne v4, v3, :cond_5

    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->handleSimRemove(Landroid/telephony/UiccSlotInfo;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot be called from main thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
