.class public Landroid/net/ipmemorystore/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field public static final ERROR_DATABASE_CANNOT_BE_OPENED:I = -0x3

.field public static final ERROR_GENERIC:I = -0x1

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field public static final ERROR_STORAGE:I = -0x4

.field public static final ERROR_UNKNOWN:I = -0x5

.field public static final SUCCESS:I


# instance fields
.field public final resultCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    return-void
.end method

.method public constructor <init>(Landroid/net/ipmemorystore/StatusParcelable;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget p1, p1, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    invoke-direct {p0, p1}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 0

    iget p0, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toParcelable()Landroid/net/ipmemorystore/StatusParcelable;
    .locals 1

    new-instance v0, Landroid/net/ipmemorystore/StatusParcelable;

    invoke-direct {v0}, Landroid/net/ipmemorystore/StatusParcelable;-><init>()V

    iget p0, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    iput p0, v0, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    const/4 v0, -0x4

    if-eq p0, v0, :cond_4

    const/4 v0, -0x3

    if-eq p0, v0, :cond_3

    const/4 v0, -0x2

    if-eq p0, v0, :cond_2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    const-string p0, "Unknown value ?!"

    return-object p0

    :cond_0
    const-string p0, "SUCCESS"

    return-object p0

    :cond_1
    const-string p0, "GENERIC ERROR"

    return-object p0

    :cond_2
    const-string p0, "ILLEGAL ARGUMENT"

    return-object p0

    :cond_3
    const-string p0, "DATABASE CANNOT BE OPENED"

    return-object p0

    :cond_4
    const-string p0, "DATABASE STORAGE ERROR"

    return-object p0
.end method
