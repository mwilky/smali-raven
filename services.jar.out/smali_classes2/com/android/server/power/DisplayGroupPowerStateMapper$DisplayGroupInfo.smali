.class final Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;
.super Ljava/lang/Object;
.source "DisplayGroupPowerStateMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayGroupPowerStateMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayGroupInfo"
.end annotation


# instance fields
.field public final displayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public lastPowerOnTime:J

.field public lastUserActivityTime:J

.field public lastUserActivityTimeNoChangeLights:J

.field poweringOn:Z

.field public ready:Z

.field public sandmanSummoned:Z

.field public supportsSandman:Z

.field public userActivitySummary:I

.field public wakeLockSummary:I

.field public wakefulness:I


# direct methods
.method constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->displayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p2, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->wakefulness:I

    iput-boolean p3, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->ready:Z

    iput-boolean p4, p0, Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupInfo;->supportsSandman:Z

    return-void
.end method
