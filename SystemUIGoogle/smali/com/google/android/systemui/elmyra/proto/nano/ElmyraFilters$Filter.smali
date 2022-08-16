.class public final Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;
.super Lcom/google/protobuf/nano/MessageNano;
.source "ElmyraFilters.java"


# static fields
.field public static volatile _emptyArray:[Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;


# instance fields
.field public parametersCase_:I

.field public parameters_:Lcom/google/protobuf/nano/MessageNano;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/MessageNano;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v2, p0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3
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

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$MedianFilter;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$MedianFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$LowpassFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$HighpassFilter;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$HighpassFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    :cond_6
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    new-instance v0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;

    invoke-direct {v0}, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$FIRFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    :cond_8
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput v1, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    goto :goto_0

    :cond_9
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

    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parametersCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/proto/nano/ElmyraFilters$Filter;->parameters_:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
