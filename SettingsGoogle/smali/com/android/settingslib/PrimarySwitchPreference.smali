.class public Lcom/android/settingslib/PrimarySwitchPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "PrimarySwitchPreference.java"


# instance fields
.field private mChecked:Z

.field private mCheckedSet:Z

.field private mEnableSwitch:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public static synthetic $r8$lambda$aYN-0qoGuHaLgHlf-CATsBamDlY(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->lambda$onBindViewHolder$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ktK7wLFjV7KlikuDOlpGJ_i3dkY(Lcom/android/settingslib/PrimarySwitchPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->lambda$onBindViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Switch;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-static {v0, v1}, Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor;->detectToggleJank(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistBoolean(Z)Z

    :cond_1
    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCheckedState()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mCheckedSet:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected getSecondTargetResId()I
    .locals 0

    sget p0, Lcom/android/settingslib/R$layout;->preference_widget_primary_switch:I

    return p0
.end method

.method public getSwitch()Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    sget v0, Lcom/android/settingslib/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settingslib/PrimarySwitchPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settingslib/PrimarySwitchPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/PrimarySwitchPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/android/settingslib/PrimarySwitchPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settingslib/PrimarySwitchPreference$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mCheckedSet:Z

    if-nez v0, :cond_2

    :cond_1
    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mChecked:Z

    iput-boolean v1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mCheckedSet:Z

    iget-object p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mEnableSwitch:Z

    iget-object p0, p0, Lcom/android/settingslib/PrimarySwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/PrimarySwitchPreference;->getSecondTargetResId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
