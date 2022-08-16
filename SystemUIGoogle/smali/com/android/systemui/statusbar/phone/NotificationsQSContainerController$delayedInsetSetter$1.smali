.class public final Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;
.super Ljava/lang/Object;
.source "NotificationsQSContainerController.kt"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/util/function/Consumer<",
        "Landroid/view/WindowInsets;",
        ">;"
    }
.end annotation


# instance fields
.field public canceller:Ljava/lang/Runnable;

.field public cutoutInsets:I

.field public stableInsets:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/view/WindowInsets;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;->stableInsets:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;->cutoutInsets:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;->canceller:Ljava/lang/Runnable;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/16 v0, 0x1f4

    invoke-interface {p1, p0, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;->canceller:Ljava/lang/Runnable;

    return-void
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;->stableInsets:I

    iput v1, v0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomStableInsets:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController$delayedInsetSetter$1;->cutoutInsets:I

    iput p0, v0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->bottomCutoutInsets:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;->updateBottomSpacing()V

    return-void
.end method
