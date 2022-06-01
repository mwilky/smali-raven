.class public Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "QSTileViewImpl.kt"

# interfaces
.implements Lcom/android/systemui/qs/tileimpl/HeightOverrideable;
.implements Lcom/android/systemui/animation/LaunchableView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$Companion;


# instance fields
.field private final shapeAnimator:Landroid/animation/ValueAnimator;

.field private final tileAnimator:Landroid/animation/AnimatorSet;

.field private final _icon:Lcom/android/systemui/plugins/qs/QSIconView;

.field private accessibilityClass:Ljava/lang/String;

.field private blockVisibilityChanges:Z

.field private chevronView:Landroid/widget/ImageView;

.field private final collapsed:Z

.field private final colorActive:I

.field private colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final colorInactive:I

.field private final colorLabelActive:I

.field private final colorLabelInactive:I

.field private final colorLabelUnavailable:I

.field private final colorSecondaryLabelActive:I

.field private final colorSecondaryLabelInactive:I

.field private final colorSecondaryLabelUnavailable:I

.field private final colorUnavailable:I

.field private customDrawableView:Landroid/widget/ImageView;

.field private heightOverride:I

.field private iconContainer:Landroid/widget/LinearLayout;

.field private label:Landroid/widget/TextView;

.field private labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

.field private lastState:I

.field private lastStateDescription:Ljava/lang/CharSequence;

.field private lastVisibility:I

.field private final locInScreen:[I

.field private paintColor:I

.field private ripple:Landroid/graphics/drawable/RippleDrawable;

.field protected secondaryLabel:Landroid/widget/TextView;

.field private showRippleEffect:Z

.field protected sideView:Landroid/view/ViewGroup;

.field private final singleAnimator:Landroid/animation/ValueAnimator;

.field private squishinessFraction:F

.field private stateDescriptionDeltas:Ljava/lang/CharSequence;

.field private tileState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->Companion:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qSIconView"    # Lcom/android/systemui/plugins/qs/QSIconView;
    .param p3, "z"    # Z

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    .line 87
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const-string v0, "_icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    .line 90
    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->collapsed:Z

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    .line 92
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    .line 93
    const v1, 0x1120024

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorActive:I

    .line 94
    const-string v1, "offStateColor"

    const-string v2, "attr"

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    .line 95
    .local v1, "colorAttrDefaultColor":I
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorInactive:I

    .line 96
    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2, v1}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorUnavailable:I

    .line 97
    const v3, 0x1010036

    invoke-static {p1, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    .line 98
    .local v3, "colorAttrDefaultColor2":I
    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelActive:I

    .line 99
    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelInactive:I

    .line 100
    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v3}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelInactive:I

    .line 101
    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v5, v4}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelUnavailable:I

    .line 102
    const v4, 0x1010038

    invoke-static {p1, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v4

    .line 103
    .local v4, "colorAttrDefaultColor3":I
    iput v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelActive:I

    .line 104
    invoke-static {v2, v4}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelUnavailable:I

    .line 105
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    .line 106
    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_dc

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 107
    .local v6, "ofFloat":Landroid/animation/ValueAnimator;
    const-wide/16 v7, 0x15e

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 108
    sget-object v9, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    new-instance v9, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$shapeAnimator$1$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$shapeAnimator$1$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 118
    const-string v9, "ofFloat(0f, 1f).apply {\n        duration = QS_ANIM_LENGTH\n        interpolator = Interpolators.FAST_OUT_SLOW_IN\n        addUpdateListener { animation ->\n            setCornerRadius(animation.animatedValue as Float)\n        }\n    }"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iput-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->shapeAnimator:Landroid/animation/ValueAnimator;

    .line 120
    new-instance v9, Landroid/animation/ValueAnimator;

    invoke-direct {v9}, Landroid/animation/ValueAnimator;-><init>()V

    .line 121
    .local v9, "valueAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v9, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    new-instance v7, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-virtual {v9, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 123
    iput-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    .line 124
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 125
    .local v7, "unit":Lkotlin/Unit;
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    .line 126
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    .line 127
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 128
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v9, v5, v8

    aput-object v6, v5, v2

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 129
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileAnimator:Landroid/animation/AnimatorSet;

    .line 130
    invoke-static {}, Landroid/widget/LinearLayout;->generateViewId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setId(I)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setOrientation(I)V

    .line 132
    const/16 v5, 0x11

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setGravity(I)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setImportantForAccessibility(I)V

    .line 134
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClipChildren(Z)V

    .line 135
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClipToPadding(Z)V

    .line 136
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setFocusable(Z)V

    .line 137
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initQsStyle()V

    .line 140
    return-void

    :array_dc
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic access$setAllColors(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setAllColors(IIII)V

    return-void
.end method

.method private final createAndAddLabels()V
    .registers 14

    .line 689
    sget v0, Lcom/android/mwilky/Renovate;->mQsStyle:I

    const/4 v1, 0x0

    const-string v2, "layout"

    if-nez v0, :cond_1a

    .line 690
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v3, "qs_tile_label"

    invoke-static {v3, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, "inflate":Landroid/view/View;
    goto :goto_2c

    .line 692
    .end local v0    # "inflate":Landroid/view/View;
    :cond_1a
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v3, "qs_tile_label_tweak"

    invoke-static {v3, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 694
    .restart local v0    # "inflate":Landroid/view/View;
    :goto_2c
    const-string v1, "null cannot be cast to non-null type com.android.systemui.qs.tileimpl.IgnorableChildLinearLayout"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 695
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 696
    .local v1, "ignorableChildLinearLayout":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 697
    const-string v2, "tile_label"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    .line 698
    .local v2, "requireViewById":Landroid/view/View;
    const-string v4, "labelContainer.requireViewById(R.id.tile_label)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    move-object v4, v2

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 700
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 701
    .local v4, "ignorableChildLinearLayout2":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    const/4 v5, 0x0

    const-string v6, "labelContainer"

    if-eqz v4, :cond_f3

    .line 702
    const-string v7, "app_label"

    invoke-static {v7, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    .line 703
    .local v3, "requireViewById2":Landroid/view/View;
    const-string v7, "labelContainer.requireViewById(R.id.app_label)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    move-object v7, v3

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setSecondaryLabel(Landroid/widget/TextView;)V

    .line 705
    sget v7, Lcom/android/mwilky/Renovate;->mQsStyle:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_ab

    .line 706
    iget-boolean v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->collapsed:Z

    if-eqz v7, :cond_90

    .line 707
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 708
    .local v7, "ignorableChildLinearLayout3":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    if-eqz v7, :cond_8c

    .line 709
    invoke-virtual {v7, v9}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->setIgnoreLastView(Z)V

    .line 710
    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 711
    .local v10, "ignorableChildLinearLayout4":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    if-eqz v10, :cond_88

    .line 712
    invoke-virtual {v10, v9}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->setForceUnspecifiedMeasure(Z)V

    .line 713
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 718
    .end local v10    # "ignorableChildLinearLayout4":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    goto :goto_90

    .line 715
    .restart local v10    # "ignorableChildLinearLayout4":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :cond_88
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 716
    throw v5

    .line 719
    .end local v10    # "ignorableChildLinearLayout4":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :cond_8c
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 720
    throw v5

    .line 723
    .end local v7    # "ignorableChildLinearLayout3":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :cond_90
    :goto_90
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setLabelColor(I)V

    .line 724
    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setSecondaryLabelColor(I)V

    .line 725
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 726
    .local v7, "ignorableChildLinearLayout5":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    if-eqz v7, :cond_a7

    .line 727
    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->addView(Landroid/view/View;)V

    .line 732
    .end local v7    # "ignorableChildLinearLayout5":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    goto :goto_e5

    .line 729
    .restart local v7    # "ignorableChildLinearLayout5":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :cond_a7
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 730
    throw v5

    .line 733
    .end local v7    # "ignorableChildLinearLayout5":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :cond_ab
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 734
    .local v7, "ignorableChildLinearLayout3":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    if-eqz v7, :cond_ef

    .line 735
    invoke-virtual {v7}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->invalidate()V

    .line 736
    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 737
    .restart local v10    # "ignorableChildLinearLayout4":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    if-eqz v10, :cond_eb

    .line 738
    iget-boolean v11, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->collapsed:Z

    invoke-virtual {v10, v11}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->setIgnoreLastView(Z)V

    .line 739
    iget-boolean v11, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->collapsed:Z

    invoke-virtual {v10, v11}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->setForceUnspecifiedMeasure(Z)V

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->collapsed:Z

    if-eqz v12, :cond_c9

    goto :goto_cb

    :cond_c9
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_cb
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 741
    invoke-direct {p0, v9}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setLabelColor(I)V

    .line 742
    invoke-direct {p0, v9}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setSecondaryLabelColor(I)V

    .line 743
    iget-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 744
    .local v8, "ignorableChildLinearLayout5":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    if-eqz v8, :cond_e7

    .line 745
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->addView(Landroid/view/View;)V

    .line 750
    .end local v8    # "ignorableChildLinearLayout5":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    nop

    .line 754
    .end local v10    # "ignorableChildLinearLayout4":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    nop

    .line 759
    .end local v3    # "requireViewById2":Landroid/view/View;
    .end local v7    # "ignorableChildLinearLayout3":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :goto_e5
    nop

    .line 763
    return-void

    .line 747
    .restart local v3    # "requireViewById2":Landroid/view/View;
    .restart local v7    # "ignorableChildLinearLayout3":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    .restart local v8    # "ignorableChildLinearLayout5":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    .restart local v10    # "ignorableChildLinearLayout4":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :cond_e7
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 748
    throw v5

    .line 751
    .end local v8    # "ignorableChildLinearLayout5":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :cond_eb
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 752
    throw v5

    .line 755
    .end local v10    # "ignorableChildLinearLayout4":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :cond_ef
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 756
    throw v5

    .line 760
    .end local v3    # "requireViewById2":Landroid/view/View;
    .end local v7    # "ignorableChildLinearLayout3":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :cond_f3
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 761
    throw v5
.end method

.method private final createAndAddSideView()V
    .registers 6

    .line 767
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "qs_tile_side_icon"

    const-string v2, "layout"

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 768
    .local v0, "inflate":Landroid/view/View;
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 769
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setSideView(Landroid/view/ViewGroup;)V

    .line 770
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    move-result-object v1

    const-string v2, "customDrawable"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    .line 771
    .local v1, "requireViewById":Landroid/view/View;
    const-string v2, "sideView.requireViewById(R.id.customDrawable)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    .line 773
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    move-result-object v2

    const-string v4, "chevron"

    invoke-static {v4, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    .line 774
    .local v2, "requireViewById2":Landroid/view/View;
    const-string v3, "sideView.requireViewById(R.id.chevron)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 776
    sget v3, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v3, :cond_5f

    .line 777
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getChevronColorForState(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setChevronColor(I)V

    goto :goto_67

    .line 779
    :cond_5f
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getChevronColorForState(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setChevronColor(I)V

    .line 781
    :goto_67
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->addView(Landroid/view/View;)V

    .line 782
    return-void
.end method

.method private final getBackgroundColorForState(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Invalid state "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileViewImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorActive:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorInactive:I

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorUnavailable:I

    :goto_0
    return p0
.end method

.method private final getChevronColorForState(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(I)I

    move-result p0

    return p0
.end method

.method private final getLabelColorForState(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Invalid state "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileViewImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelActive:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelInactive:I

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelUnavailable:I

    :goto_0
    return p0
.end method

.method private final getSecondaryLabelColorForState(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "Invalid state "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QSTileViewImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelActive:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelInactive:I

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelUnavailable:I

    :goto_0
    return p0
.end method

.method private final getStateText(Lcom/android/systemui/plugins/qs/QSTile$State;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->tile_disabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(R.string.tile_disabled)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, ""

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;->INSTANCE:Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;->getSubtitleId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    aget-object p0, p0, p1

    const-string/jumbo p1, "{\n            var arrayResId = SubtitleArrayMapping.getSubtitleId(state.spec)\n            val array = resources.getStringArray(arrayResId)\n            array[state.state]\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method private final init(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private final loadSideViewDrawableIfNecessary(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 6

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->sideViewCustomDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const-string v2, "chevronView"

    const/16 v3, 0x8

    const-string v4, "customDrawableView"

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_3
    instance-of v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->forceExpandIcon:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_a
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method

.method private final setAllColors(IIII)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setColor(I)V

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setLabelColor(I)V

    invoke-direct {p0, p3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setSecondaryLabelColor(I)V

    invoke-direct {p0, p4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setChevronColor(I)V

    return-void
.end method

.method private final setChevronColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    const-string p0, "chevronView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setColor(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paintColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method private final setLabelColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const-string p0, "label"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setSecondaryLabelColor(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final updateHeight()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getHeightOverride()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getHeightOverride()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    :goto_0
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSquishinessFraction()F

    move-result v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBottom(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScrollY(I)V

    return-void
.end method


# virtual methods
.method protected animationsEnabled()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    aget v0, v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    neg-int p0, p0

    if-lt v0, p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public final createTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    sget v0, Lcom/android/mwilky/Renovate;->mQsStyle:I

    const-string v1, "drawable"

    const-string v2, "qs_tile_background"

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.RippleDrawable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->ripple:Landroid/graphics/drawable/RippleDrawable;

    const-string v2, "background"

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "ripple.findDrawableByLayerId(R.id.background)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    const-string v4, "ripple"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    throw v4
.end method

.method public getDetailY()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public getHeightOverride()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    return p0
.end method

.method public getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    return-object p0
.end method

.method public getIconWithBackground()Landroid/view/View;
    .locals 2

    sget v0, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v1, "iconContainer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method

.method public getLabelContainer()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "labelContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getSecondaryIcon()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getSecondaryLabel()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method protected final getSecondaryLabel()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "secondaryLabel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method protected final getSideView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "sideView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getSquishinessFraction()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    return p0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .registers 25
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 548
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setQsTileOutline(I)V

    .line 549
    const-string/jumbo v2, "state"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->animationsEnabled()Z

    move-result v2

    .line 551
    .local v2, "animationsEnabled":Z
    iget-boolean v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z

    iput-boolean v3, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    .line 552
    iget v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1f

    move v3, v4

    goto :goto_20

    :cond_1f
    move v3, v5

    :goto_20
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    .line 553
    iget-boolean v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setLongClickable(Z)V

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 555
    iget-object v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getStateText(Lcom/android/systemui/plugins/qs/QSTile$State;)Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, "stateText":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_50

    .line 559
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 561
    iput-object v6, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 564
    :cond_50
    iget-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_79

    .line 565
    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    iget-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 567
    iget v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    .line 568
    .local v7, "i":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_79

    iget v8, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v8, v7, :cond_79

    iget-object v8, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iget-object v9, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastStateDescription:Ljava/lang/CharSequence;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_79

    .line 569
    iget-object v8, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v8, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    .line 572
    .end local v7    # "i":I
    :cond_79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastStateDescription:Ljava/lang/CharSequence;

    .line 574
    iget v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v8, 0x0

    if-nez v7, :cond_8b

    move-object v7, v8

    goto :goto_8d

    :cond_8b
    iget-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    :goto_8d
    iput-object v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    .line 575
    sget v7, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v7, :cond_a4

    .line 577
    instance-of v7, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v7, :cond_a3

    iget-boolean v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v9, v9, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    move v10, v9

    .local v10, "z":Z
    if-eq v7, v9, :cond_a3

    .line 578
    iput-boolean v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    .line 580
    .end local v10    # "z":Z
    :cond_a3
    goto :goto_b3

    .line 581
    :cond_a4
    instance-of v7, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v7, :cond_b3

    .line 582
    iget-boolean v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    .line 583
    .local v7, "z":Z
    move-object v9, v1

    check-cast v9, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v9, v9, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 584
    .local v9, "z2":Z
    if-eq v7, v9, :cond_b3

    .line 585
    iput-boolean v9, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    .line 589
    .end local v7    # "z":Z
    .end local v9    # "z2":Z
    :cond_b3
    :goto_b3
    iget-object v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 590
    .local v7, "textView":Landroid/widget/TextView;
    const-string v9, "label"

    if-eqz v7, :cond_22d

    .line 591
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d3

    .line 592
    iget-object v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 593
    .local v10, "textView2":Landroid/widget/TextView;
    if-eqz v10, :cond_cf

    .line 594
    iget-object v11, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d3

    .line 596
    :cond_cf
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 597
    throw v8

    .line 600
    .end local v10    # "textView2":Landroid/widget/TextView;
    :cond_d3
    :goto_d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x4

    if-nez v10, :cond_117

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v10

    iget-object v12, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    sget v10, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v10, :cond_105

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v10

    iget-object v12, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_100

    const/16 v12, 0x8

    goto :goto_101

    :cond_100
    move v12, v5

    :goto_101
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_117

    .line 605
    :cond_105
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v10

    iget-object v12, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_113

    move v12, v11

    goto :goto_114

    :cond_113
    move v12, v5

    :goto_114
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 608
    :cond_117
    :goto_117
    iget v10, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget v12, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    if-eq v10, v12, :cond_211

    .line 609
    iget-object v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->cancel()V

    .line 610
    if-eqz v2, :cond_1e8

    .line 611
    iget-object v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->shapeAnimator:Landroid/animation/ValueAnimator;

    .line 612
    .local v10, "valueAnimator":Landroid/animation/ValueAnimator;
    const/4 v12, 0x2

    new-array v13, v12, [F

    .line 613
    .local v13, "fArr":[F
    iget-object v14, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 614
    .local v14, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_141

    .line 615
    move-object v15, v14

    check-cast v15, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v15

    aput v15, v13, v5

    .line 616
    iget v15, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v15}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getCornerRadiusForState(I)F

    move-result v15

    aput v15, v13, v4

    .line 617
    invoke-virtual {v10, v13}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 619
    :cond_141
    iget-object v15, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    .line 620
    .local v15, "valueAnimator2":Landroid/animation/ValueAnimator;
    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    .line 621
    .local v11, "propertyValuesHolderArr":[Landroid/animation/PropertyValuesHolder;
    new-array v8, v12, [I

    iget v12, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paintColor:I

    aput v12, v8, v5

    iget v12, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v12}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(I)I

    move-result v12

    aput v12, v8, v4

    const-string v12, "background"

    invoke-static {v12, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 622
    .local v8, "colorValuesHolder":Landroid/animation/PropertyValuesHolder;
    aput-object v8, v11, v5

    .line 623
    const/4 v12, 0x2

    new-array v4, v12, [I

    .line 624
    .local v4, "iArr":[I
    iget-object v12, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 625
    .local v12, "textView3":Landroid/widget/TextView;
    if-eqz v12, :cond_1e1

    .line 626
    invoke-virtual {v12}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v18

    aput v18, v4, v5

    .line 627
    iget v5, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(I)I

    move-result v5

    const/16 v17, 0x1

    aput v5, v4, v17

    .line 628
    invoke-static {v9, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 629
    .local v5, "colorValuesHolder2":Landroid/animation/PropertyValuesHolder;
    aput-object v5, v11, v17

    .line 630
    move/from16 v19, v2

    move-object/from16 v16, v3

    const/4 v2, 0x2

    .end local v2    # "animationsEnabled":Z
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .local v16, "sb":Ljava/lang/StringBuilder;
    .local v19, "animationsEnabled":Z
    new-array v3, v2, [I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v20

    const/16 v18, 0x0

    aput v20, v3, v18

    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(I)I

    move-result v2

    aput v2, v3, v17

    const-string v2, "secondaryLabel"

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 631
    .local v2, "colorValuesHolder3":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    aput-object v2, v11, v3

    .line 632
    new-array v3, v3, [I

    .line 633
    .local v3, "iArr2":[I
    move-object/from16 v20, v2

    .end local v2    # "colorValuesHolder3":Landroid/animation/PropertyValuesHolder;
    .local v20, "colorValuesHolder3":Landroid/animation/PropertyValuesHolder;
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 634
    .local v2, "imageView":Landroid/widget/ImageView;
    if-eqz v2, :cond_1d8

    .line 635
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v21

    .line 636
    .local v21, "imageTintList":Landroid/content/res/ColorStateList;
    if-nez v21, :cond_1ad

    const/16 v22, 0x0

    goto :goto_1b1

    :cond_1ad
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v22

    :goto_1b1
    const/16 v18, 0x0

    aput v22, v3, v18

    .line 637
    move-object/from16 v18, v2

    .end local v2    # "imageView":Landroid/widget/ImageView;
    .local v18, "imageView":Landroid/widget/ImageView;
    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getChevronColorForState(I)I

    move-result v2

    const/16 v17, 0x1

    aput v2, v3, v17

    .line 638
    const-string v2, "chevron"

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 639
    .local v2, "colorValuesHolder4":Landroid/animation/PropertyValuesHolder;
    const/16 v22, 0x3

    aput-object v2, v11, v22

    .line 640
    invoke-virtual {v15, v11}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 641
    move-object/from16 v22, v2

    .end local v2    # "colorValuesHolder4":Landroid/animation/PropertyValuesHolder;
    .local v22, "colorValuesHolder4":Landroid/animation/PropertyValuesHolder;
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 642
    .end local v21    # "imageTintList":Landroid/content/res/ColorStateList;
    nop

    .line 646
    .end local v3    # "iArr2":[I
    .end local v18    # "imageView":Landroid/widget/ImageView;
    nop

    .line 650
    .end local v4    # "iArr":[I
    .end local v10    # "valueAnimator":Landroid/animation/ValueAnimator;
    .end local v11    # "propertyValuesHolderArr":[Landroid/animation/PropertyValuesHolder;
    .end local v12    # "textView3":Landroid/widget/TextView;
    .end local v13    # "fArr":[F
    .end local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v15    # "valueAnimator2":Landroid/animation/ValueAnimator;
    goto :goto_215

    .line 643
    .end local v22    # "colorValuesHolder4":Landroid/animation/PropertyValuesHolder;
    .local v2, "imageView":Landroid/widget/ImageView;
    .restart local v3    # "iArr2":[I
    .restart local v4    # "iArr":[I
    .restart local v10    # "valueAnimator":Landroid/animation/ValueAnimator;
    .restart local v11    # "propertyValuesHolderArr":[Landroid/animation/PropertyValuesHolder;
    .restart local v12    # "textView3":Landroid/widget/TextView;
    .restart local v13    # "fArr":[F
    .restart local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v15    # "valueAnimator2":Landroid/animation/ValueAnimator;
    :cond_1d8
    move-object/from16 v18, v2

    .end local v2    # "imageView":Landroid/widget/ImageView;
    .restart local v18    # "imageView":Landroid/widget/ImageView;
    const-string v2, "chevronView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 644
    const/4 v2, 0x0

    throw v2

    .line 647
    .end local v5    # "colorValuesHolder2":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "imageView":Landroid/widget/ImageView;
    .end local v19    # "animationsEnabled":Z
    .end local v20    # "colorValuesHolder3":Landroid/animation/PropertyValuesHolder;
    .local v2, "animationsEnabled":Z
    .local v3, "sb":Ljava/lang/StringBuilder;
    :cond_1e1
    move/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "animationsEnabled":Z
    .restart local v19    # "animationsEnabled":Z
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 648
    throw v2

    .line 651
    .end local v4    # "iArr":[I
    .end local v8    # "colorValuesHolder":Landroid/animation/PropertyValuesHolder;
    .end local v10    # "valueAnimator":Landroid/animation/ValueAnimator;
    .end local v11    # "propertyValuesHolderArr":[Landroid/animation/PropertyValuesHolder;
    .end local v12    # "textView3":Landroid/widget/TextView;
    .end local v13    # "fArr":[F
    .end local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v15    # "valueAnimator2":Landroid/animation/ValueAnimator;
    .end local v19    # "animationsEnabled":Z
    .restart local v2    # "animationsEnabled":Z
    :cond_1e8
    move/from16 v19, v2

    move-object/from16 v16, v3

    .end local v2    # "animationsEnabled":Z
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    .restart local v19    # "animationsEnabled":Z
    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(I)I

    move-result v2

    iget v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(I)I

    move-result v3

    iget v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(I)I

    move-result v4

    iget v5, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getChevronColorForState(I)I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setAllColors(IIII)V

    .line 652
    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getCornerRadiusForState(I)F

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setCornerRadius(F)V

    goto :goto_215

    .line 608
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v19    # "animationsEnabled":Z
    .restart local v2    # "animationsEnabled":Z
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_211
    move/from16 v19, v2

    move-object/from16 v16, v3

    .line 655
    .end local v2    # "animationsEnabled":Z
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    .restart local v19    # "animationsEnabled":Z
    :goto_215
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->loadSideViewDrawableIfNecessary(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 656
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 657
    .local v2, "textView4":Landroid/widget/TextView;
    if-eqz v2, :cond_228

    .line 658
    iget-boolean v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 659
    iget v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v3, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    .line 660
    return-void

    .line 662
    :cond_228
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 663
    const/4 v3, 0x0

    throw v3

    .line 665
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v19    # "animationsEnabled":Z
    .local v2, "animationsEnabled":Z
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_22d
    move-object/from16 v16, v3

    move-object v3, v8

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 666
    throw v3
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 2

    const-string/jumbo v0, "tile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$2;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$2;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateResources()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/R$string;->switch_bar_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/systemui/R$string;->switch_bar_off:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->accessibility_long_click_tile:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onStateChanged$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onStateChanged$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetOverride()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setHeightOverride(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    return-void
.end method

.method public setClickable(Z)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;->setClickable(Z)V

    sget v0, Lcom/android/mwilky/Renovate;->mQsStyle:I

    const-string v1, "ripple"

    const-string v2, "colorBackgroundDrawable"

    const/4 v3, 0x0

    if-nez v0, :cond_5

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v2, v0

    nop

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    if-eqz v0, :cond_4

    move-object v2, v1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_9

    iget-boolean v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->ripple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_8

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v2, v4

    nop

    goto :goto_3

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    if-eqz v1, :cond_a

    move-object v2, v4

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_b
    :goto_4
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    return-void
.end method

.method protected final setSecondaryLabel(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    return-void
.end method

.method public setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->blockVisibilityChanges:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastVisibility:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastVisibility:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected final setShowRippleEffect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    return-void
.end method

.method protected final setSideView(Landroid/view/ViewGroup;)V
    .registers 7
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 785
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    .line 787
    const-string v0, "side_icon_frame"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 788
    .local v0, "sideViewFrame":Landroid/view/View;
    if-eqz v0, :cond_5a

    .line 789
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 790
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    sget v2, Lcom/android/mwilky/Renovate;->mQsStyle:I

    const-string v3, "dimen"

    const/4 v4, 0x0

    if-nez v2, :cond_3c

    .line 791
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 792
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 793
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 794
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "qs_label_container_margin"

    invoke-static {v4, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_56

    .line 796
    :cond_3c
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 797
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 798
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 799
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "qs_label_container_margin_mw"

    invoke-static {v4, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 801
    :goto_56
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_61

    .line 803
    :cond_5a
    const-string v1, "mwilky"

    const-string v2, "side_icon_frame is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :goto_61
    return-void
.end method

.method public setSquishinessFraction(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    return-void
.end method

.method public setTransitionVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->blockVisibilityChanges:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastVisibility:I

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTransitionVisibility(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->blockVisibilityChanges:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastVisibility:I

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locInScreen=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    const-string v2, ", iconView="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, ", tileState="

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "sb.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method

.method public final updateResources()V
    .registers 19

    .line 828
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    .line 829
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_17c

    .line 830
    const/4 v3, 0x0

    .line 831
    .local v3, "i":I
    sget v4, Lcom/android/mwilky/Renovate;->mQsStyle:I

    const-string v5, "dimen"

    if-nez v4, :cond_14

    .line 832
    const-string v4, "qs_tile_text_size"

    invoke-static {v4, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1a

    .line 834
    :cond_14
    const-string v4, "qs_tile_text_size_mw"

    invoke-static {v4, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 836
    :goto_1a
    invoke-static {v1, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 837
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 838
    iget-object v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 839
    .local v4, "ignorableChildLinearLayout":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    const-string v6, "labelContainer"

    if-eqz v4, :cond_177

    .line 840
    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->invalidate()V

    .line 841
    iget-object v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 842
    .local v7, "ignorableChildLinearLayout2":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    if-eqz v7, :cond_172

    .line 843
    sget v8, Lcom/android/mwilky/Renovate;->mQsStyle:I

    const-string v9, "qs_icon_size"

    const-string v10, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-nez v8, :cond_e6

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v9, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 845
    .local v6, "dimensionPixelSize":I
    iget-object v8, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v8}, Lcom/android/systemui/plugins/qs/QSIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 846
    .local v8, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 847
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 848
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v11, "qs_tile_padding"

    invoke-static {v11, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 849
    .local v9, "dimensionPixelSize2":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "qs_tile_start_padding"

    invoke-static {v12, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v0, v11, v9, v9, v9}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setPaddingRelative(IIII)V

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "qs_label_container_margin"

    invoke-static {v12, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 851
    .local v11, "dimensionPixelSize3":I
    invoke-virtual {v4}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 852
    .local v12, "layoutParams2":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v12, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 853
    move-object v13, v12

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v13, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 855
    .local v13, "layoutParams3":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v13, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 856
    move-object v14, v13

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v14, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 857
    iget-object v14, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    .line 858
    .local v14, "imageView":Landroid/widget/ImageView;
    if-eqz v14, :cond_dd

    .line 859
    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 860
    .local v15, "layoutParams4":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v15, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 861
    move-object v2, v15

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 862
    .local v2, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 863
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 864
    move-object/from16 v16, v1

    .end local v1    # "textView":Landroid/widget/TextView;
    .local v16, "textView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v17, v2

    .end local v2    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v17, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const-string v2, "qs_drawable_end_margin"

    invoke-static {v2, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 865
    .local v1, "dimensionPixelSize4":I
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    .line 866
    .local v2, "imageView2":Landroid/widget/ImageView;
    if-eqz v2, :cond_d6

    .line 867
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 868
    .local v5, "layoutParams5":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v5, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 869
    move-object v10, v5

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 870
    .local v10, "marginLayoutParams2":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v6, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 871
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 872
    return-void

    .line 874
    .end local v5    # "layoutParams5":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "marginLayoutParams2":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_d6
    const-string v5, "customDrawableView"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 875
    const/4 v5, 0x0

    throw v5

    .line 877
    .end local v2    # "imageView2":Landroid/widget/ImageView;
    .end local v15    # "layoutParams4":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "textView":Landroid/widget/TextView;
    .end local v17    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .local v1, "textView":Landroid/widget/TextView;
    :cond_dd
    move-object/from16 v16, v1

    const/4 v5, 0x0

    .end local v1    # "textView":Landroid/widget/TextView;
    .restart local v16    # "textView":Landroid/widget/TextView;
    const-string v1, "chevronView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 878
    throw v5

    .line 880
    .end local v6    # "dimensionPixelSize":I
    .end local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "dimensionPixelSize2":I
    .end local v11    # "dimensionPixelSize3":I
    .end local v12    # "layoutParams2":Landroid/view/ViewGroup$LayoutParams;
    .end local v13    # "layoutParams3":Landroid/view/ViewGroup$LayoutParams;
    .end local v14    # "imageView":Landroid/widget/ImageView;
    .end local v16    # "textView":Landroid/widget/TextView;
    .restart local v1    # "textView":Landroid/widget/TextView;
    :cond_e6
    move-object/from16 v16, v1

    .end local v1    # "textView":Landroid/widget/TextView;
    .restart local v16    # "textView":Landroid/widget/TextView;
    iget-boolean v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->collapsed:Z

    invoke-virtual {v7, v1}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->setIgnoreLastView(Z)V

    .line 881
    iget-boolean v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->collapsed:Z

    invoke-virtual {v7, v1}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->setForceUnspecifiedMeasure(Z)V

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->collapsed:Z

    if-eqz v2, :cond_fc

    const/4 v2, 0x0

    goto :goto_fe

    :cond_fc
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_fe
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 883
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "qs_quick_tile_size_mw"

    invoke-static {v2, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 884
    .local v1, "dimensionPixelSize":I
    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    .line 885
    .local v2, "linearLayout":Landroid/widget/LinearLayout;
    const-string v8, "iconContainer"

    if-eqz v2, :cond_16d

    .line 886
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 887
    .local v11, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 888
    iput v1, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const-string v13, "qs_tile_padding_mw"

    invoke-static {v13, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 890
    .local v12, "dimensionPixelSize2":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-static {v9, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 891
    .local v5, "dimensionPixelSize3":I
    iget-object v9, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    invoke-virtual {v9}, Lcom/android/systemui/plugins/qs/QSIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 892
    .local v9, "layoutParams2":Landroid/view/ViewGroup$LayoutParams;
    iput v5, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 893
    iput v5, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 894
    iget-object v13, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    .line 895
    .local v13, "linearLayout2":Landroid/widget/LinearLayout;
    if-eqz v13, :cond_168

    .line 896
    invoke-virtual {v13, v12, v12, v12, v12}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 897
    iget-object v8, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    .line 898
    .local v8, "ignorableChildLinearLayout3":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    if-eqz v8, :cond_163

    .line 899
    invoke-virtual {v8}, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 900
    .local v6, "layoutParams3":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v6, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 901
    move-object v10, v6

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    div-int/lit8 v14, v12, 0x2

    iput v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 902
    return-void

    .line 904
    .end local v6    # "layoutParams3":Landroid/view/ViewGroup$LayoutParams;
    :cond_163
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 905
    const/4 v10, 0x0

    throw v10

    .line 907
    .end local v8    # "ignorableChildLinearLayout3":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :cond_168
    const/4 v10, 0x0

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 908
    throw v10

    .line 910
    .end local v5    # "dimensionPixelSize3":I
    .end local v9    # "layoutParams2":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v12    # "dimensionPixelSize2":I
    .end local v13    # "linearLayout2":Landroid/widget/LinearLayout;
    :cond_16d
    const/4 v10, 0x0

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 911
    throw v10

    .line 914
    .end local v2    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v16    # "textView":Landroid/widget/TextView;
    .local v1, "textView":Landroid/widget/TextView;
    :cond_172
    const/4 v10, 0x0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 915
    throw v10

    .line 917
    .end local v7    # "ignorableChildLinearLayout2":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :cond_177
    const/4 v10, 0x0

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 918
    throw v10

    .line 920
    .end local v3    # "i":I
    .end local v4    # "ignorableChildLinearLayout":Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;
    :cond_17c
    move-object/from16 v16, v1

    const/4 v10, 0x0

    .end local v1    # "textView":Landroid/widget/TextView;
    .restart local v16    # "textView":Landroid/widget/TextView;
    const-string v1, "label"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 921
    throw v10
.end method

.method public initQsStyle()V
    .registers 15

    .line 143
    sget v0, Lcom/android/mwilky/Renovate;->mQsStyle:I

    const-string v1, "qs_icon_size"

    const/4 v2, 0x0

    const-string v3, "dimen"

    if-nez v0, :cond_c7

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    const v4, 0x1120024

    invoke-static {v0, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorActive:I

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    const-string v4, "offStateColor"

    const-string v5, "attr"

    invoke-static {v4, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    .line 147
    .local v0, "colorAttrDefaultColor":I
    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorInactive:I

    .line 148
    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4, v0}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorUnavailable:I

    .line 149
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    const v6, 0x1010039

    invoke-static {v5, v6}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelActive:I

    .line 150
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    const v6, 0x1010036

    invoke-static {v5, v6}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v5

    .line 151
    .local v5, "colorAttrDefaultColor2":I
    iput v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelInactive:I

    .line 152
    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelUnavailable:I

    .line 153
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    const v7, 0x101003a

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelActive:I

    .line 154
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    const v7, 0x1010038

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v6

    .line 155
    .local v6, "colorAttrDefaultColor3":I
    iput v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelInactive:I

    .line 156
    invoke-static {v4, v6}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelUnavailable:I

    .line 157
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setOrientation(I)V

    .line 158
    const v2, 0x800013

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setGravity(I)V

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "qs_tile_padding"

    invoke-static {v4, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 161
    .local v2, "dimensionPixelSize":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v7, "qs_tile_start_padding"

    invoke-static {v7, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v4, v2, v2, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setPaddingRelative(IIII)V

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 163
    .local v1, "dimensionPixelSize2":I
    iget-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v7, "qs_corner_radius"

    invoke-static {v7, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setCornerRadius(F)V

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createAndAddLabels()V

    .line 166
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createAndAddSideView()V

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateResources()V

    .line 168
    .end local v0    # "colorAttrDefaultColor":I
    .end local v1    # "dimensionPixelSize2":I
    .end local v2    # "dimensionPixelSize":I
    .end local v5    # "colorAttrDefaultColor2":I
    .end local v6    # "colorAttrDefaultColor3":I
    goto/16 :goto_168

    .line 169
    :cond_c7
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "qs_quick_tile_size_mw"

    invoke-static {v4, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 170
    .local v0, "dimensionPixelSize":I
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v4, "linearLayout":Landroid/widget/LinearLayout;
    iput-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    .line 172
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    .line 174
    .local v5, "linearLayout2":Landroid/widget/LinearLayout;
    if-eqz v5, :cond_168

    .line 175
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 176
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    .line 177
    .local v6, "linearLayout3":Landroid/widget/LinearLayout;
    const/4 v7, 0x0

    const-string v8, "iconContainer"

    if-eqz v6, :cond_164

    .line 178
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 179
    iget-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    .line 180
    .local v9, "linearLayout4":Landroid/widget/LinearLayout;
    if-eqz v9, :cond_160

    .line 181
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 182
    iget-object v11, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    .line 183
    .local v11, "linearLayout5":Landroid/widget/LinearLayout;
    if-eqz v11, :cond_15c

    .line 184
    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 185
    iget-object v12, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    .line 186
    .local v12, "linearLayout6":Landroid/widget/LinearLayout;
    if-eqz v12, :cond_158

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 188
    invoke-direct {p0, v10}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(I)I

    move-result v13

    invoke-direct {p0, v13}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setColor(I)V

    .line 189
    invoke-direct {p0, v10}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getCornerRadiusForState(I)F

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setCornerRadius(F)V

    .line 190
    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 191
    .restart local v1    # "dimensionPixelSize2":I
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    .line 192
    .local v3, "linearLayout7":Landroid/widget/LinearLayout;
    if-eqz v3, :cond_154

    .line 193
    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    .line 195
    .local v10, "linearLayout8":Landroid/widget/LinearLayout;
    if-eqz v10, :cond_150

    .line 196
    invoke-virtual {p0, v10, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->addView(Landroid/view/View;I)V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createAndAddLabels()V

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createAndAddSideView()V

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateResources()V

    .line 200
    return-void

    .line 202
    :cond_150
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 203
    throw v7

    .line 205
    .end local v10    # "linearLayout8":Landroid/widget/LinearLayout;
    :cond_154
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 206
    throw v7

    .line 208
    .end local v1    # "dimensionPixelSize2":I
    .end local v3    # "linearLayout7":Landroid/widget/LinearLayout;
    :cond_158
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 209
    throw v7

    .line 211
    .end local v12    # "linearLayout6":Landroid/widget/LinearLayout;
    :cond_15c
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 212
    throw v7

    .line 214
    .end local v11    # "linearLayout5":Landroid/widget/LinearLayout;
    :cond_160
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 215
    throw v7

    .line 217
    .end local v9    # "linearLayout4":Landroid/widget/LinearLayout;
    :cond_164
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 218
    throw v7

    .line 221
    .end local v0    # "dimensionPixelSize":I
    .end local v4    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v5    # "linearLayout2":Landroid/widget/LinearLayout;
    .end local v6    # "linearLayout3":Landroid/widget/LinearLayout;
    :cond_168
    :goto_168
    return-void
.end method

.method public setQsTileOutline(I)V
    .registers 5
    .param p1, "State"    # I

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 365
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v0, :cond_22

    .line 366
    const/4 v1, 0x2

    if-ne p1, v1, :cond_15

    .line 367
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineActive:Z

    if-eqz v1, :cond_22

    .line 368
    sget v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineWidthActive:I

    sget v2, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorActive:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_22

    .line 370
    :cond_15
    if-eq p1, v1, :cond_22

    .line 371
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineInactive:Z

    if-eqz v1, :cond_22

    .line 372
    sget v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineWidthInactive:I

    sget v2, Lcom/android/mwilky/Renovate;->mQsTileOutlineColorInactive:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    .line 377
    .end local v0    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_22
    :goto_22
    nop

    .line 378
    return-void

    .line 375
    :catch_24
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method

.method static synthetic access$setCornerRadius(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;F)V
    .registers 2
    .param p0, "x0"    # Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;
    .param p1, "x1"    # F

    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setCornerRadius(F)V

    return-void
.end method

.method private final setCornerRadius(F)V
    .registers 3
    .param p1, "f"    # F

    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 940
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v0, :cond_a

    .line 941
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_c

    .line 942
    return-void

    .line 945
    .end local v0    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_a
    nop

    .line 946
    return-void

    .line 943
    :catch_c
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method

.method private final getCornerRadiusForState(I)F
    .registers 5
    .param p1, "i"    # I

    .line 941
    sget v0, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-eqz v0, :cond_1c

    .line 942
    if-nez p1, :cond_a

    .line 943
    sget v0, Lcom/android/mwilky/Renovate;->mQsTileCornerRadiusInactive:I

    int-to-float v0, v0

    return v0

    .line 945
    :cond_a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 946
    sget v0, Lcom/android/mwilky/Renovate;->mQsTileCornerRadiusInactive:I

    int-to-float v0, v0

    return v0

    .line 948
    :cond_11
    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    .line 949
    sget v0, Lcom/android/mwilky/Renovate;->mQsTileCornerRadiusInactive:I

    int-to-float v0, v0

    return v0

    .line 951
    :cond_18
    sget v0, Lcom/android/mwilky/Renovate;->mQsTileCornerRadiusActive:I

    int-to-float v0, v0

    return v0

    .line 953
    :cond_1c
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "qs_corner_radius"

    const-string v2, "dimen"

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method
