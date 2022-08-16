.class public final Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;
.super Ljava/lang/Object;
.source "SplashScreenExitAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShiftUpAnimation"
.end annotation


# instance fields
.field public final mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field public final mFromYDelta:F

.field public final mOccludeHoleView:Landroid/view/View;

.field public final mTmpTransform:Landroid/graphics/Matrix;

.field public final mToYDelta:F

.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;FLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->this$0:Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mTmpTransform:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mFromYDelta:F

    iput p2, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mToYDelta:F

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mOccludeHoleView:Landroid/view/View;

    new-instance p1, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashScreenExitAnimation$ShiftUpAnimation;->mApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    return-void
.end method
