.class Lcom/android/wsuinterface/NetworkGroupSubscription$1;
.super Ljava/lang/Object;
.source "NetworkGroupSubscription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wsuinterface/NetworkGroupSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/wsuinterface/NetworkGroupSubscription;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/wsuinterface/NetworkGroupSubscription;
    .locals 12

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v10, v0}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-class v0, Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    const/4 v6, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const-class v6, Landroid/app/PendingIntent;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    const-class v7, Landroid/app/PendingIntent;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    move-object v7, p1

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move p1, v0

    move-object v7, v6

    :goto_0
    new-instance v11, Lcom/android/wsuinterface/NetworkGroupSubscription;

    const/4 v8, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/wsuinterface/NetworkGroupSubscription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/wsuinterface/NetworkGroupSubscription$1;)V

    invoke-virtual {v11, p0}, Lcom/android/wsuinterface/NetworkGroupSubscription;->setProvisionStatus(I)V

    invoke-virtual {v11, v10}, Lcom/android/wsuinterface/NetworkGroupSubscription;->updateProvisionedWifiConfigurations(Ljava/util/List;)V

    invoke-virtual {v11, v9}, Lcom/android/wsuinterface/NetworkGroupSubscription;->updateProvisionedPasspointConfigurations(Ljava/util/List;)V

    invoke-static {v11, p1}, Lcom/android/wsuinterface/NetworkGroupSubscription;->access$102(Lcom/android/wsuinterface/NetworkGroupSubscription;I)I

    return-object v11
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wsuinterface/NetworkGroupSubscription$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/wsuinterface/NetworkGroupSubscription;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/wsuinterface/NetworkGroupSubscription;
    .locals 0

    new-array p0, p1, [Lcom/android/wsuinterface/NetworkGroupSubscription;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wsuinterface/NetworkGroupSubscription$1;->newArray(I)[Lcom/android/wsuinterface/NetworkGroupSubscription;

    move-result-object p0

    return-object p0
.end method
