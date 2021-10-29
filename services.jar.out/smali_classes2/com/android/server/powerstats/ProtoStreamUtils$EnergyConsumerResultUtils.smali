.class Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;
.super Ljava/lang/Object;
.source "ProtoStreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/ProtoStreamUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EnergyConsumerResultUtils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyConsumerResult;J)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    iget-wide v2, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getProtoBytes([Landroid/hardware/power/stats/EnergyConsumerResult;Z)[B
    .locals 2

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumerResult;Landroid/util/proto/ProtoOutputStream;Z)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static packProtoMessage([Landroid/hardware/power/stats/EnergyConsumerResult;Landroid/util/proto/ProtoOutputStream;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    const-wide v3, 0x20b00000002L

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    aget-object v5, v0, v2

    iget v5, v5, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    const-wide v6, 0x10500000001L

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    aget-object v5, v0, v2

    iget-wide v8, v5, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    const-wide v10, 0x10300000002L

    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v8, 0x10300000003L

    aget-object v5, v0, v2

    iget-wide v12, v5, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    invoke-virtual {v1, v8, v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    if-eqz p2, :cond_1

    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    array-length v5, v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_1

    aget-object v9, v0, v2

    iget-object v9, v9, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    aget-object v9, v9, v8

    const-wide v12, 0x20b00000004L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    iget v14, v9, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    invoke-virtual {v1, v6, v7, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v14, v9, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    invoke-virtual {v1, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static print([Landroid/hardware/power/stats/EnergyConsumerResult;)V
    .locals 9

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v0

    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnergyConsumerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Timestamp (ms): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", Energy (uWs): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    iget-object v4, v1, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    aget-object v4, v4, v3

    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  UID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "  Energy (uWs): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static unpackEnergyConsumerAttributionProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyConsumerAttribution;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/hardware/power/stats/EnergyConsumerAttribution;

    invoke-direct {v0}, Landroid/hardware/power/stats/EnergyConsumerAttribution;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    const-wide v1, 0x10300000002L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    goto :goto_2

    :pswitch_2
    const-wide v1, 0x10500000001L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    goto :goto_2

    :pswitch_3
    return-object v0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled field in EnergyConsumerAttributionProto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wire Type mismatch in EnergyConsumerAttributionProto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static unpackEnergyConsumerResultProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/hardware/power/stats/EnergyConsumerResult;

    invoke-direct {v0}, Landroid/hardware/power/stats/EnergyConsumerResult;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    const-wide v2, 0x20b00000004L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    nop

    invoke-static {p0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->unpackEnergyConsumerAttributionProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyConsumerAttribution;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_2

    :pswitch_2
    const-wide v2, 0x10300000003L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    goto :goto_2

    :pswitch_3
    const-wide v2, 0x10300000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/hardware/power/stats/EnergyConsumerResult;->timestampMs:J

    goto :goto_2

    :pswitch_4
    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, v0, Landroid/hardware/power/stats/EnergyConsumerResult;->id:I

    goto :goto_2

    :pswitch_5
    nop

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/power/stats/EnergyConsumerAttribution;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/power/stats/EnergyConsumerAttribution;

    iput-object v2, v0, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    return-object v0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field in EnergyConsumerResultProto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wire Type mismatch in EnergyConsumerResultProto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static unpackProtoMessage([B)[Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    new-instance v3, Landroid/hardware/power/stats/EnergyConsumerResult;

    invoke-direct {v3}, Landroid/hardware/power/stats/EnergyConsumerResult;-><init>()V

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const-wide v4, 0x20b00000002L

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    invoke-static {v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->unpackEnergyConsumerResultProto(Landroid/util/proto/ProtoInputStream;)Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :cond_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    nop

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/hardware/power/stats/EnergyConsumerResult;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/power/stats/EnergyConsumerResult;

    return-object v4

    :cond_1
    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled field in proto: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/android/server/powerstats/ProtoStreamUtils;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wire Type mismatch in proto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0
.end method
