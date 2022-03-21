.class final Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnCancelAndLoadRunnable;
.super Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;
.source "ControlsBindingControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnCancelAndLoadRunnable"
.end annotation


# instance fields
.field private final callback:Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end field

.field private final subscription:Landroid/service/controls/IControlsSubscription;

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;Ljava/util/List;Landroid/service/controls/IControlsSubscription;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;",
            "Landroid/service/controls/IControlsSubscription;",
            "Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscription"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnCancelAndLoadRunnable;->this$0:Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;-><init>(Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;Landroid/os/IBinder;)V

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnCancelAndLoadRunnable;->list:Ljava/util/List;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnCancelAndLoadRunnable;->subscription:Landroid/service/controls/IControlsSubscription;

    iput-object p5, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnCancelAndLoadRunnable;->callback:Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;

    return-void
.end method


# virtual methods
.method public doRun()V
    .locals 2

    const-string v0, "ControlsBindingControllerImpl"

    const-string v1, "LoadSubscription: Canceling and loading controls"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$CallbackRunnable;->getProvider()Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnCancelAndLoadRunnable;->subscription:Landroid/service/controls/IControlsSubscription;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->cancelSubscription(Landroid/service/controls/IControlsSubscription;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnCancelAndLoadRunnable;->callback:Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$OnCancelAndLoadRunnable;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
