.class final Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;
.super Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;
.source "LocationEventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/eventlog/LocationEventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderDeliverLocationEvent"
.end annotation


# instance fields
.field private final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field private final mNumLocations:I


# direct methods
.method constructor <init>(JLjava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;-><init>(JLjava/lang/String;)V

    iput p4, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;->mNumLocations:I

    iput-object p5, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    return-void
.end method


# virtual methods
.method public getLogString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider delivered location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;->mNumLocations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
