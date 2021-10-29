.class Lcom/android/server/sensors/SensorService$ProximityListenerProxy;
.super Ljava/lang/Object;
.source "SensorService.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensors/SensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProximityListenerProxy"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mListener:Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onProximityActive$0$SensorService$ProximityListenerProxy(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mListener:Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;

    invoke-interface {v0, p1}, Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;->onProximityActive(Z)V

    return-void
.end method

.method public onProximityActive(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensors/SensorService$ProximityListenerProxy;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
