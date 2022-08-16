.class public final Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;
.super Ljava/lang/Object;
.source "DividerWindowManager.java"


# instance fields
.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public final mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

.field public mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/SystemWindows;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    return-void
.end method


# virtual methods
.method public final setSlippery(Z)V
    .locals 4

    const/high16 v0, 0x20000000

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v3, v2, v0

    if-nez v3, :cond_0

    or-int p1, v2, v0

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const v0, -0x20000001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mSystemWindows:Lcom/android/wm/shell/common/SystemWindows;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0, p0}, Lcom/android/wm/shell/common/SystemWindows;->updateViewLayout(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-void
.end method
