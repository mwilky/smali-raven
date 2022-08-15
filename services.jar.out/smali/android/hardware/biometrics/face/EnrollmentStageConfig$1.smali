.class public Landroid/hardware/biometrics/face/EnrollmentStageConfig$1;
.super Ljava/lang/Object;
.source "EnrollmentStageConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/EnrollmentStageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/biometrics/face/EnrollmentStageConfig;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .locals 0

    new-instance p0, Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    invoke-direct {p0}, Landroid/hardware/biometrics/face/EnrollmentStageConfig;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/EnrollmentStageConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/EnrollmentStageConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;
    .locals 0

    new-array p0, p1, [Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/EnrollmentStageConfig$1;->newArray(I)[Landroid/hardware/biometrics/face/EnrollmentStageConfig;

    move-result-object p0

    return-object p0
.end method
