.class public final Lcom/google/android/systemui/assist/uihints/NavBarFader;
.super Ljava/lang/Object;
.source "NavBarFader.kt"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$NavBarVisibilityListener;


# instance fields
.field public animator:Landroid/animation/ObjectAnimator;

.field public final handler:Landroid/os/Handler;

.field public final navigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public final onTimeout:Lcom/google/android/systemui/assist/uihints/NavBarFader$onTimeout$1;

.field public targetAlpha:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->navigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/systemui/assist/uihints/NavBarFader$onTimeout$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/assist/uihints/NavBarFader$onTimeout$1;-><init>(Lcom/google/android/systemui/assist/uihints/NavBarFader;)V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->onTimeout:Lcom/google/android/systemui/assist/uihints/NavBarFader$onTimeout$1;

    new-instance p2, Landroid/animation/ObjectAnimator;

    invoke-direct {p2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->animator:Landroid/animation/ObjectAnimator;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p1

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    :goto_0
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->targetAlpha:F

    return-void
.end method


# virtual methods
.method public final onVisibleRequest(Z)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->navigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->onTimeout:Lcom/google/android/systemui/assist/uihints/NavBarFader$onTimeout$1;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->onTimeout:Lcom/google/android/systemui/assist/uihints/NavBarFader$onTimeout$1;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->targetAlpha:F

    cmpg-float v3, v2, v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    return-void

    :cond_4
    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    iput v2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->targetAlpha:F

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v3, v6, v1

    aput v2, v6, v4

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x50

    long-to-float v1, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v1

    float-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->animator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_5

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
