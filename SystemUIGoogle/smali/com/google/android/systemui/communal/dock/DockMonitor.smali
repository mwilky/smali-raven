.class public Lcom/google/android/systemui/communal/dock/DockMonitor;
.super Lcom/android/systemui/CoreStartable;
.source "DockMonitor.java"


# instance fields
.field public final mMonitorFetcher:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/condition/Monitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/condition/Monitor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/CoreStartable;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/DockMonitor;->mMonitorFetcher:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    const-string v0, "DockMonitor"

    const-string/jumbo v1, "started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/DockMonitor;->mMonitorFetcher:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/condition/Monitor;

    return-void
.end method
