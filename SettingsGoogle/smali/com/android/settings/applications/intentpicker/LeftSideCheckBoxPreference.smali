.class public Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;
.super Lcom/android/settingslib/widget/TwoTargetPreference;
.source "LeftSideCheckBoxPreference.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/widget/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f06018f

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;->mChecked:Z

    const p1, 0x7f06018f

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/TwoTargetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;->mChecked:Z

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;->mChecked:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-boolean v0, p0, Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;->mChecked:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
