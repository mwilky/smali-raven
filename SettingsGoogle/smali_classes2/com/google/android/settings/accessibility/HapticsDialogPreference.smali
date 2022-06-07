.class public Lcom/google/android/settings/accessibility/HapticsDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "HapticsDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfoIcon:Landroid/view/View;

.field private mIsAvailable:Z

.field private mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

.field private mSummary:Landroid/view/View;

.field private mTitle:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const v0, 0x7f0601bb

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    new-instance v0, Lcom/google/android/settings/accessibility/HapticsDialogPreference$1;

    iget-object v1, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/android/settings/accessibility/HapticsDialogPreference$1;-><init>(Lcom/google/android/settings/accessibility/HapticsDialogPreference;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    return-void
.end method

.method private performEnabledClick()V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->getSourceMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public getDestination()Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/accessibility/VibrationSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGestureDialogMessage()I
    .locals 0

    const p0, 0x7f040061

    return p0
.end method

.method public getGestureDialogTitle()I
    .locals 0

    const p0, 0x7f041544

    return p0
.end method

.method public getSourceMetricsCategory()I
    .locals 0

    const/16 p0, 0x50c

    return p0
.end method

.method protected isAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mIsAvailable:Z

    return p0
.end method

.method public onAttached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mTitle:Landroid/view/View;

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mSummary:Landroid/view/View;

    const v0, 0x7f0d02dc

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mInfoIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->updatePreference()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method public onDetached()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    iget-object p0, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->register(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->getGestureDialogTitle()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->getGestureDialogMessage()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f040ecc

    invoke-virtual {p1, p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, ""

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public performClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->performEnabledClick()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->performClick()V

    :goto_0
    return-void
.end method

.method protected updatePreference()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mReceiver:Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;

    invoke-virtual {v0}, Lcom/google/android/settings/accessibility/HapticsRingReceiverHelper;->isRingerModeSilent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mIsAvailable:Z

    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mTitle:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mSummary:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->mInfoIcon:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/settings/accessibility/HapticsDialogPreference;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
