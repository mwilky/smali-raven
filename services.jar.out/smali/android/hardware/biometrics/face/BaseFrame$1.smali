.class Landroid/hardware/biometrics/face/BaseFrame$1;
.super Ljava/lang/Object;
.source "BaseFrame.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/BaseFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/biometrics/face/BaseFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/face/BaseFrame;
    .locals 1

    new-instance v0, Landroid/hardware/biometrics/face/BaseFrame;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/BaseFrame;-><init>()V

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/face/BaseFrame;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/BaseFrame$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/biometrics/face/BaseFrame;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/biometrics/face/BaseFrame;
    .locals 1

    new-array v0, p1, [Landroid/hardware/biometrics/face/BaseFrame;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/BaseFrame$1;->newArray(I)[Landroid/hardware/biometrics/face/BaseFrame;

    move-result-object p1

    return-object p1
.end method
