.class public Lcom/google/android/setupcompat/portal/ProgressServiceComponent;
.super Ljava/lang/Object;
.source "ProgressServiceComponent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/setupcompat/portal/ProgressServiceComponent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final autoRebind:Z

.field public final displayIconResId:I

.field public final displayNameResId:I

.field public final isSilent:Z

.field public final itemClickIntent:Landroid/content/Intent;

.field public final packageName:Ljava/lang/String;

.field public final serviceIntent:Landroid/content/Intent;

.field public final taskName:Ljava/lang/String;

.field public final timeoutForReRegister:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$1;

    invoke-direct {v0}, Lcom/google/android/setupcompat/portal/ProgressServiceComponent$1;-><init>()V

    sput-object v0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZJIILandroid/content/Intent;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->taskName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->isSilent:Z

    iput-boolean p4, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->autoRebind:Z

    iput-wide p5, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->timeoutForReRegister:J

    iput p7, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->displayNameResId:I

    iput p8, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->displayIconResId:I

    iput-object p9, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->serviceIntent:Landroid/content/Intent;

    iput-object p10, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->itemClickIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->taskName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->isSilent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->displayNameResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->displayIconResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->serviceIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->itemClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->autoRebind:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->timeoutForReRegister:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
