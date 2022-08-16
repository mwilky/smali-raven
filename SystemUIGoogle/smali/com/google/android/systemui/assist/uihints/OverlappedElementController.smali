.class public final Lcom/google/android/systemui/assist/uihints/OverlappedElementController;
.super Ljava/lang/Object;
.source "OverlappedElementController.java"


# instance fields
.field public mAlpha:F

.field public final mCentralSurfacesLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            ">;"
        }
    .end annotation
.end field

.field public final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            ">;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mAlpha:F

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mCentralSurfacesLazy:Ldagger/Lazy;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    return-void
.end method


# virtual methods
.method public final setAlpha(F)V
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

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mCentralSurfacesLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "OverviewProxyService"

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    if-eqz p0, :cond_3

    invoke-interface {p0, v1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantVisibilityChanged(F)V

    goto :goto_1

    :cond_3
    const-string p0, "Failed to get overview proxy for assistant visibility."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Failed to call notifyAssistantVisibilityChanged()"

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceAlpha(F)V

    :cond_5
    return-void
.end method
