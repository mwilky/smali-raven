.class public Lcom/google/android/settings/aware/AwareDisplaySettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "AwareDisplaySettings.java"


# static fields
.field static final KEY_ALWAYS_ON:Ljava/lang/String; = "aware_always_on"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_OFF:Ljava/lang/String; = "aware_wake_off"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_WAKE_DISPLAY:Ljava/lang/String; = "aware_wake_display"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MY_USER:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private mHelper:Lcom/google/android/settings/aware/AwareHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/google/android/settings/aware/AwareDisplaySettings;->MY_USER:I

    new-instance v0, Lcom/google/android/settings/aware/AwareDisplaySettings$1;

    const v1, 0x7f150032

    invoke-direct {v0, v1}, Lcom/google/android/settings/aware/AwareDisplaySettings$1;-><init>(I)V

    sput-object v0, Lcom/google/android/settings/aware/AwareDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public bindPreference(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settingslib/widget/RadioButtonPreference;
    .locals 1

    instance-of v0, p3, Lcom/android/settings/utils/CandidateInfoExtra;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/settings/utils/CandidateInfoExtra;

    invoke-virtual {v0}, Lcom/android/settings/utils/CandidateInfoExtra;->loadSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setAppendixVisibility(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreference(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settingslib/widget/RadioButtonPreference;

    move-result-object p0

    return-object p0
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {v2}, Lcom/google/android/settings/aware/AwareHelper;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/settings/utils/CandidateInfoExtra;

    const v3, 0x7f040316

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f040314

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {v5}, Lcom/google/android/settings/aware/AwareHelper;->isGestureConfigurable()Z

    move-result v5

    const-string v6, "aware_wake_display"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v2, Lcom/google/android/settings/aware/AwareDisplaySettings;->MY_USER:I

    invoke-virtual {p0, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/settings/utils/CandidateInfoExtra;

    const v3, 0x7f040021

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v4, 0x7f040020

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "aware_always_on"

    invoke-direct {p0, v3, v4, v5, v2}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance p0, Lcom/android/settings/utils/CandidateInfoExtra;

    const v3, 0x7f041378

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "aware_wake_off"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/android/settings/utils/CandidateInfoExtra;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    sget v1, Lcom/google/android/settings/aware/AwareDisplaySettings;->MY_USER:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeDisplayGestureEnabled(I)Z

    move-result v0

    iget-object v2, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v2, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0}, Lcom/google/android/settings/aware/AwareHelper;->isGestureConfigurable()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    const-string p0, "aware_wake_display"

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    const-string p0, "aware_always_on"

    return-object p0

    :cond_1
    const-string p0, "aware_wake_off"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6d6

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150032

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/settings/aware/AwareHelper;

    invoke-direct {v0, p1}, Lcom/google/android/settings/aware/AwareHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    const p1, 0x7f03000d

    const v0, 0x7f020103

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->setIllustration(II)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "aware_wake_off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "aware_wake_display"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "aware_always_on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    const-string p1, "doze_wake_display_gesture"

    const-string v1, "doze_always_on"

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v4, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {v4, v1, v2}, Lcom/google/android/settings/aware/AwareHelper;->writeFeatureEnabled(Ljava/lang/String;Z)V

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/settings/aware/AwareHelper;->writeFeatureEnabled(Ljava/lang/String;Z)V

    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/settings/aware/AwareHelper;->writeFeatureEnabled(Ljava/lang/String;Z)V

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0, p1, v3}, Lcom/google/android/settings/aware/AwareHelper;->writeFeatureEnabled(Ljava/lang/String;Z)V

    invoke-static {v0, p1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {v4, v1, v3}, Lcom/google/android/settings/aware/AwareHelper;->writeFeatureEnabled(Ljava/lang/String;Z)V

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/google/android/settings/aware/AwareDisplaySettings;->mHelper:Lcom/google/android/settings/aware/AwareHelper;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/settings/aware/AwareHelper;->writeFeatureEnabled(Ljava/lang/String;Z)V

    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f2ff692 -> :sswitch_2
        -0x62865a98 -> :sswitch_1
        0x23b27d15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
