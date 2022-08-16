.class public final Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;
.super Ljava/lang/Object;
.source "PipPinchResizingAlgorithm.java"


# instance fields
.field public final mTmpDownCentroid:Landroid/graphics/PointF;

.field public final mTmpDownVector:Landroid/graphics/PointF;

.field public final mTmpLastCentroid:Landroid/graphics/PointF;

.field public final mTmpLastVector:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpDownVector:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpLastVector:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpDownCentroid:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpLastCentroid:Landroid/graphics/PointF;

    return-void
.end method
