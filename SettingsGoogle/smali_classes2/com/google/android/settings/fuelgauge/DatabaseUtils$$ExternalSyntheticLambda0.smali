.class public final synthetic Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/os/BatteryUsageStats;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:J

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$1:Landroid/os/BatteryUsageStats;

    iput p3, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$4:I

    iput-wide p6, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$5:J

    iput-wide p8, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$6:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$1:Landroid/os/BatteryUsageStats;

    iget v2, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$4:I

    iget-wide v5, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$5:J

    iget-wide v7, p0, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;->f$6:J

    move-object v9, p1

    check-cast v9, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-static/range {v0 .. v9}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->$r8$lambda$t86y-XEEO_6qdiNoHyEXdlkwPtA(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJLcom/android/settings/fuelgauge/BatteryEntry;)V

    return-void
.end method
