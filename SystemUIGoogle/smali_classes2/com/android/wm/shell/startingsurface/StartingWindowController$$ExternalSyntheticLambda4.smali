.class public final synthetic Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:Landroid/graphics/Rect;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iput p2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$2:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$3:Landroid/graphics/Rect;

    iput-boolean p5, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget v1, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$2:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$3:Landroid/graphics/Rect;

    iget-boolean p0, p0, Lcom/android/wm/shell/startingsurface/StartingWindowController$$ExternalSyntheticLambda4;->f$4:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->$r8$lambda$iMKoHIPhiH2Br4N4zJSx_yVuY3c(Lcom/android/wm/shell/startingsurface/StartingWindowController;ILandroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    return-void
.end method
