.class public Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;
.super Ljava/lang/Object;
.source "OneHandedSurfaceTransactionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;
    }
.end annotation


# instance fields
.field private final mCornerRadius:F

.field private final mCornerRadiusAdjustment:F

.field private final mEnableCornerRadius:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x105025a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mCornerRadiusAdjustment:F

    const v1, 0x1050259

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mCornerRadius:F

    sget v0, Lcom/android/wm/shell/R$bool;->config_one_handed_enable_round_corner:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mEnableCornerRadius:Z

    return-void
.end method


# virtual methods
.method crop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;
    .locals 1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p1, p2, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "OneHandedSurfaceTransactionHelperstates: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mEnableCornerRadius="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mEnableCornerRadius:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCornerRadiusAdjustment="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mCornerRadiusAdjustment:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  mCornerRadius="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mCornerRadius:F

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(F)V

    return-void
.end method

.method round(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mEnableCornerRadius:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->mCornerRadius:F

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-object p0
.end method

.method translate(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method
