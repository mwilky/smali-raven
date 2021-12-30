.class public Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "NrAdvancedCallingPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$PhoneCallStateTelephonyCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoNrSettings"


# instance fields
.field private mCallState:Ljava/lang/Integer;

.field private mHas5gCapability:Z

.field private mIsNrEnableFromCarrierConfig:Z

.field private mIsVonrVisibleFromCarrierConfig:Z

.field mPreference:Landroidx/preference/Preference;

.field private mTelephonyCallback:Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$PhoneCallStateTelephonyCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mIsVonrVisibleFromCarrierConfig:Z

    iput-boolean p2, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mIsNrEnableFromCarrierConfig:Z

    iput-boolean p2, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mHas5gCapability:Z

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;)Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$PhoneCallStateTelephonyCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$PhoneCallStateTelephonyCallback;

    return-object p0
.end method

.method private isUserControlAllowed()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->isCallStateIdle()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->init(I)Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mHas5gCapability:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mIsNrEnableFromCarrierConfig:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mIsVonrVisibleFromCarrierConfig:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(I)Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;
    .locals 5

    const-string v0, "VoNrSettings"

    const-string v1, "init: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$PhoneCallStateTelephonyCallback;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$PhoneCallStateTelephonyCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$PhoneCallStateTelephonyCallback;-><init>(Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$1;)V

    iput-object v1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$PhoneCallStateTelephonyCallback;

    :cond_0
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    iget-object v1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v1

    const-wide/32 v3, 0x80000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mHas5gCapability:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    const-string v1, "vonr_setting_visibility_bool"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mIsVonrVisibleFromCarrierConfig:Z

    const-string v1, "carrier_nr_availabilities_int_array"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([I)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mIsNrEnableFromCarrierConfig:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHas5gCapability: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mHas5gCapability:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsNrEnabledFromCarrierConfig: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mIsNrEnableFromCarrierConfig:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsVonrVisibleFromCarrierConfig: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mIsVonrVisibleFromCarrierConfig:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method protected isCallStateIdle()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoNrEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$PhoneCallStateTelephonyCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$PhoneCallStateTelephonyCallback;->register(Landroid/telephony/TelephonyManager;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$PhoneCallStateTelephonyCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController$PhoneCallStateTelephonyCallback;->unregister()V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 4

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VoNrSettings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setVoNrEnabled(Z)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to set VoNR result= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". subId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/NrAdvancedCallingPreferenceController;->isUserControlAllowed()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
