.class public final Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ElmyraAtoms.java"


# instance fields
.field public chassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

.field public snapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->snapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->chassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->snapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->chassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->chassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->chassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->chassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->snapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->snapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->snapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->snapshot:Lcom/google/android/systemui/elmyra/proto/nano/SnapshotProtos$Snapshot;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraAtoms$ElmyraSnapshot;->chassis:Lcom/google/android/systemui/elmyra/proto/nano/ChassisProtos$Chassis;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
