.class public final Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;
.super Ljava/lang/Object;
.source "AssistGestureController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;
    }
.end annotation


# instance fields
.field public mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

.field public mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

.field public final mFalsePrimeWindow:J

.field public final mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

.field public final mGestureCooldownTime:J

.field public mGestureListener:Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;

.field public mGestureProgress:F

.field public final mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

.field public mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

.field public mIsFalsePrimed:Z

.field public mLastDetectionTime:J

.field public mOpaQueryReceiver:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;

.field public final mProgressAlpha:F

.field public final mProgressReportThreshold:F

.field public final mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

.field public mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/GestureSensor;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/google/android/systemui/elmyra/SnapshotConfiguration;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;-><init>(Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mOpaQueryReceiver:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.google.android.systemui.OPA_ELMYRA_QUERY_SUBMITTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mOpaQueryReceiver:Lcom/google/android/systemui/elmyra/sensors/AssistGestureController$OPAQueryReceiver;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    new-instance v1, Lcom/google/android/systemui/elmyra/SnapshotLogger;

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    iget v3, p4, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;->mCompleteGestures:I

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-direct {v1, v3}, Lcom/google/android/systemui/elmyra/SnapshotLogger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    new-instance v1, Lcom/google/android/systemui/elmyra/SnapshotLogger;

    if-eqz p4, :cond_1

    iget v2, p4, Lcom/google/android/systemui/elmyra/SnapshotConfiguration;->mIncompleteGestures:I

    :cond_1
    invoke-direct {v1, v2}, Lcom/google/android/systemui/elmyra/SnapshotLogger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    const v1, 0x7f070226

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mProgressAlpha:F

    const v1, 0x7f070228

    invoke-virtual {p2, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mProgressReportThreshold:F

    const v0, 0x7f0c0043

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureCooldownTime:J

    const v2, 0x7f0c0042

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mFalsePrimeWindow:J

    if-eqz p4, :cond_2

    new-instance p2, Lcom/google/android/systemui/elmyra/SnapshotController;

    invoke-direct {p2, p4}, Lcom/google/android/systemui/elmyra/SnapshotController;-><init>(Lcom/google/android/systemui/elmyra/SnapshotConfiguration;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    :goto_1
    new-instance p2, Lcom/google/android/systemui/elmyra/WestworldLogger;

    iget-object p4, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/systemui/elmyra/WestworldLogger;-><init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/google/android/systemui/elmyra/SnapshotController;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    iget-object v2, v2, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const-string/jumbo v2, "sensors {"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    iget-object v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->source:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  gain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    iget-object v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->gain:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  sensitivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mChassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    iget-object v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;->sensors:[Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Sensor;->sensitivity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    move v0, v1

    move v2, v0

    move v3, v2

    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_4

    aget-object v4, p2, v0

    const-string v5, "GoogleServices"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v2, v6

    goto :goto_2

    :cond_2
    const-string/jumbo v5, "proto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v6

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    iget-object p2, p2, Lcom/google/android/systemui/elmyra/SnapshotLogger;->mSnapshots:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    iget-object v0, v0, Lcom/google/android/systemui/elmyra/SnapshotLogger;->mSnapshots:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    new-instance v2, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;

    invoke-direct {v2}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    new-array v3, v4, [Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    iput-object v3, v2, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    move v3, v1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;

    iget-object v4, v4, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    iget-object v5, v2, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    aput-object v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;

    iget-object p2, p2, Lcom/google/android/systemui/elmyra/SnapshotLogger$Snapshot;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    iget-object v4, v2, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshots;->snapshots:[Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    add-int v5, v3, v1

    aput-object p2, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-static {v2}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    iget-object p2, p2, Lcom/google/android/systemui/elmyra/SnapshotLogger;->mSnapshots:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    iget-object p2, p2, Lcom/google/android/systemui/elmyra/SnapshotLogger;->mSnapshots:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_5
    const-string/jumbo p2, "user_sensitivity: "

    invoke-static {p2}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureConfiguration:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->getSensitivity()F

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mLastDetectionTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureCooldownTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIsFalsePrimed:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureListener:Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;->onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/google/android/systemui/elmyra/SnapshotController;->onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    invoke-virtual {v2, p1}, Lcom/google/android/systemui/elmyra/WestworldLogger;->onGestureDetected(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V

    iput-wide v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mLastDetectionTime:J

    :cond_3
    :goto_0
    return-void
.end method

.method public final onGestureProgress(F)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    iput v0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureProgress:F

    iput-boolean v2, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIsFalsePrimed:Z

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mProgressAlpha:F

    mul-float v4, v1, p1

    sub-float v1, v3, v1

    iget v5, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureProgress:F

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    iput v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureProgress:F

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mLastDetectionTime:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureCooldownTime:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_9

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIsFalsePrimed:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v6, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mFalsePrimeWindow:J

    cmp-long v1, v4, v6

    const/4 v4, 0x1

    if-gez v1, :cond_2

    cmpl-float v1, p1, v3

    if-nez v1, :cond_2

    iput-boolean v4, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIsFalsePrimed:Z

    return-void

    :cond_2
    iget v1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureProgress:F

    iget v5, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mProgressReportThreshold:F

    cmpg-float v6, v1, v5

    if-gez v6, :cond_5

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureListener:Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;

    if-eqz p1, :cond_3

    invoke-interface {p1, v0, v2}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;->onGestureProgress(FI)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0, v2}, Lcom/google/android/systemui/elmyra/SnapshotController;->onGestureProgress(FI)V

    :cond_4
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    invoke-virtual {p0, v0, v2}, Lcom/google/android/systemui/elmyra/WestworldLogger;->onGestureProgress(FI)V

    goto :goto_1

    :cond_5
    sub-float/2addr v1, v5

    sub-float v0, v3, v5

    div-float/2addr v1, v0

    cmpl-float p1, p1, v3

    if-nez p1, :cond_6

    const/4 v4, 0x2

    :cond_6
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mGestureListener:Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;

    if-eqz p1, :cond_7

    invoke-interface {p1, v1, v4}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;->onGestureProgress(FI)V

    :cond_7
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mSnapshotController:Lcom/google/android/systemui/elmyra/SnapshotController;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v1, v4}, Lcom/google/android/systemui/elmyra/SnapshotController;->onGestureProgress(FI)V

    :cond_8
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    invoke-virtual {p0, v1, v4}, Lcom/google/android/systemui/elmyra/WestworldLogger;->onGestureProgress(FI)V

    :cond_9
    :goto_1
    return-void
.end method

.method public final onSnapshotReceived(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;->header:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;

    iget v0, v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$SnapshotHeader;->gestureType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mWestworldLogger:Lcom/google/android/systemui/elmyra/WestworldLogger;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mSnapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/WestworldLogger;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mCompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->addSnapshot(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;J)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/AssistGestureController;->mIncompleteGestures:Lcom/google/android/systemui/elmyra/SnapshotLogger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/systemui/elmyra/SnapshotLogger;->addSnapshot(Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;J)V

    :goto_0
    return-void
.end method
