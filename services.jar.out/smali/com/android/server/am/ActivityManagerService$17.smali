.class Lcom/android/server/am/ActivityManagerService$17;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->sortMemItems(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/ActivityManagerService$MemItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pss:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$17;->val$pss:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ActivityManagerService$MemItem;Lcom/android/server/am/ActivityManagerService$MemItem;)I
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$17;->val$pss:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerService$17;->val$pss:Z

    if-eqz v2, :cond_1

    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    goto :goto_1

    :cond_1
    iget-wide v2, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    :goto_1
    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/4 v4, 0x1

    return v4

    :cond_2
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    const/4 v4, -0x1

    return v4

    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/ActivityManagerService$MemItem;

    check-cast p2, Lcom/android/server/am/ActivityManagerService$MemItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$17;->compare(Lcom/android/server/am/ActivityManagerService$MemItem;Lcom/android/server/am/ActivityManagerService$MemItem;)I

    move-result p1

    return p1
.end method
