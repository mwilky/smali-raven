.class public Lcom/android/server/pm/pkg/PackageUserStateImpl$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "PackageUserStateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/pkg/PackageUserStateImpl;->makeCache()Lcom/android/server/utils/SnapshotCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/SnapshotCache<",
        "Lcom/android/server/pm/pkg/PackageUserStateImpl;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/pkg/PackageUserStateImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/utils/Watchable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;->this$0:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;
    .locals 2

    new-instance v0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;->this$0:Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-static {v1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->-$$Nest$fgetmWatchable(Lcom/android/server/pm/pkg/PackageUserStateImpl;)Lcom/android/server/utils/Watchable;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;-><init>(Lcom/android/server/utils/Watchable;Lcom/android/server/pm/pkg/PackageUserStateImpl;)V

    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;->createSnapshot()Lcom/android/server/pm/pkg/PackageUserStateImpl;

    move-result-object p0

    return-object p0
.end method
