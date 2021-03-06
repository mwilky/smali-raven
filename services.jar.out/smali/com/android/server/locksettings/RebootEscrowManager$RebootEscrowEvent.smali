.class public Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;
.super Ljava/lang/Object;
.source "RebootEscrowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/RebootEscrowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RebootEscrowEvent"
.end annotation


# static fields
.field static final CLEARED_LSKF_REQUEST:I = 0x3

.field static final FOUND_ESCROW_DATA:I = 0x1

.field static final REQUESTED_LSKF:I = 0x5

.field static final RETRIEVED_LSKF_FOR_USER:I = 0x7

.field static final RETRIEVED_STORED_KEK:I = 0x4

.field static final SET_ARMED_STATUS:I = 0x2

.field static final STORED_LSKF_FOR_USER:I = 0x6


# instance fields
.field final mEventId:I

.field final mTimestamp:J

.field final mUserId:Ljava/lang/Integer;

.field final mWallTime:J


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mEventId:I

    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mUserId:Ljava/lang/Integer;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mWallTime:J

    return-void
.end method


# virtual methods
.method getEventDescription()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mEventId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mEventId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Retrieved LSKF for user"

    return-object v0

    :pswitch_1
    const-string v0, "Stored LSKF for user"

    return-object v0

    :pswitch_2
    const-string v0, "Requested LSKF"

    return-object v0

    :pswitch_3
    const-string v0, "Retrieved stored KEK"

    return-object v0

    :pswitch_4
    const-string v0, "Cleared request for LSKF"

    return-object v0

    :pswitch_5
    const-string v0, "Set armed status"

    return-object v0

    :pswitch_6
    const-string v0, "Found escrow data"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
