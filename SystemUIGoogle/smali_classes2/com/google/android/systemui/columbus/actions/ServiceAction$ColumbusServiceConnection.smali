.class final Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;
.super Ljava/lang/Object;
.source "ServiceAction.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/actions/ServiceAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ColumbusServiceConnection"
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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-static {p2}, Lcom/google/android/systemui/columbus/IColumbusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/systemui/columbus/IColumbusService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->access$setColumbusService$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;Lcom/google/android/systemui/columbus/IColumbusService;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->access$getColumbusService$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;)Lcom/google/android/systemui/columbus/IColumbusService;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-static {p2}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->access$getToken$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;)Landroid/os/IBinder;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->access$getColumbusServiceListener$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;)Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceListener;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/google/android/systemui/columbus/IColumbusService;->registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Columbus/ServiceAction"

    const-string v0, "Error registering listener"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->onServiceConnected()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->access$setColumbusService$p(Lcom/google/android/systemui/columbus/actions/ServiceAction;Lcom/google/android/systemui/columbus/IColumbusService;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ServiceAction$ColumbusServiceConnection;->this$0:Lcom/google/android/systemui/columbus/actions/ServiceAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/ServiceAction;->onServiceDisconnected()V

    return-void
.end method
