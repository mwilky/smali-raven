.class public Lcom/android/server/pm/SnapshotStatistics$1;
.super Landroid/os/Handler;
.source "SnapshotStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/SnapshotStatistics;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/SnapshotStatistics;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/SnapshotStatistics$1;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/SnapshotStatistics$1;->this$0:Lcom/android/server/pm/SnapshotStatistics;

    invoke-static {p0, p1}, Lcom/android/server/pm/SnapshotStatistics;->-$$Nest$mhandleMessage(Lcom/android/server/pm/SnapshotStatistics;Landroid/os/Message;)V

    return-void
.end method
