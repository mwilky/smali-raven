.class public final Lcom/android/server/display/color/GlobalSaturationTintController;
.super Lcom/android/server/display/color/TintController;
.source "GlobalSaturationTintController.java"


# instance fields
.field public final mMatrixGlobalSaturation:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/color/TintController;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 0

    const/16 p0, 0x96

    return p0
.end method

.method public getMatrix()[F
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public setMatrix(I)V
    .locals 6

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting saturation level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColorDisplayService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v0, :cond_2

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    int-to-float p1, p1

    const v0, 0x3c23d70a    # 0.01f

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const/4 v2, 0x3

    new-array v2, v2, [F

    const v3, 0x3e6c8b44    # 0.231f

    mul-float/2addr v3, v0

    aput v3, v2, v1

    const v4, 0x3f370a3d    # 0.715f

    mul-float/2addr v4, v0

    const/4 v5, 0x1

    aput v4, v2, v5

    const v4, 0x3d9374bc    # 0.072f

    mul-float/2addr v0, v4

    const/4 v4, 0x2

    aput v0, v2, v4

    iget-object p0, p0, Lcom/android/server/display/color/GlobalSaturationTintController;->mMatrixGlobalSaturation:[F

    add-float/2addr v3, p1

    aput v3, p0, v1

    aget v0, v2, v1

    aput v0, p0, v5

    aput v0, p0, v4

    const/4 v0, 0x4

    aget v1, v2, v5

    aput v1, p0, v0

    const/4 v0, 0x5

    add-float v3, v1, p1

    aput v3, p0, v0

    const/4 v0, 0x6

    aput v1, p0, v0

    const/16 v0, 0x8

    aget v1, v2, v4

    aput v1, p0, v0

    const/16 v0, 0x9

    aput v1, p0, v0

    const/16 v0, 0xa

    add-float/2addr v1, p1

    aput v1, p0, v0

    :goto_1
    return-void
.end method
