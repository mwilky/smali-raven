.class abstract Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.super Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ProviderEvent"
.end annotation


# instance fields
.field protected final mProvider:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/eventlog/LocalEventLog$LogEvent;-><init>(J)V

    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
