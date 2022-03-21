.class public Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;
.super Lcom/android/settingslib/widget/RadioButtonPreference;
.source "ColumbusRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference$ContextualSummaryProvider;
    }
.end annotation


# instance fields
.field private mContextualSummaryProvider:Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference$ContextualSummaryProvider;

.field private mExtraWidgetView:Landroid/widget/ImageView;

.field private mMetric:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateAccessibilityDescription()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mExtraWidgetView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04060b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method getMetric()I
    .locals 0

    iget p0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mMetric:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/RadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0d0483

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mExtraWidgetView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->updateAccessibilityDescription()V

    return-void
.end method

.method setContextualSummaryProvider(Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference$ContextualSummaryProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mContextualSummaryProvider:Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference$ContextualSummaryProvider;

    return-void
.end method

.method setMetric(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mMetric:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->updateAccessibilityDescription()V

    return-void
.end method

.method updateSummary(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference;->mContextualSummaryProvider:Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference$ContextualSummaryProvider;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/settings/gestures/columbus/ColumbusRadioButtonPreference$ContextualSummaryProvider;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
