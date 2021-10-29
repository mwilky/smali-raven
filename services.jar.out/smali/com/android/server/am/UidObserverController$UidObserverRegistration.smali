.class final Lcom/android/server/am/UidObserverController$UidObserverRegistration;
.super Ljava/lang/Object;
.source "UidObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UidObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UidObserverRegistration"
.end annotation


# static fields
.field private static final ORIG_ENUMS:[I

.field private static final PROTO_ENUMS:[I


# instance fields
.field private final mCutpoint:I

.field final mLastProcStates:Landroid/util/SparseIntArray;

.field mMaxDispatchTime:I

.field private final mPkg:Ljava/lang/String;

.field mSlowDispatchCount:I

.field private final mUid:I

.field private final mWhich:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x8
        0x2
        0x1
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
        0x2
        0x1
        0x6
    .end array-data
.end method

.method constructor <init>(ILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    iput-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    iput p4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    if-ltz p4, :cond_0

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/UidObserverController$UidObserverRegistration;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V
    .locals 3

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const-string v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    const-string v0, " ACT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const-string v0, " GONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    const-string v0, " CAP"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const-string v0, " STATE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " (cut="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    const-string v2, "      Last "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 13

    move-object v0, p0

    move-object v7, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget v1, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    const-wide v10, 0x10500000001L

    invoke-virtual {p1, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v1, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    const-wide v2, 0x10900000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v4, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    sget-object v5, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    sget-object v6, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    const-wide v2, 0x20e00000003L

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    iget v1, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    const-wide v2, 0x10500000004L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v1, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-wide v3, 0x20b00000005L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10500000002L

    iget-object v12, v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-virtual {p1, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
