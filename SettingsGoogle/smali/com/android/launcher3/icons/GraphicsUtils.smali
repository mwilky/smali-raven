.class public Lcom/android/launcher3/icons/GraphicsUtils;
.super Ljava/lang/Object;
.source "GraphicsUtils.java"


# static fields
.field public static sOnNewBitmapRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$nWC-qLw6D-l8ASiZoBWOYgQdw-0()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/icons/GraphicsUtils;->lambda$static$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/launcher3/icons/GraphicsUtils$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/launcher3/icons/GraphicsUtils;->sOnNewBitmapRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static getArea(Landroid/graphics/Region;)I
    .locals 4

    new-instance v0, Landroid/graphics/RegionIterator;

    invoke-direct {v0, p0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static synthetic lambda$static$0()V
    .locals 0

    return-void
.end method
