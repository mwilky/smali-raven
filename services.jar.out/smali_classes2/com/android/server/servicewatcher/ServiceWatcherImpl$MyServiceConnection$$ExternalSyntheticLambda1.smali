.class public final synthetic Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->lambda$onBindingDied$0$ServiceWatcherImpl$MyServiceConnection()V

    return-void
.end method
