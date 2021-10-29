.class Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayDeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HighBrightnessModeData"
.end annotation


# instance fields
.field public allowInLowPowerMode:Z

.field public minimumLux:F

.field public thermalStatusLimit:I

.field public timeMaxMillis:J

.field public timeMinMillis:J

.field public timeWindowMillis:J

.field public transitionPoint:F


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(FFJJJIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    iput p2, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    iput-wide p3, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    iput-wide p5, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    iput-wide p7, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    iput p9, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->thermalStatusLimit:I

    iput-boolean p10, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;)V
    .locals 2

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    iput v0, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    iput-wide v0, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    iput-wide v0, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    iput-wide v0, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    iput v0, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->thermalStatusLimit:I

    iput v0, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->thermalStatusLimit:I

    iget-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    iput-boolean v0, p1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HBM{minLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", transition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", timeWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms, timeMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms, timeMin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms, thermalStatusLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->thermalStatusLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allowInLowPowerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
