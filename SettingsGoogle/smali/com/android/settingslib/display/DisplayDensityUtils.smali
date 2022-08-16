.class public Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# static fields
.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I

.field private static final SUMMARY_CUSTOM:I

.field public static final SUMMARY_DEFAULT:I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I

.field private final mEntries:[Ljava/lang/String;

.field private final mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_default:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_custom:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_small:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_large:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_very_large:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_extremely_large:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result v2

    const/4 v3, -0x1

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    iput v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    iput v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v6, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    mul-int/lit16 v5, v5, 0xa0

    div-int/lit16 v5, v5, 0x140

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settingslib/R$fraction;->display_density_max_scale:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v7

    int-to-float v5, v5

    int-to-float v8, v2

    div-float/2addr v5, v8

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/android/settingslib/R$fraction;->display_density_min_scale:I

    invoke-virtual {v7, v10, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/settingslib/R$fraction;->display_density_min_scale_interval:I

    invoke-virtual {v10, v11, v9, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v5, v11

    div-float v12, v5, v10

    sget-object v13, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    array-length v13, v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v12

    float-to-int v12, v12

    sub-float v7, v11, v7

    div-float v10, v7, v10

    sget-object v13, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    array-length v13, v13

    int-to-float v13, v13

    invoke-static {v10, v14, v13}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v10

    float-to-int v10, v10

    add-int/lit8 v13, v10, 0x1

    add-int/2addr v13, v12

    new-array v14, v13, [Ljava/lang/String;

    new-array v15, v13, [I

    if-lez v10, :cond_2

    int-to-float v3, v10

    div-float/2addr v7, v3

    sub-int/2addr v10, v9

    move/from16 v16, v1

    const/4 v3, -0x1

    :goto_0
    if-ltz v10, :cond_3

    add-int/lit8 v1, v10, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v7

    sub-float v1, v11, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    and-int/lit8 v1, v1, -0x2

    if-ne v6, v1, :cond_1

    move/from16 v3, v16

    :cond_1
    sget-object v17, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    aget v11, v17, v10

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v16

    aput v1, v15, v16

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v10, v10, -0x1

    const/4 v1, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    const/16 v16, 0x0

    :cond_3
    if-ne v6, v2, :cond_4

    move/from16 v3, v16

    :cond_4
    aput v2, v15, v16

    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v16

    add-int/lit8 v16, v16, 0x1

    if-lez v12, :cond_6

    int-to-float v1, v12

    div-float/2addr v5, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v12, :cond_6

    add-int/lit8 v7, v1, 0x1

    int-to-float v10, v7

    mul-float/2addr v10, v5

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    mul-float/2addr v10, v8

    float-to-int v10, v10

    and-int/lit8 v10, v10, -0x2

    if-ne v6, v10, :cond_5

    move/from16 v3, v16

    :cond_5
    aput v10, v15, v16

    sget-object v10, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    aget v1, v10, v1

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v16

    add-int/lit8 v16, v16, 0x1

    move v1, v7

    goto :goto_1

    :cond_6
    if-ltz v3, :cond_7

    goto :goto_2

    :cond_7
    add-int/2addr v13, v9

    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v15

    aput v6, v15, v16

    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [Ljava/lang/String;

    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual {v4, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v16

    move/from16 v3, v16

    :goto_2
    iput v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    iput v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    iput-object v14, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    iput-object v15, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-void
.end method

.method private static getDefaultDisplayDensity(I)I
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return p0
.end method

.method public getDefaultDensity()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    return p0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getValues()[I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-object p0
.end method
