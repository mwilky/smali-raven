.class public Lcom/google/android/systemui/columbus/sensors/Resample1C;
.super Ljava/lang/Object;
.source "Resample1C.java"


# instance fields
.field protected mInterval:J

.field protected mRawLastT:J

.field protected mRawLastX:F

.field protected mResampledLastT:J

.field protected mResampledThisX:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/Resample1C;->mResampledThisX:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/Resample1C;->mInterval:J

    return-void
.end method


# virtual methods
.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/systemui/columbus/sensors/Resample1C;->mInterval:J

    return-wide v0
.end method

.method public init(FJJ)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Resample1C;->mRawLastX:F

    iput-wide p2, p0, Lcom/google/android/systemui/columbus/sensors/Resample1C;->mRawLastT:J

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/Resample1C;->mResampledThisX:F

    iput-wide p2, p0, Lcom/google/android/systemui/columbus/sensors/Resample1C;->mResampledLastT:J

    iput-wide p4, p0, Lcom/google/android/systemui/columbus/sensors/Resample1C;->mInterval:J

    return-void
.end method

.method public setSyncTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/systemui/columbus/sensors/Resample1C;->mResampledLastT:J

    return-void
.end method
