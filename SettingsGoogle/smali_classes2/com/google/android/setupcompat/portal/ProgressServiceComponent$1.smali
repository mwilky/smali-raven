.class Lcom/google/android/setupcompat/portal/ProgressServiceComponent$1;
.super Ljava/lang/Object;
.source "ProgressServiceComponent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/portal/ProgressServiceComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/setupcompat/portal/ProgressServiceComponent;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/setupcompat/portal/ProgressServiceComponent;
    .locals 3

    invoke-static {}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->newBuilder()Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;->setPackageName(Ljava/lang/String;)Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;->setTaskName(Ljava/lang/String;)Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;->setSilentMode(Z)Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;->setDisplayName(I)Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;->setDisplayIcon(I)Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;

    move-result-object p0

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;->setServiceIntent(Landroid/content/Intent;)Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;

    move-result-object p0

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;->setItemClickIntent(Landroid/content/Intent;)Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;->setAutoRebind(Z)Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;->setTimeoutForReRegister(J)Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$Builder;->build()Lcom/google/android/setupcompat/portal/ProgressServiceComponent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/setupcompat/portal/ProgressServiceComponent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/setupcompat/portal/ProgressServiceComponent;
    .locals 0

    new-array p0, p1, [Lcom/google/android/setupcompat/portal/ProgressServiceComponent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$1;->newArray(I)[Lcom/google/android/setupcompat/portal/ProgressServiceComponent;

    move-result-object p0

    return-object p0
.end method
