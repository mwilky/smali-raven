.class Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;
.super Ljava/lang/Object;
.source "MockableLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/provider/AbstractLocationProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/provider/MockableLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private final mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

.field final synthetic this$0:Lcom/android/server/location/provider/MockableLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/MockableLocationProvider;Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    return-void
.end method

.method static synthetic lambda$onStateChanged$0(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public final onReportLocation(Landroid/location/LocationResult;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/provider/MockableLocationProvider;->access$000(Lcom/android/server/location/provider/MockableLocationProvider;)Lcom/android/server/location/provider/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->mListenerProvider:Lcom/android/server/location/provider/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/provider/MockableLocationProvider;->access$000(Lcom/android/server/location/provider/MockableLocationProvider;)Lcom/android/server/location/provider/AbstractLocationProvider;

    move-result-object v2

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper;->this$0:Lcom/android/server/location/provider/MockableLocationProvider;

    new-instance v2, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/location/provider/MockableLocationProvider$ListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/provider/MockableLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
