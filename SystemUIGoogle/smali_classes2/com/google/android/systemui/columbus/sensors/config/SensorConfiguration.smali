.class public Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;
.super Ljava/lang/Object;
.source "SensorConfiguration.java"


# instance fields
.field public final defaultSensitivityValue:F

.field public final lowSensitivityValue:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->columbus_default_sensitivity_percent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;->defaultSensitivityValue:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$integer;->columbus_low_sensitivity_percent:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;->lowSensitivityValue:F

    return-void
.end method
