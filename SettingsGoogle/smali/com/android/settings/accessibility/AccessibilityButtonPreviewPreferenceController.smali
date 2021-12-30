.class public Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AccessibilityButtonPreviewPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final DEFAULT_OPACITY:F = 0.55f

.field private static final DEFAULT_SIZE:I

.field private static final SMALL_SIZE:I


# instance fields
.field final mContentObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mFloatingMenuPreviewDrawable:Lcom/android/settings/accessibility/FloatingMenuLayerDrawable;

.field mPreview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController$1;-><init>(Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->updatePreviewPreference()V

    return-void
.end method

.method private getFloatingMenuPreviewDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mFloatingMenuPreviewDrawable:Lcom/android/settings/accessibility/FloatingMenuLayerDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable;->createLayerDrawable(Landroid/content/Context;II)Lcom/android/settings/accessibility/FloatingMenuLayerDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mFloatingMenuPreviewDrawable:Lcom/android/settings/accessibility/FloatingMenuLayerDrawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings/accessibility/FloatingMenuLayerDrawable;->updateLayerDrawable(Landroid/content/Context;II)V

    :goto_0
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mFloatingMenuPreviewDrawable:Lcom/android/settings/accessibility/FloatingMenuLayerDrawable;

    return-object p0
.end method

.method private updatePreviewPreference()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityUtil;->isFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "accessibility_floating_menu_size"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const v2, 0x3f0ccccd    # 0.55f

    const-string v3, "accessibility_floating_menu_opacity"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-nez v0, :cond_0

    const v0, 0x7f0200ed

    goto :goto_0

    :cond_0
    const v0, 0x7f0200ec

    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mPreview:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->getFloatingMenuPreviewDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mPreview:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f0200ea

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

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

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0d0444

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mPreview:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->updatePreviewPreference()V

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

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_button_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_floating_menu_size"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_floating_menu_opacity"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityButtonPreviewPreferenceController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
