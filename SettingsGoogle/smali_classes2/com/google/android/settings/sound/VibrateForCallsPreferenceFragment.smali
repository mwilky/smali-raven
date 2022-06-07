.class public Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "VibrateForCallsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;
    }
.end annotation


# static fields
.field static final KEY_ALWAYS_VIBRATE:Ljava/lang/String; = "always_vibrate"

.field static final KEY_NEVER_VIBRATE:Ljava/lang/String; = "never_vibrate"

.field static final KEY_RAMPING_RINGER:Ljava/lang/String; = "ramping_ringer"


# instance fields
.field private final mCandidates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFooter:Lcom/android/settingslib/widget/FooterPreference;

.field private mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

.field private mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->updatePreferenceVisibility()V

    return-void
.end method

.method private loadCandidates(Landroid/content/Context;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    const-string v1, "never_vibrate"

    const v2, 0x7f041542

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;-><init>(Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;Ljava/lang/String;I)V

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    const-string v1, "always_vibrate"

    const v2, 0x7f041541

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;-><init>(Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;Ljava/lang/String;I)V

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    new-instance v0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    const-string v1, "ramping_ringer"

    const v2, 0x7f041543

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;-><init>(Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;Ljava/lang/String;I)V

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updatePreferenceVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->isRingerModeSilent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->savePrimarySwitchOffTriggerReason(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget-object p0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const-string v1, "vibrate_for_calls_trigger_reason_acknowledged"

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->isTriggerReasonAcknowledged(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->isSwitchOffTriggerReasonDependencies()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;->setAckFlag(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSettings(Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "always_vibrate"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "apply_ramping_ringer"

    const-string v3, "vibrate_when_ringing"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string v0, "ramping_ringer"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v2, "never_vibrate"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v2, "always_vibrate"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v1, "ramping_ringer"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "apply_ramping_ringer"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "ramping_ringer"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "vibrate_when_ringing"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_1

    const-string p0, "always_vibrate"

    return-object p0

    :cond_1
    const-string p0, "never_vibrate"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x723

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150106

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->loadCandidates(Landroid/content/Context;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    const v0, 0x7f020231

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    const v2, 0x7f04153a

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    :cond_0
    new-instance v0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$1;-><init>(Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    new-instance v0, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/settings/accessibility/HapticsSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mSharedPrefs:Lcom/google/android/settings/accessibility/HapticsSharedPreferences;

    invoke-direct {p0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->updatePreferenceVisibility()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    iget-object p0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown vibrate for calls candidate (key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibrateForCallsPreferenceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment;->updateSettings(Lcom/google/android/settings/sound/VibrateForCallsPreferenceFragment$VibrateForCallsCandidateInfo;)V

    const/4 p0, 0x1

    return p0
.end method
