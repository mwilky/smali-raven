.class public Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AccessibilityFooterPreferenceController.java"


# instance fields
.field private mHelpResource:I

.field private mIntroductionTitle:Ljava/lang/String;

.field private mLearnMoreContentDescription:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$kaiAXm03y0ilS1wue_NlqKru_tE(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->lambda$updateFooterPreferences$0(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$updateFooterPreferences$0(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateFooterPreferences(Lcom/android/settings/accessibility/AccessibilityFooterPreference;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->getIntroductionTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->getHelpResource()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->getHelpResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->getLearnMoreContentDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreContentDescription(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->setLinkEnabled(Z)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->setLinkEnabled(Z)V

    :goto_1
    return-void
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

    check-cast p1, Lcom/android/settings/accessibility/AccessibilityFooterPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->updateFooterPreferences(Lcom/android/settings/accessibility/AccessibilityFooterPreference;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

.method protected getHelpResource()I
    .locals 0

    iget p0, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->mHelpResource:I

    return p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method protected getIntroductionTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->mIntroductionTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected getLearnMoreContentDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->mLearnMoreContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public setIntroductionTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->mIntroductionTitle:Ljava/lang/String;

    return-void
.end method

.method public setupHelpLink(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->mHelpResource:I

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreferenceController;->mLearnMoreContentDescription:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
