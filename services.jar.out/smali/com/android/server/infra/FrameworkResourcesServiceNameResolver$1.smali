.class public Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;
.super Landroid/os/Handler;
.source "FrameworkResourcesServiceNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setTemporaryServices(I[Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;Landroid/os/Looper;Landroid/os/Handler$Callback;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->this$0:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iput p5, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->val$userId:I

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->this$0:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-static {p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->-$$Nest$fgetmLock(Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->this$0:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget p0, p0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver$1;->val$userId:I

    invoke-virtual {p1, p0}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->resetTemporaryService(I)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-static {}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid handler msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
