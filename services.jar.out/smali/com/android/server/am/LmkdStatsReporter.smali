.class public final Lcom/android/server/am/LmkdStatsReporter;
.super Ljava/lang/Object;
.source "LmkdStatsReporter.java"


# static fields
.field private static final DIRECT_RECL_AND_THRASHING:I = 0x5

.field public static final KILL_OCCURRED_MSG_SIZE:I = 0x50

.field private static final LOW_FILECACHE_AFTER_THRASHING:I = 0x7

.field private static final LOW_MEM_AND_SWAP:I = 0x3

.field private static final LOW_MEM_AND_SWAP_UTIL:I = 0x6

.field private static final LOW_MEM_AND_THRASHING:I = 0x4

.field private static final LOW_SWAP_AND_THRASHING:I = 0x2

.field private static final NOT_RESPONDING:I = 0x1

.field private static final PRESSURE_AFTER_KILL:I = 0x0

.field public static final STATE_CHANGED_MSG_SIZE:I = 0x8

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logKillOccurred(Ljava/io/DataInputStream;)V
    .locals 23

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x33

    invoke-static {v0}, Lcom/android/server/am/LmkdStatsReporter;->mapKillReason(I)I

    move-result v20

    invoke-static/range {v1 .. v22}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJIIIIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logStateChanged(I)V
    .locals 1

    const/16 v0, 0x36

    invoke-static {v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void
.end method

.method private static mapKillReason(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x8

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    const/4 v0, 0x6

    return v0

    :pswitch_3
    const/4 v0, 0x5

    return v0

    :pswitch_4
    const/4 v0, 0x4

    return v0

    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
