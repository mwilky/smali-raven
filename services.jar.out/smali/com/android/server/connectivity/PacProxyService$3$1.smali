.class public Lcom/android/server/connectivity/PacProxyService$3$1;
.super Lcom/android/net/IProxyPortListener$Stub;
.source "PacProxyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PacProxyService$3;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/connectivity/PacProxyService$3;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/PacProxyService$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$3;

    invoke-direct {p0}, Lcom/android/net/IProxyPortListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setProxyPort(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$3;

    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService$3;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fgetmLastPort(Lcom/android/server/connectivity/PacProxyService;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$3;

    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService$3;->this$0:Lcom/android/server/connectivity/PacProxyService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fputmHasSentBroadcast(Lcom/android/server/connectivity/PacProxyService;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$3;

    iget-object v0, v0, Lcom/android/server/connectivity/PacProxyService$3;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$fputmLastPort(Lcom/android/server/connectivity/PacProxyService;I)V

    const-string v0, "PacProxyService"

    if-eq p1, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local proxy is bound on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$3$1;->this$1:Lcom/android/server/connectivity/PacProxyService$3;

    iget-object p0, p0, Lcom/android/server/connectivity/PacProxyService$3;->this$0:Lcom/android/server/connectivity/PacProxyService;

    invoke-static {p0}, Lcom/android/server/connectivity/PacProxyService;->-$$Nest$msendProxyIfNeeded(Lcom/android/server/connectivity/PacProxyService;)V

    goto :goto_0

    :cond_1
    const-string p0, "Received invalid port from Local Proxy, PAC will not be operational"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
