.class public Lcom/android/server/wm/RectInsetsSourceProvider;
.super Lcom/android/server/wm/InsetsSourceProvider;
.source "RectInsetsSourceProvider.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method


# virtual methods
.method public setRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, p1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/InsetsSource;->setVisible(Z)V

    return-void
.end method
