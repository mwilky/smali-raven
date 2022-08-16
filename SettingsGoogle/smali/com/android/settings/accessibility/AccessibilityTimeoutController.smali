.class public Lcom/android/settings/accessibility/AccessibilityTimeoutController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AccessibilityTimeoutController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/AccessibilityTimeoutController$OnChangeListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityTimeoutKeyToValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityUiTimeoutValue:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mOnChangeListener:Lcom/android/settings/accessibility/AccessibilityTimeoutController$OnChangeListener;

.field private mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field private final mPreferenceKey:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mAccessibilityTimeoutKeyToValueMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mResources:Landroid/content/res/Resources;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    iput-object p3, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method

.method private getAccessibilityTimeoutValue()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "accessibility_interactive_ui_timeout_ms"

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->getSecureAccessibilityTimeoutValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected static getSecureAccessibilityTimeoutValue(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method private getTimeoutValueToKeyMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mAccessibilityTimeoutKeyToValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f01000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f01000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mAccessibilityTimeoutKeyToValueMap:Ljava/util/Map;

    aget-object v5, v0, v3

    aget v6, v1, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mAccessibilityTimeoutKeyToValueMap:Ljava/util/Map;

    return-object p0
.end method

.method private handlePreferenceChange(Ljava/lang/String;)V
    .locals 1

    const-string v0, "accessibility_non_interactive_ui_timeout_ms"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->putSecureString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "accessibility_interactive_ui_timeout_ms"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->putSecureString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putSecureString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setOnClickListener(Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->getTimeoutValueToKeyMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->handlePreferenceChange(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mOnChangeListener:Lcom/android/settings/accessibility/AccessibilityTimeoutController$OnChangeListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-interface {p1, p0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController$OnChangeListener;->onCheckedChanged(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public setOnChangeListener(Lcom/android/settings/accessibility/AccessibilityTimeoutController$OnChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mOnChangeListener:Lcom/android/settings/accessibility/AccessibilityTimeoutController$OnChangeListener;

    return-void
.end method

.method protected updatePreferenceCheckedState(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mAccessibilityUiTimeoutValue:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->getAccessibilityTimeoutValue()I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mAccessibilityUiTimeoutValue:I

    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->getTimeoutValueToKeyMap()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityTimeoutController;->updatePreferenceCheckedState(I)V

    return-void
.end method
