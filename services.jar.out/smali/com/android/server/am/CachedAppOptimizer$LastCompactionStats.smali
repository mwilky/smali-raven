.class final Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LastCompactionStats"
.end annotation


# instance fields
.field public final mRssAfterCompaction:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->mRssAfterCompaction:[J

    return-void
.end method


# virtual methods
.method public getRssAfterCompaction()[J
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->mRssAfterCompaction:[J

    return-object p0
.end method
