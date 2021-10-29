.class final Lcom/google/android/systemui/assist/uihints/OverlappedElementController;
.super Ljava/lang/Object;
.source "OverlappedElementController.java"


# instance fields
.field private mAlpha:F

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mAlpha:F

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mStatusBarLazy:Ldagger/Lazy;

    return-void
.end method

.method private tellOverlappedElementsSetAlpha(F)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-class v0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/OverviewProxyService;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyAssistantVisibilityChanged(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceAlpha(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mAlpha:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const-string v3, "OverlappedElementController"

    if-nez v2, :cond_1

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    const-string v0, "Overlapped elements becoming transparent."

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    const-string v0, "Overlapped elements becoming opaque."

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mAlpha:F

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->tellOverlappedElementsSetAlpha(F)V

    return-void
.end method
