.class public Landroid/net/networkstack/aidl/NetworkMonitorParameters$1;
.super Ljava/lang/Object;
.source "NetworkMonitorParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/networkstack/aidl/NetworkMonitorParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/networkstack/aidl/NetworkMonitorParameters;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/NetworkMonitorParameters;
    .locals 0

    new-instance p0, Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    invoke-direct {p0}, Landroid/net/networkstack/aidl/NetworkMonitorParameters;-><init>()V

    invoke-virtual {p0, p1}, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/networkstack/aidl/NetworkMonitorParameters$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/networkstack/aidl/NetworkMonitorParameters;
    .locals 0

    new-array p0, p1, [Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/networkstack/aidl/NetworkMonitorParameters$1;->newArray(I)[Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    move-result-object p0

    return-object p0
.end method