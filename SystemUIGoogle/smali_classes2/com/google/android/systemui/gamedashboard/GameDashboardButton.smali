.class public Lcom/google/android/systemui/gamedashboard/GameDashboardButton;
.super Landroid/widget/ImageView;
.source "GameDashboardButton.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mBackgroundColorFilter:Landroid/graphics/BlendModeColorFilter;

.field private final mBackgroundColorFilterToggled:Landroid/graphics/BlendModeColorFilter;

.field private final mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final mDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mDrawableColorFilterToggled:Landroid/graphics/PorterDuffColorFilter;

.field private mToggled:Z


# direct methods
.method public static synthetic $r8$lambda$8ck3saAVDak31zKD6ttpqLzfR2c(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->lambda$refresh$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$adkb1ofPDCjilo_OXLt9Xm4VCCs(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->lambda$setOnClickListener$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x1120024

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    const v0, 0x1120030

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x1010036

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x11200ee

    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/android/systemui/R$drawable;->rounded_rectangle_8dp:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    new-instance v3, Landroid/graphics/BlendModeColorFilter;

    sget-object v4, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {v3, v0, v4}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    iput-object v3, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundColorFilter:Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v0, Landroid/graphics/BlendModeColorFilter;

    sget-object v3, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {v0, p2, v3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundColorFilterToggled:Landroid/graphics/BlendModeColorFilter;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v2, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mDrawableColorFilterToggled:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$refresh$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method

.method private synthetic lambda$setOnClickListener$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->toggle()V

    return-void
.end method

.method private refresh(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundColorFilterToggled:Landroid/graphics/BlendModeColorFilter;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundColorFilter:Landroid/graphics/BlendModeColorFilter;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    const v0, 0x3eb851ec    # 0.36f

    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/animation/FloatEvaluator;

    invoke-direct {v0}, Landroid/animation/FloatEvaluator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :goto_2
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->refreshDrawable()V

    return-void
.end method

.method private refreshDrawable()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mDrawableColorFilterToggled:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method private toggle()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(ZZ)V

    return-void
.end method


# virtual methods
.method public isToggled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->refresh(Z)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->refreshDrawable()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setToggled(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    invoke-direct {p0, p2}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->refresh(Z)V

    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->accessibility_game_dashboard_shortcut_button_enabled:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_game_dashboard_shortcut_button_disabled:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
