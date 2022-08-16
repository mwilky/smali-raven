.class public final Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$Generic;
.super Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;
.source "BiometricDisplayListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Generic"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$Generic;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$Generic;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$Generic;-><init>()V

    sput-object v0, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$Generic;->INSTANCE:Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$Generic;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;-><init>(I)V

    return-void
.end method
