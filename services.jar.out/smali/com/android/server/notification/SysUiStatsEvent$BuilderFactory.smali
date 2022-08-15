.class public Lcom/android/server/notification/SysUiStatsEvent$BuilderFactory;
.super Ljava/lang/Object;
.source "SysUiStatsEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newBuilder()Lcom/android/server/notification/SysUiStatsEvent$Builder;
    .locals 1

    new-instance p0, Lcom/android/server/notification/SysUiStatsEvent$Builder;

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/SysUiStatsEvent$Builder;-><init>(Landroid/util/StatsEvent$Builder;)V

    return-object p0
.end method
