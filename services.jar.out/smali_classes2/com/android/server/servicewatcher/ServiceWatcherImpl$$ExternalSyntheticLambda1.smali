.class public final synthetic Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

.field public final synthetic f$1:Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;

    invoke-static {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->$r8$lambda$t0qAh1UEA_LOIy4Yd0Q8_IVsw2E(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method
