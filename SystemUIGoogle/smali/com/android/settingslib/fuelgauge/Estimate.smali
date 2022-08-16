.class public final Lcom/android/settingslib/fuelgauge/Estimate;
.super Ljava/lang/Object;
.source "Estimate.kt"


# instance fields
.field public final averageDischargeTime:J

.field public final estimateMillis:J

.field public final isBasedOnUsage:Z


# direct methods
.method public constructor <init>(JJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settingslib/fuelgauge/Estimate;->estimateMillis:J

    iput-boolean p5, p0, Lcom/android/settingslib/fuelgauge/Estimate;->isBasedOnUsage:Z

    iput-wide p3, p0, Lcom/android/settingslib/fuelgauge/Estimate;->averageDischargeTime:J

    return-void
.end method
