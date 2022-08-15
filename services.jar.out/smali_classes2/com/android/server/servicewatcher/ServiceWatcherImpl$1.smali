.class public Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ServiceWatcherImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/ServiceWatcherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onSomePackagesChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V

    return-void
.end method
