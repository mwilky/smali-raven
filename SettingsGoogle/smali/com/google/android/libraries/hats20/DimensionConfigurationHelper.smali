.class final Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;
.super Ljava/lang/Object;
.source "DimensionConfigurationHelper.java"


# instance fields
.field private final bottomSheet:Z

.field private final containerPadding:I

.field private final dialog:Landroid/app/Dialog;

.field private final layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

.field private final maxPromptWidth:I

.field private final promptCard:Landroidx/cardview/widget/CardView;

.field private final twoLinePrompt:Z


# direct methods
.method constructor <init>(Landroidx/cardview/widget/CardView;Landroid/app/Dialog;Lcom/google/android/libraries/hats20/util/LayoutDimensions;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->promptCard:Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    iput-boolean p4, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->bottomSheet:Z

    iput-boolean p5, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->twoLinePrompt:Z

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_container_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->containerPadding:I

    invoke-virtual {p3}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->getPromptMaxWidth()I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->maxPromptWidth:I

    return-void
.end method

.method private getBannerPadding(F)Landroid/graphics/RectF;
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->bottomSheet:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->containerPadding:I

    int-to-float p1, p0

    :goto_1
    move p0, v1

    move v0, p0

    goto :goto_4

    :cond_2
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->maxPromptWidth:I

    invoke-static {p1, v0}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getPromptWidthPx(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->getUsableContentDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_container_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_container_padding_left:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_3
    move v1, p1

    iget p0, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->containerPadding:I

    int-to-float p1, p0

    int-to-float v0, p0

    int-to-float p0, p0

    goto :goto_4

    :cond_5
    move p0, v1

    move p1, p0

    move v0, p1

    :goto_4
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1, p1, v0, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->promptCard:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static getPromptWidthPx(Landroid/content/Context;I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/libraries/hats20/util/LayoutUtils;->getUsableContentDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method configureDimensions()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->bottomSheet:Z

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->maxPromptWidth:I

    invoke-static {v2, v3}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getPromptWidthPx(Landroid/content/Context;I)I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->layoutDimensions:Lcom/google/android/libraries/hats20/util/LayoutDimensions;

    iget-boolean v4, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->twoLinePrompt:Z

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->getPromptBannerHeight(Z)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->promptCard:Landroidx/cardview/widget/CardView;

    iget-boolean v5, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->bottomSheet:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_prompt_banner_elevation_sheet:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_prompt_banner_elevation_card:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    :goto_2
    invoke-virtual {v4, v5}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    iget-object v4, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->promptCard:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->promptCard:Landroidx/cardview/widget/CardView;

    invoke-virtual {v5}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v5

    invoke-direct {p0, v4}, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->getBannerPadding(F)Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v7}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v1, v3

    iget v2, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    iget v2, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x55

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->promptCard:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v1, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/google/android/libraries/hats20/DimensionConfigurationHelper;->promptCard:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "HatsShowRequest.insertIntoParent can only be called with a ViewGroup whose LayoutParams extend MarginLayoutParams"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
