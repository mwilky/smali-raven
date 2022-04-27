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
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_icon"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    iput-boolean p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->collapsed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    const v1, 0x1120024

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorActive:I

    const-string v1, "offStateColor"

    const-string v2, "attr"

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorInactive:I

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v2, v1}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorUnavailable:I

    const v3, 0x1010036

    invoke-static {p1, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelActive:I

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelInactive:I

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v3}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelInactive:I

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v5, v4}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelUnavailable:I

    const v4, 0x1010038

    invoke-static {p1, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelActive:I

    invoke-static {v2, v4}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelUnavailable:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v6, 0x15e

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    invoke-static {}, Landroid/widget/LinearLayout;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setId(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setGravity(I)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setImportantForAccessibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClipToPadding(Z)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setFocusable(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initQsStyle()V

    return-void
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
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "state"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->animationsEnabled()Z

    move-result v2

    iget-boolean v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->showRippleEffect:Z

    iput-boolean v3, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    iget v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    iget-boolean v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setLongClickable(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/plugins/qs/QSIconView;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    iget-object v3, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getStateText(Lcom/android/systemui/plugins/qs/QSTile$State;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-object v6, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    :cond_1
    iget-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget v8, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v8, v7, :cond_2

    iget-object v8, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iget-object v9, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastStateDescription:Ljava/lang/CharSequence;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v8, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setStateDescription(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastStateDescription:Ljava/lang/CharSequence;

    iget v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v8, 0x0

    if-nez v7, :cond_3

    move-object v7, v8

    goto :goto_1

    :cond_3
    iget-object v7, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    :goto_1
    iput-object v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    sget v7, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v7, :cond_5

    instance-of v7, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v7, :cond_4

    iget-boolean v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v9, v9, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    move v10, v9

    if-eq v7, v9, :cond_4

    iput-boolean v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    :cond_4
    goto :goto_2

    :cond_5
    instance-of v7, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v7, :cond_6

    iget-boolean v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v9, v9, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v7, v9, :cond_6

    iput-boolean v9, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    :cond_6
    :goto_2
    iget-object v7, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    const-string v9, "label"

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-eqz v10, :cond_7

    iget-object v11, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v8

    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    iget-object v11, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x4

    if-nez v10, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v10

    iget-object v12, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v10, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v10

    iget-object v12, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v12, 0x8

    goto :goto_4

    :cond_9
    move v12, v5

    :goto_4
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v10

    iget-object v12, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    move v12, v11

    goto :goto_5

    :cond_b
    move v12, v5

    :goto_5
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_c
    :goto_6
    iget v10, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget v12, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    if-eq v10, v12, :cond_11

    iget-object v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz v2, :cond_10

    iget-object v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x2

    new-array v13, v12, [I

    iget v14, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paintColor:I

    aput v14, v13, v5

    iget v14, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v14}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(I)I

    move-result v14

    aput v14, v13, v4

    const-string v14, "background"

    invoke-static {v14, v13}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v5

    new-array v14, v12, [I

    iget-object v15, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-eqz v15, :cond_f

    invoke-virtual {v15}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v16

    aput v16, v14, v5

    iget v8, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(I)I

    move-result v8

    aput v8, v14, v4

    invoke-static {v9, v14}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    aput-object v8, v11, v4

    new-array v4, v12, [I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v18

    aput v18, v4, v5

    iget v5, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(I)I

    move-result v5

    const/16 v17, 0x1

    aput v5, v4, v17

    const-string v5, "secondaryLabel"

    invoke-static {v5, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v11, v12

    new-array v5, v12, [I

    iget-object v12, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v19

    if-nez v19, :cond_d

    const/16 v20, 0x0

    goto :goto_7

    :cond_d
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v20

    :goto_7
    const/16 v18, 0x0

    aput v20, v5, v18

    move/from16 v18, v2

    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getChevronColorForState(I)I

    move-result v2

    const/16 v17, 0x1

    aput v2, v5, v17

    const-string v2, "chevron"

    invoke-static {v2, v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/16 v20, 0x3

    aput-object v2, v11, v20

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    nop

    nop

    goto :goto_8

    :cond_e
    move/from16 v18, v2

    const-string v2, "chevronView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :cond_f
    move/from16 v18, v2

    move-object v2, v8

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_10
    move/from16 v18, v2

    iget v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(I)I

    move-result v2

    iget v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(I)I

    move-result v4

    iget v5, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(I)I

    move-result v5

    iget v8, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-direct {v0, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getChevronColorForState(I)I

    move-result v8

    invoke-direct {v0, v2, v4, v5, v8}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setAllColors(IIII)V

    goto :goto_8

    :cond_11
    move/from16 v18, v2

    :goto_8
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->loadSideViewDrawableIfNecessary(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iget-object v2, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-eqz v2, :cond_12

    iget-boolean v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget v4, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v4, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    return-void

    :cond_12
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    throw v4

    :cond_13
    move-object v4, v8

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
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

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setQsTileTweaks()V

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
    .locals 14

    sget v0, Lcom/android/mwilky/Renovate;->mQsStyle:I

    const-string v1, "qs_icon_size"

    const/4 v2, 0x0

    const-string v3, "dimen"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    const v4, 0x1120024

    invoke-static {v0, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorActive:I

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    const-string v4, "offStateColor"

    const-string v5, "attr"

    invoke-static {v4, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorInactive:I

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v4, v0}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorUnavailable:I

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    const v6, 0x1010039

    invoke-static {v5, v6}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelActive:I

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    const v6, 0x1010036

    invoke-static {v5, v6}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelInactive:I

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelUnavailable:I

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    const v7, 0x101003a

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelActive:I

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    const v7, 0x1010038

    invoke-static {v6, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelInactive:I

    invoke-static {v4, v6}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelUnavailable:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setOrientation(I)V

    const v2, 0x800013

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setGravity(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "qs_tile_padding"

    invoke-static {v4, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v7, "qs_tile_start_padding"

    invoke-static {v7, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v4, v2, v2, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createAndAddLabels()V

    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createAndAddSideView()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateResources()V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "qs_quick_tile_size_mw"

    invoke-static {v4, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    const-string v8, "iconContainer"

    if-eqz v6, :cond_6

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    iget-object v9, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v11, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_4

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v12, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v10}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setColor(I)V

    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v1, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->_icon:Lcom/android/systemui/plugins/qs/QSIconView;

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->iconContainer:Landroid/widget/LinearLayout;

    if-eqz v10, :cond_1

    invoke-virtual {p0, v10, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createAndAddLabels()V

    invoke-direct {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createAndAddSideView()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateResources()V

    return-void

    :cond_1
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_2
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_3
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_4
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_5
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_6
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_7
    :goto_0
    return-void
.end method

.method public setQsTileTweaks()V
    .registers 5

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 346
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v0, :cond_31

    .line 347
    sget-boolean v1, Lcom/android/mwilky/Renovate;->mQsTileOutline:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 348
    sget v1, Lcom/android/mwilky/Renovate;->mQsTileOutlineWidth:I

    sget v3, Lcom/android/mwilky/Renovate;->mQsTileOutlineColor:I

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_16

    .line 350
    :cond_13
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 352
    :goto_16
    sget v1, Lcom/android/mwilky/Renovate;->mQsStyle:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f

    .line 354
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_30

    .line 355
    :cond_1f
    sget v1, Lcom/android/mwilky/Renovate;->mQsStyle:I

    if-nez v1, :cond_27

    .line 357
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_30

    .line 360
    :cond_27
    sget v1, Lcom/android/mwilky/Renovate;->mQsTileCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 361
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_33

    .line 363
    :goto_30
    return-void

    .line 366
    .end local v0    # "drawable":Landroid/graphics/drawable/GradientDrawable;
    :cond_31
    nop

    .line 367
    return-void

    .line 364
    :catch_33
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method
