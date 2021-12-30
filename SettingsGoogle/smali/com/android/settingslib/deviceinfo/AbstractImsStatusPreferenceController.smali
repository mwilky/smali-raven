.class public abstract Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractImsStatusPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController$StateCallback;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_IMS_REGISTRATION_STATE:Ljava/lang/String; = "ims_reg_state"


# instance fields
.field private mImsStatus:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v3, "android.net.wifi.STATE_CHANGE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "ims_reg_state"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mImsStatus:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->updateConnectivity()V

    return-void
.end method

.method protected getConnectivityIntents()[Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "ims_reg_state"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string v0, "show_ims_registration_status_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected updateConnectivity()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mImsStatus:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mImsStatus:Landroidx/preference/Preference;

    sget v0, Lcom/android/settingslib/R$string;->ims_reg_status_not_registered:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController$StateCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController$StateCallback;-><init>(Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController$1;)V

    invoke-static {v0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsMmTelManager;->getRegistrationState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController;->mImsStatus:Landroidx/preference/Preference;

    invoke-virtual {v2}, Lcom/android/settingslib/deviceinfo/AbstractImsStatusPreferenceController$StateCallback;->waitUntilResult()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settingslib/R$string;->ims_reg_status_registered:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/settingslib/R$string;->ims_reg_status_not_registered:I

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
