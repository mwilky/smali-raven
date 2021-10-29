.class public final Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;
.super Ljava/lang/Object;
.source "PowerStatsHALWrapper.java"

# interfaces
.implements Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsHALWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerStatsHAL10WrapperImpl"
.end annotation


# instance fields
.field private mIsInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->mIsInitialized:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->mIsInitialized:Z

    :goto_0
    return-void
.end method

.method private static native nativeGetEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
.end method

.method private static native nativeGetPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
.end method

.method private static native nativeGetStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;
.end method

.method private static native nativeInit()Z
.end method

.method private static native nativeReadEnergyMeters([I)[Landroid/hardware/power/stats/EnergyMeasurement;
.end method


# virtual methods
.method public getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/power/stats/EnergyConsumerResult;

    return-object v0
.end method

.method public getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/power/stats/EnergyConsumer;

    return-object v0
.end method

.method public getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
    .locals 1

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeGetEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v0

    return-object v0
.end method

.method public getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
    .locals 1

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeGetPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    return-object v0
.end method

.method public getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;
    .locals 1

    invoke-static {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeGetStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->mIsInitialized:Z

    return v0
.end method

.method public readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;
    .locals 1

    invoke-static {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL10WrapperImpl;->nativeReadEnergyMeters([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object v0

    return-object v0
.end method
