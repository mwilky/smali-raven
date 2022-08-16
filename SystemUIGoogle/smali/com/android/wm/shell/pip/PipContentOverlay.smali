.class public abstract Lcom/android/wm/shell/pip/PipContentOverlay;
.super Ljava/lang/Object;
.source "PipContentOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/PipContentOverlay$PipSnapshotOverlay;,
        Lcom/android/wm/shell/pip/PipContentOverlay$PipColorOverlay;
    }
.end annotation


# instance fields
.field public mLeash:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAnimationEnd(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onAnimationUpdate(FLandroid/view/SurfaceControl$Transaction;)V
.end method
