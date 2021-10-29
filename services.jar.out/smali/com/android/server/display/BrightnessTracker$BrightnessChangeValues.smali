.class Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrightnessChangeValues"
.end annotation


# instance fields
.field public final brightness:F

.field public final isDefaultBrightnessConfig:Z

.field public final isUserSetBrightness:Z

.field public final powerBrightnessFactor:F

.field public final timestamp:J

.field public final uniqueDisplayId:Ljava/lang/String;


# direct methods
.method constructor <init>(FFZZJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    iput p2, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    iput-boolean p3, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isUserSetBrightness:Z

    iput-boolean p4, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iput-wide p5, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    iput-object p7, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    return-void
.end method
