.class Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;
.super Ljava/lang/Object;
.source "ServiceAction.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/ServiceAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ElmyraServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;


# direct methods
.method private constructor <init>(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/systemui/elmyra/actions/ServiceAction;Lcom/google/android/systemui/elmyra/actions/ServiceAction$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;-><init>(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-static {p2}, Lcom/google/android/systemui/elmyra/IElmyraService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/systemui/elmyra/IElmyraService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->access$202(Lcom/google/android/systemui/elmyra/actions/ServiceAction;Lcom/google/android/systemui/elmyra/IElmyraService;)Lcom/google/android/systemui/elmyra/IElmyraService;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->access$200(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)Lcom/google/android/systemui/elmyra/IElmyraService;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-static {p2}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->access$300(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)Landroid/os/IBinder;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->access$400(Lcom/google/android/systemui/elmyra/actions/ServiceAction;)Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceListener;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/google/android/systemui/elmyra/IElmyraService;->registerServiceListener(Landroid/os/IBinder;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Elmyra/ServiceAction"

    const-string v0, "Error registering listener"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->onServiceConnected()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->access$202(Lcom/google/android/systemui/elmyra/actions/ServiceAction;Lcom/google/android/systemui/elmyra/IElmyraService;)Lcom/google/android/systemui/elmyra/IElmyraService;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/ServiceAction$ElmyraServiceConnection;->this$0:Lcom/google/android/systemui/elmyra/actions/ServiceAction;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/ServiceAction;->onServiceDisconnected()V

    return-void
.end method
