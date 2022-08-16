.class public final Landroidx/viewpager2/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final ViewPager2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100c4

    aput v2, v0, v1

    sput-object v0, Landroidx/viewpager2/R$styleable;->ViewPager2:[I

    return-void
.end method

.method public static getFrames(I)J
    .locals 2

    if-ltz p0, :cond_1

    int-to-float p0, p0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot round NaN value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "numFrames must be >= 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
