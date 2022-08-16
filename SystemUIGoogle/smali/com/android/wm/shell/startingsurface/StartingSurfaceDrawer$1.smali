.class public final Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;
.super Ljava/lang/Object;
.source "StartingSurfaceDrawer.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic val$contentView:Landroid/window/SplashScreenView;


# direct methods
.method public constructor <init>(Landroid/window/SplashScreenView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;->val$contentView:Landroid/window/SplashScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;->val$contentView:Landroid/window/SplashScreenView;

    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getInitBackgroundColor()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/util/ContrastColorUtil;->isColorLight(I)Z

    move-result p1

    const/16 v0, 0x18

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$1;->val$contentView:Landroid/window/SplashScreenView;

    invoke-virtual {p0}, Landroid/window/SplashScreenView;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
