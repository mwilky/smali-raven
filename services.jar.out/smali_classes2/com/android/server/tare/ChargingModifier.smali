.class public Lcom/android/server/tare/ChargingModifier;
.super Lcom/android/server/tare/Modifier;
.source "ChargingModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/ChargingModifier$ChargingTracker;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mChargingTracker:Lcom/android/server/tare/ChargingModifier$ChargingTracker;

.field public final mIrs:Lcom/android/server/tare/InternalResourceService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIrs(Lcom/android/server/tare/ChargingModifier;)Lcom/android/server/tare/InternalResourceService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/ChargingModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/tare/ChargingModifier;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/tare/ChargingModifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/ChargingModifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/ChargingModifier;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/tare/ChargingModifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/tare/Modifier;-><init>()V

    iput-object p1, p0, Lcom/android/server/tare/ChargingModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    new-instance p1, Lcom/android/server/tare/ChargingModifier$ChargingTracker;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;-><init>(Lcom/android/server/tare/ChargingModifier;Lcom/android/server/tare/ChargingModifier$ChargingTracker-IA;)V

    iput-object p1, p0, Lcom/android/server/tare/ChargingModifier;->mChargingTracker:Lcom/android/server/tare/ChargingModifier$ChargingTracker;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    const-string v0, "charging="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tare/ChargingModifier;->mChargingTracker:Lcom/android/server/tare/ChargingModifier$ChargingTracker;

    invoke-static {p0}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->-$$Nest$fgetmCharging(Lcom/android/server/tare/ChargingModifier$ChargingTracker;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    return-void
.end method

.method public getModifiedCostToProduce(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/ChargingModifier;->modifyValue(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getModifiedPrice(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tare/ChargingModifier;->modifyValue(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final modifyValue(J)J
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/ChargingModifier;->mChargingTracker:Lcom/android/server/tare/ChargingModifier$ChargingTracker;

    invoke-static {p0}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->-$$Nest$fgetmCharging(Lcom/android/server/tare/ChargingModifier$ChargingTracker;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public setup()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tare/ChargingModifier;->mChargingTracker:Lcom/android/server/tare/ChargingModifier$ChargingTracker;

    iget-object p0, p0, Lcom/android/server/tare/ChargingModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->startTracking(Landroid/content/Context;)V

    return-void
.end method

.method public tearDown()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/tare/ChargingModifier;->mChargingTracker:Lcom/android/server/tare/ChargingModifier$ChargingTracker;

    iget-object p0, p0, Lcom/android/server/tare/ChargingModifier;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/tare/ChargingModifier$ChargingTracker;->stopTracking(Landroid/content/Context;)V

    return-void
.end method
