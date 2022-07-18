.class public Lcom/android/systemui/settings/brightness/ToggleSeekBar;
.super Landroid/widget/SeekBar;
.source "ToggleSeekBar.java"


# instance fields
.field private mAccessibilityLabel:Ljava/lang/String;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/SeekBar;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object p0

    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAccessibilityLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mAccessibilityLabel:Ljava/lang/String;

    return-void
.end method

.method public setEnforcedAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method

.method public setSliderHeight(Landroid/graphics/drawable/Drawable;)V
    .registers 11
    .param p1, "mProgressDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 75
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const-string v1, "background"

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getIdentifierAndroid(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 76
    .local v1, "insetDrawableBackground":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 77
    .local v2, "gradientDrawableBackground":Landroid/graphics/drawable/GradientDrawable;
    const-string v3, "dimen"

    if-eqz v2, :cond_59

    .line 78
    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicWidth()I

    move-result v4

    .line 79
    .local v4, "width":I
    iget-object v5, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "rounded_slider_track_width"

    invoke-static {v6, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 80
    .local v5, "height":I
    sget-boolean v6, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderCustom:Z

    if-eqz v6, :cond_39

    sget v6, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderTrackHeight:I

    goto :goto_3a

    :cond_39
    move v6, v5

    :goto_3a
    invoke-virtual {v2, v4, v6}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 81
    sget-boolean v6, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderCustom:Z

    if-eqz v6, :cond_45

    .line 82
    sget v6, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderTrackCornerRadius:I

    int-to-float v6, v6

    goto :goto_56

    .line 83
    :cond_45
    iget-object v6, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 84
    const-string v7, "rounded_slider_track_corner_radius"

    invoke-static {v7, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 83
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    .line 81
    :goto_56
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 87
    .end local v4    # "width":I
    .end local v5    # "height":I
    :cond_59
    move-object v4, p1

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    .line 88
    .local v4, "gradientDrawableProgress":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v4, :cond_99

    .line 89
    invoke-virtual {v4}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicWidth()I

    move-result v5

    .line 90
    .local v5, "width":I
    iget-object v6, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "rounded_slider_height"

    invoke-static {v7, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 91
    .local v6, "height":I
    sget-boolean v7, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderCustom:Z

    if-eqz v7, :cond_79

    sget v7, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderProgressHeight:I

    goto :goto_7a

    :cond_79
    move v7, v6

    :goto_7a
    invoke-virtual {v4, v5, v7}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 92
    sget-boolean v7, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderCustom:Z

    if-eqz v7, :cond_85

    .line 93
    sget v3, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderProgressCornerRadius:I

    int-to-float v3, v3

    goto :goto_96

    .line 94
    :cond_85
    iget-object v7, p0, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 95
    const-string v8, "rounded_slider_corner_radius"

    invoke-static {v8, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 94
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 92
    :goto_96
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 97
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_99
    return-void
.end method
