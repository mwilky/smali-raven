.class Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
.super Ljava/lang/Object;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraUsageEvent"
.end annotation


# instance fields
.field public final mAPILevel:I

.field public final mAction:I

.field public final mCameraFacing:I

.field public final mCameraId:Ljava/lang/String;

.field public final mClientName:Ljava/lang/String;

.field private mCompleted:Z

.field public mDeviceError:Z

.field private mDurationOrStartTimeMs:J

.field public mInternalReconfigure:I

.field public final mIsNdk:Z

.field public final mLatencyMs:I

.field public final mOperatingMode:I

.field public mRequestCount:J

.field public mResultErrorCount:J

.field public mStreamStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;IZIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraId:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCameraFacing:I

    iput-object p3, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAPILevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    iput-boolean p5, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mIsNdk:Z

    iput p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mAction:I

    iput p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mLatencyMs:I

    iput p8, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mOperatingMode:I

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public markCompleted(IJJZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJZ",
            "Ljava/util/List<",
            "Landroid/hardware/CameraStreamStats;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mCompleted:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDurationOrStartTimeMs:J

    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mInternalReconfigure:I

    iput-wide p2, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mRequestCount:J

    iput-wide p4, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mResultErrorCount:J

    iput-boolean p6, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mDeviceError:Z

    iput-object p7, p0, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mStreamStats:Ljava/util/List;

    return-void
.end method
