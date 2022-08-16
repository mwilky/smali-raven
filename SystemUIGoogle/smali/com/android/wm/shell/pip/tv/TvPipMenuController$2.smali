.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;
.super Ljava/lang/Object;
.source "TvPipMenuController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

.field public final synthetic val$zOrderRelativeToPip:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;->val$zOrderRelativeToPip:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$2;->val$zOrderRelativeToPip:I

    invoke-direct {v1, v2, p1, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController$PipMenuSurfaceChangedCallback;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
