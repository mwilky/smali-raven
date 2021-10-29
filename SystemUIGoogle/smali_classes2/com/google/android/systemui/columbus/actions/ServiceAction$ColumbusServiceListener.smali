.class final Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;
.super Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub;
.source "ServiceAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/actions/ServiceAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ColumbusServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/actions/ServiceAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/IColumbusServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "Columbus/ServiceAction"

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->checkSupportedCaller()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-static {v1}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->access$getColumbusServiceGestureListener$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;)Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-static {p2}, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->access$setColumbusServiceGestureListener$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-static {v1}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->access$updateAvailable(Lcom/google/android/systemui/columbus/actions/ServiceAction;)V

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    const/4 v1, 0x0

    if-nez p2, :cond_3

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    :cond_3
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NoSuchElementException during linkToDeath"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "RemoteException during linkToDeath"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
