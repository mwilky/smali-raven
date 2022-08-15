.class public Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$1;
.super Ljava/lang/Object;
.source "ReachabilityLossInfoParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
    .locals 0

    invoke-static {p1}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->-$$Nest$sminternalCreateFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;
    .locals 0

    new-array p0, p1, [Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable$1;->newArray(I)[Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    move-result-object p0

    return-object p0
.end method
