.class public final Lcom/android/systemui/qs/QSSquishinessController;
.super Ljava/lang/Object;
.source "QSSquishinessController.kt"


# instance fields
.field private final qsAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private final qsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final quickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private squishiness:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSAnimator;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QuickQSPanelController;)V
    .locals 1

    const-string v0, "qsAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qsPanelController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickQSPanelController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSSquishinessController;->qsAnimator:Lcom/android/systemui/qs/QSAnimator;

    iput-object p2, p0, Lcom/android/systemui/qs/QSSquishinessController;->qsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iput-object p3, p0, Lcom/android/systemui/qs/QSSquishinessController;->quickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/qs/QSSquishinessController;->squishiness:F

    return-void
.end method

.method private final updateSquishiness()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSquishinessController;->qsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget v1, p0, Lcom/android/systemui/qs/QSSquishinessController;->squishiness:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setSquishinessFraction(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSSquishinessController;->quickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    iget p0, p0, Lcom/android/systemui/qs/QSSquishinessController;->squishiness:F

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->setSquishinessFraction(F)V

    return-void
.end method


# virtual methods
.method public final setSquishiness(F)V
    .locals 5

    iget v0, p0, Lcom/android/systemui/qs/QSSquishinessController;->squishiness:F

    cmpg-float v1, v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v1

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-nez v4, :cond_4

    cmpg-float v1, p1, v1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    if-nez v1, :cond_7

    :cond_4
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_3
    if-nez v0, :cond_8

    cmpg-float v0, p1, v1

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    if-eqz v2, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSSquishinessController;->qsAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator;->requestAnimatorUpdate()V

    :cond_8
    iput p1, p0, Lcom/android/systemui/qs/QSSquishinessController;->squishiness:F

    invoke-direct {p0}, Lcom/android/systemui/qs/QSSquishinessController;->updateSquishiness()V

    return-void
.end method
