.class public final Lcom/google/android/systemui/assist/uihints/NavBarFader;
.super Ljava/lang/Object;
.source "NavBarFader.kt"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$NavBarVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/NavBarFader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/assist/uihints/NavBarFader$Companion;


# instance fields
.field private animator:Landroid/animation/ObjectAnimator;

.field private final handler:Landroid/os/Handler;

.field private final navigationBarController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field

.field private final onTimeout:Ljava/lang/Runnable;

.field private targetAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/assist/uihints/NavBarFader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/assist/uihints/NavBarFader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->Companion:Lcom/google/android/systemui/assist/uihints/NavBarFader$Companion;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "navigationBarController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->navigationBarController:Ldagger/Lazy;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/google/android/systemui/assist/uihints/NavBarFader$onTimeout$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/assist/uihints/NavBarFader$onTimeout$1;-><init>(Lcom/google/android/systemui/assist/uihints/NavBarFader;)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->onTimeout:Ljava/lang/Runnable;

    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->animator:Landroid/animation/ObjectAnimator;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->targetAlpha:F

    return-void
.end method


# virtual methods
.method public onVisibleRequest(Z)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->navigationBarController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getDefaultNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->onTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->onTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    cmpg-float v3, v2, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    if-nez v3, :cond_7

    iget v3, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->targetAlpha:F

    cmpg-float v3, v2, v3

    if-nez v3, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    iput v2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->targetAlpha:F

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v1, v6, v5

    aput v2, v6, v4

    invoke-static {v0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x50

    long-to-float v5, v3

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v5, v1

    float-to-long v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "ofFloat(navBarView, View.ALPHA, initialAlpha, finalAlpha)\n                .setDuration((FADE_DURATION_MS * abs(finalAlpha - initialAlpha)).toLong())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->animator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_6

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_6
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_7
    :goto_3
    return-void
.end method
