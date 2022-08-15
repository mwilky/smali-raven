.class public interface abstract Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UserUsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatsUpdatedListener"
.end annotation


# virtual methods
.method public abstract onNewUpdate(I)V
.end method

.method public abstract onStatsReloaded()V
.end method

.method public abstract onStatsUpdated()V
.end method
