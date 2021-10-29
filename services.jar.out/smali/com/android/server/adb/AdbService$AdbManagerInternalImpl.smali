.class Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;
.super Landroid/debug/AdbManagerInternal;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method private constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-direct {p0}, Landroid/debug/AdbManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/adb/AdbService;Lcom/android/server/adb/AdbService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;-><init>(Lcom/android/server/adb/AdbService;)V

    return-void
.end method

.method static synthetic lambda$startAdbdForTransport$0(Ljava/lang/Object;ZB)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/server/adb/AdbService;

    invoke-static {v0, p1, p2}, Lcom/android/server/adb/AdbService;->access$500(Lcom/android/server/adb/AdbService;ZB)V

    return-void
.end method

.method static synthetic lambda$stopAdbdForTransport$1(Ljava/lang/Object;ZB)V
    .locals 1

    move-object v0, p0

    check-cast v0, Lcom/android/server/adb/AdbService;

    invoke-static {v0, p1, p2}, Lcom/android/server/adb/AdbService;->access$500(Lcom/android/server/adb/AdbService;ZB)V

    return-void
.end method


# virtual methods
.method public getAdbKeysFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$400(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$400(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAdbTempKeysFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$400(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$400(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isAdbEnabled(B)Z
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$200(Lcom/android/server/adb/AdbService;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$300(Lcom/android/server/adb/AdbService;)Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAdbEnabled called with unimplemented transport type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerTransport(Landroid/debug/IAdbTransport;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$100(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startAdbdForTransport(B)V
    .locals 5

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/adb/AdbService$AdbManagerInternalImpl$$ExternalSyntheticLambda0;

    iget-object v2, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopAdbdForTransport(B)V
    .locals 5

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/adb/AdbService$AdbManagerInternalImpl$$ExternalSyntheticLambda1;

    iget-object v2, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterTransport(Landroid/debug/IAdbTransport;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$100(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
