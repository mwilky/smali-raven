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
    .locals 1

    iget v0, p1, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    invoke-direct {p0, v0}, Landroid/net/ipmemorystore/Status;-><init>(I)V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    iget v0, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toParcelable()Landroid/net/ipmemorystore/StatusParcelable;
    .locals 2

    new-instance v0, Landroid/net/ipmemorystore/StatusParcelable;

    invoke-direct {v0}, Landroid/net/ipmemorystore/StatusParcelable;-><init>()V

    iget v1, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    iput v1, v0, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/net/ipmemorystore/Status;->resultCode:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown value ?!"

    return-object v0

    :pswitch_0
    const-string v0, "SUCCESS"

    return-object v0

    :pswitch_1
    const-string v0, "GENERIC ERROR"

    return-object v0

    :pswitch_2
    const-string v0, "ILLEGAL ARGUMENT"

    return-object v0

    :pswitch_3
    const-string v0, "DATABASE CANNOT BE OPENED"

    return-object v0

    :pswitch_4
    const-string v0, "DATABASE STORAGE ERROR"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
