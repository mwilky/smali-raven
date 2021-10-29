.class Lcom/android/server/appop/AppOpsService$8;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->initializeRarelyUsedPackagesList(Landroid/util/ArraySet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/app/AppOpsManager$HistoricalOps;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field final synthetic val$candidates:Landroid/util/ArraySet;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$8;->val$candidates:Landroid/util/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 8

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$8;->val$candidates:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    nop

    invoke-virtual {v2, v4}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOpCount()I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$8;->val$candidates:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->access$2000(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$8;->val$candidates:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v4}, Lcom/android/server/appop/AppOpsService;->access$2000(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$8;->val$candidates:Landroid/util/ArraySet;

    invoke-static {v2, v3}, Lcom/android/server/appop/AppOpsService;->access$2002(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$8;->accept(Landroid/app/AppOpsManager$HistoricalOps;)V

    return-void
.end method
