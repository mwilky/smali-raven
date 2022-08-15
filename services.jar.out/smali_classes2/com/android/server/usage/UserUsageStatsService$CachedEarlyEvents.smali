.class public final Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UserUsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedEarlyEvents"
.end annotation


# instance fields
.field public eventTime:J

.field public events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field public searchBeginTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;-><init>()V

    return-void
.end method
