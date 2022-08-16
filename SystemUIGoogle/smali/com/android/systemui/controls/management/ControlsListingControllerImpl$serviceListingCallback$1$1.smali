.class public final Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;
.super Ljava/lang/Object;
.source "ControlsListingControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsListingControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsListingControllerImpl.kt\ncom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,181:1\n1849#2,2:182\n*S KotlinDebug\n*F\n+ 1 ControlsListingControllerImpl.kt\ncom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1\n*L\n98#1:182,2\n*E\n"
.end annotation


# instance fields
.field public final synthetic $newComponents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $newServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/management/ControlsListingControllerImpl;Ljava/util/LinkedHashSet;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newComponents:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newServices:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->userChangeInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newComponents:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableComponents:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newComponents:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ServiceConfig reloaded, count: "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlsListingControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newComponents:Ljava/util/Set;

    iput-object v1, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableComponents:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->$newServices:Ljava/util/List;

    iput-object v1, v0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->availableServices:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl$serviceListingCallback$1$1;->this$0:Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->callbacks:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;

    invoke-interface {v1, v0}, Lcom/android/systemui/controls/management/ControlsListingController$ControlsListingCallback;->onServicesUpdated(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    return-void
.end method
