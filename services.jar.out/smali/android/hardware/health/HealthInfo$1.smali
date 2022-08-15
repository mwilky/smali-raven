.class public Landroid/hardware/health/HealthInfo$1;
.super Ljava/lang/Object;
.source "HealthInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/HealthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/health/HealthInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/health/HealthInfo;
    .locals 0

    new-instance p0, Landroid/hardware/health/HealthInfo;

    invoke-direct {p0}, Landroid/hardware/health/HealthInfo;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/health/HealthInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/health/HealthInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/health/HealthInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/health/HealthInfo;
    .locals 0

    new-array p0, p1, [Landroid/hardware/health/HealthInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/health/HealthInfo$1;->newArray(I)[Landroid/hardware/health/HealthInfo;

    move-result-object p0

    return-object p0
.end method
