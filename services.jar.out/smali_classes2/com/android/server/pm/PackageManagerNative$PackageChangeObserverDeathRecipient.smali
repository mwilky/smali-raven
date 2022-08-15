.class public final Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;
.super Ljava/lang/Object;
.source "PackageManagerNative.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageChangeObserverDeathRecipient"
.end annotation


# instance fields
.field public final mObserver:Landroid/content/pm/IPackageChangeObserver;

.field public final synthetic this$0:Lcom/android/server/pm/PackageManagerNative;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerNative;Landroid/content/pm/IPackageChangeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;->this$0:Lcom/android/server/pm/PackageManagerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;->mObserver:Landroid/content/pm/IPackageChangeObserver;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;->this$0:Lcom/android/server/pm/PackageManagerNative;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerNative;->-$$Nest$fgetmPm(Lcom/android/server/pm/PackageManagerNative;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;->this$0:Lcom/android/server/pm/PackageManagerNative;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerNative;->-$$Nest$fgetmPm(Lcom/android/server/pm/PackageManagerNative;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;->mObserver:Landroid/content/pm/IPackageChangeObserver;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of mPackageChangeObservers after removing dead observer is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;->this$0:Lcom/android/server/pm/PackageManagerNative;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerNative;->-$$Nest$fgetmPm(Lcom/android/server/pm/PackageManagerNative;)Lcom/android/server/pm/PackageManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
