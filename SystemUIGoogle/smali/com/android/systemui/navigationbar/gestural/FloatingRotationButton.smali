.class public Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;
.super Ljava/lang/Object;
.source "FloatingRotationButton.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/RotationButton;


# instance fields
.field private mCanShow:Z

.field private final mContext:Landroid/content/Context;

.field private final mDiameter:I

.field private mIsShowing:Z

.field private mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field private final mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

.field private final mMargin:I

.field private mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

.field private mVisibilityChangedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mCanShow:Z

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->rotate_suggestion:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->floating_rotation_button_diameter:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mDiameter:I

    sget v0, Lcom/android/systemui/R$dimen;->floating_rotation_button_min_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mMargin:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;)Ljava/util/function/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;)Lcom/android/systemui/navigationbar/buttons/KeyButtonView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    return-object p0
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    return-object p0
.end method

.method public getImageDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    return-object p0
.end method

.method public hide()Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mIsShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mIsShowing:Z

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mIsShowing:Z

    return p0
.end method

.method public setCanShowRotationButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mCanShow:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->hide()Z

    :cond_0
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setDarkIntensity(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public setRotationButtonController(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->getLightIconColor()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->getDarkIconColor()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->updateIcon(II)V

    return-void
.end method

.method public setVisibilityChangedCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public show()Z
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mCanShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mIsShowing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mIsShowing:Z

    const/16 v8, 0x8

    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mDiameter:I

    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mMargin:I

    const/16 v7, 0x7e8

    const/4 v9, -0x3

    move-object v2, v10

    move v3, v4

    move v5, v6

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, "FloatingRotationButton"

    invoke-virtual {v10, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v0, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x33

    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x35

    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_3
    const/16 v1, 0x55

    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_4
    const/16 v1, 0x53

    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-interface {v1, v2, v10}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->resetAnimation()V

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->startAnimation()V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    new-instance v2, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton$1;-><init>(Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public updateIcon(II)V
    .locals 10

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f6b851f    # 0.92f

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v9

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->getIconResId()I

    move-result v7

    const/4 v8, 0x0

    move v5, p1

    move v6, p2

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonDrawable:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/FloatingRotationButton;->mKeyButtonView:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
