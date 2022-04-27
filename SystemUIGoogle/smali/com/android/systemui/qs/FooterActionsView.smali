.class public final Lcom/android/systemui/qs/FooterActionsView;
.super Landroid/widget/LinearLayout;
.source "FooterActionsView.kt"


# instance fields
.field private editTilesButton:Landroid/view/View;

.field private expansionAmount:F

.field private multiUserAvatar:Landroid/widget/ImageView;

.field private multiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private qsDisabled:Z

.field private settingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field private settingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private settingsContainer:Landroid/view/View;

.field private tunerIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$updateClickabilities(Lcom/android/systemui/qs/FooterActionsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsView;->updateClickabilities()V

    return-void
.end method

.method public static final synthetic access$updateVisibilities(Lcom/android/systemui/qs/FooterActionsView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/FooterActionsView;->updateVisibilities(ZZ)V

    return-void
.end method

.method private final updateClickabilities()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->multiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const-string v1, "multiUserSwitch"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->editTilesButton:Landroid/view/View;

    const-string v1, "editTilesButton"

    if-eqz v0, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsView;->settingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const-string v0, "settingsButton"

    if-eqz p0, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void

    :cond_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final updateResources()V
    .locals 2

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_footer_tuner_icon_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/qs/FooterActionsView;->tunerIcon:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    neg-float v0, v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_1
    const-string p0, "tunerIcon"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateVisibilities(ZZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->settingsContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/qs/FooterActionsView;->qsDisabled:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->tunerIcon:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v2, 0x4

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/FooterActionsView;->multiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz p1, :cond_5

    if-eqz p2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsView;->settingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    move v4, v2

    :cond_3
    invoke-virtual {p0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_4
    const-string p0, "settingsButton"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p0, "multiUserSwitch"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p0, "tunerIcon"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string p0, "settingsContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final disable(IZZ)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/qs/FooterActionsView;->qsDisabled:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/FooterActionsView;->qsDisabled:Z

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/qs/FooterActionsView;->updateEverything(ZZ)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsView;->updateResources()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1020003

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById(android.R.id.edit)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->editTilesButton:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.settings_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->settingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    sget v0, Lcom/android/systemui/R$id;->settings_button_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.settings_button_container)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->settingsContainer:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->multi_user_switch:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.multi_user_switch)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->multiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget v2, Lcom/android/systemui/R$id;->multi_user_avatar:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "multiUserSwitch.findViewById(R.id.multi_user_avatar)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->multiUserAvatar:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->tuner_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "requireViewById(R.id.tuner_icon)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->tunerIcon:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->settingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const-string v2, "settingsButton"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->settingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsView;->updateResources()V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p0, "multiUserSwitch"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/FooterActionsView;->updateResources()V

    return-void
.end method

.method public final onUserInfoChanged(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    instance-of p2, p1, Lcom/android/settingslib/drawable/UserIconDrawable;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v0, 0x1010030

    invoke-static {p2, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsView;->multiUserAvatar:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    const-string p0, "multiUserAvatar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setExpansion(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/FooterActionsView;->expansionAmount:F

    iget-object p0, p0, Lcom/android/systemui/qs/FooterActionsView;->settingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    return-void
.end method

.method public final setKeyguardShowing()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/FooterActionsView;->expansionAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/FooterActionsView;->setExpansion(F)V

    return-void
.end method

.method public final updateAnimator(II)V
    .registers 12
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .line 32
    sget v0, Lcom/android/mwilky/Renovate;->mQsStyle:I

    const-string v1, "default_gear_space"

    const-string v2, "dimen"

    if-nez v0, :cond_3f

    .line 33
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "qs_quick_tile_size"

    invoke-static {v3, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/FooterActionsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "qs_tile_padding"

    invoke-static {v4, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    mul-int/2addr v0, p2

    sub-int v0, p1, v0

    add-int/lit8 v3, p2, -0x1

    div-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/systemui/qs/FooterActionsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    .local v0, "dimensionPixelSize":I
    goto :goto_75

    .line 35
    .end local v0    # "dimensionPixelSize":I
    :cond_3f
    iget-object v0, p0, Lcom/android/systemui/qs/FooterActionsView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "qs_quick_tile_size_mw"

    invoke-static {v3, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/FooterActionsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "qs_tile_padding_mw"

    invoke-static {v4, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    mul-int/2addr v0, p2

    sub-int v0, p1, v0

    add-int/lit8 v3, p2, -0x1

    div-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/systemui/qs/FooterActionsView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 37
    .restart local v0    # "dimensionPixelSize":I
    :goto_75
    invoke-virtual {p0}, Lcom/android/systemui/qs/FooterActionsView;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_7c

    .line 38
    neg-int v0, v0

    .line 40
    :cond_7c
    new-instance v1, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    .line 41
    .local v1, "builder":Lcom/android/systemui/qs/TouchAnimator$Builder;
    iget-object v2, p0, Lcom/android/systemui/qs/FooterActionsView;->settingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 42
    .local v2, "settingsButton":Lcom/android/systemui/statusbar/phone/SettingsButton;
    const/4 v3, 0x0

    const-string v4, "settingsButton"

    if-eqz v2, :cond_b8

    .line 43
    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    int-to-float v8, v0

    aput v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v7, v6, v8

    const-string v7, "translationX"

    invoke-virtual {v1, v2, v7, v6}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v6

    .line 44
    .local v6, "addFloat":Lcom/android/systemui/qs/TouchAnimator$Builder;
    iget-object v7, p0, Lcom/android/systemui/qs/FooterActionsView;->settingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 45
    .local v7, "settingsButton2":Lcom/android/systemui/statusbar/phone/SettingsButton;
    if-eqz v7, :cond_b4

    .line 46
    new-array v3, v5, [F

    fill-array-data v3, :array_bc

    const-string v4, "rotation"

    invoke-virtual {v6, v7, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/FooterActionsView;->settingsCogAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 47
    iget v3, p0, Lcom/android/systemui/qs/FooterActionsView;->expansionAmount:F

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/FooterActionsView;->setExpansion(F)V

    .line 48
    return-void

    .line 50
    :cond_b4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    throw v3

    .line 53
    .end local v6    # "addFloat":Lcom/android/systemui/qs/TouchAnimator$Builder;
    .end local v7    # "settingsButton2":Lcom/android/systemui/statusbar/phone/SettingsButton;
    :cond_b8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 54
    throw v3

    :array_bc
    .array-data 4
        -0x3d100000    # -120.0f
        0x0
    .end array-data
.end method

.method public final updateEverything(ZZ)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/FooterActionsView$updateEverything$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/FooterActionsView$updateEverything$1;-><init>(Lcom/android/systemui/qs/FooterActionsView;ZZ)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
