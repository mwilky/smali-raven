.class Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;
.super Ljava/lang/Object;
.source "BatterySaverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyBoolean"
.end annotation


# instance fields
.field private final mDebugName:Ljava/lang/String;

.field private mValue:Z

.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mDebugName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;Lcom/android/server/power/batterysaver/BatterySaverPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;-><init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->initialize(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private get()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->access$400(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initialize(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->access$400(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method update(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->access$400(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    if-eq v1, p1, :cond_0

    const-string v1, "BatterySaverPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mDebugName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", updating policy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->mValue:Z

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->access$500(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$PolicyBoolean;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-static {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->access$600(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
