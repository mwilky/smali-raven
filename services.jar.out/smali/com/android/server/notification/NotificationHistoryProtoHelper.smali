.class final Lcom/android/server/notification/NotificationHistoryProtoHelper;
.super Ljava/lang/Object;
.source "NotificationHistoryProtoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotifHistoryProto"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static loadIcon(Landroid/util/proto/ProtoInputStream;Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    const-wide v8, 0x10900000008L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    :pswitch_2
    const-wide v8, 0x10500000007L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    goto/16 :goto_3

    :pswitch_3
    const-wide v8, 0x10500000006L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    goto/16 :goto_3

    :pswitch_4
    const-wide v8, 0x10c00000005L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v4

    goto :goto_3

    :pswitch_5
    const-wide v8, 0x10900000004L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :pswitch_6
    const-wide v8, 0x10500000003L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    goto :goto_3

    :pswitch_7
    const-wide v8, 0x10900000002L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_8
    const-wide v8, 0x10e00000001L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    goto :goto_3

    :pswitch_9
    const/4 v8, 0x3

    if-ne v0, v8, :cond_0

    if-eqz v4, :cond_4

    invoke-static {v4, v6, v5}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_2

    :cond_0
    const/4 v8, 0x2

    if-ne v0, v8, :cond_2

    if-eqz v2, :cond_4

    nop

    if-eqz v3, :cond_1

    move-object v8, v3

    goto :goto_1

    :cond_1
    move-object v8, p2

    :goto_1
    invoke-static {v8, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_2

    :cond_2
    const/4 v8, 0x4

    if-ne v0, v8, :cond_3

    if-eqz v7, :cond_4

    invoke-static {v7}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_2

    :cond_3
    nop

    :cond_4
    :goto_2
    return-void

    :goto_3
    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static read(Ljava/io/InputStream;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V

    goto :goto_2

    :pswitch_2
    invoke-static {v0}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    :pswitch_3
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationHistoryFilter;->isFiltering()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->poolStringsFromNotifications()V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/app/NotificationHistory;->addPooledStrings(Ljava/util/List;)V

    :goto_1
    return-void

    :goto_2
    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/NotificationHistory$HistoricalNotification;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/NotificationHistory$HistoricalNotification;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-direct {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const-wide v2, 0x1050000000eL

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_1

    :pswitch_2
    const-wide v2, 0x1090000000dL

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_3
    const-wide v2, 0x10b0000000cL

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v2

    invoke-static {p0, v0, v1}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->loadIcon(Landroid/util/proto/ProtoInputStream;Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto/16 :goto_1

    :pswitch_4
    const-wide v2, 0x1090000000bL

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_1

    :pswitch_5
    const-wide v2, 0x1090000000aL

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_1

    :pswitch_6
    const-wide v2, 0x10300000009L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_1

    :pswitch_7
    const-wide v2, 0x10500000008L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_1

    :pswitch_8
    const-wide v2, 0x10500000007L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto/16 :goto_1

    :pswitch_9
    const-wide v2, 0x10500000006L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1

    :pswitch_a
    const-wide v2, 0x10900000005L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_b
    const-wide v2, 0x10500000004L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1

    :pswitch_c
    const-wide v2, 0x10900000003L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_d
    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    goto :goto_1

    :pswitch_e
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_f
    invoke-virtual {v0}, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->build()Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v2

    return-object v2

    :goto_1
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;Landroid/app/NotificationHistory;Lcom/android/server/notification/NotificationHistoryFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/NotificationHistory;",
            "Lcom/android/server/notification/NotificationHistoryFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x20b00000003L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->readNotification(Landroid/util/proto/ProtoInputStream;Ljava/util/List;)Landroid/app/NotificationHistory$HistoricalNotification;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/server/notification/NotificationHistoryFilter;->matchesPackageAndChannelFilter(Landroid/app/NotificationHistory$HistoricalNotification;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3, p2}, Lcom/android/server/notification/NotificationHistoryFilter;->matchesCountFilter(Landroid/app/NotificationHistory;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Landroid/app/NotificationHistory;->addNotificationToWrite(Landroid/app/NotificationHistory$HistoricalNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "NotifHistoryProto"

    const-string v4, "Error reading notification"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    throw v2
.end method

.method private static readStringPool(Landroid/util/proto/ProtoInputStream;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x10b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->nextField(J)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-wide v3, 0x20900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static write(Ljava/io/OutputStream;Landroid/app/NotificationHistory;I)V
    .locals 6

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v1, 0x10500000002L

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->writeStringPool(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory;)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-static {v0, v4, v5}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->writeNotification(Landroid/util/proto/ProtoOutputStream;[Ljava/lang/String;Landroid/app/NotificationHistory$HistoricalNotification;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method private static writeIcon(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 5

    const-wide v0, 0x10b0000000cL

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    const-wide v3, 0x10e00000001L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-wide v2, 0x10900000008L

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-wide v2, 0x10c00000005L

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    const-wide v2, 0x10500000006L

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000007L

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :pswitch_2
    const-wide v2, 0x10500000003L

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide v2, 0x10900000004L

    invoke-virtual {p1}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static writeNotification(Landroid/util/proto/ProtoOutputStream;[Ljava/lang/String;Landroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 10

    const-wide v0, 0x20b00000003L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const-string v3, ") not found in string cache"

    const-string v4, "NotifHistoryProto"

    if-ltz v2, :cond_0

    const-wide v5, 0x10500000002L

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notification package name ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v5, 0x10900000001L

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    const-wide v6, 0x10500000004L

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notification channel name ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v6, 0x10900000003L

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_2

    const-wide v7, 0x10500000006L

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notification channel id ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v7, 0x10900000005L

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    nop

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_3

    const-wide v3, 0x1050000000eL

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_3

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "notification conversation id ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v3, 0x1090000000dL

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v3, v4, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_4
    :goto_3
    const-wide v3, 0x10500000007L

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v7

    invoke-virtual {p0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000008L

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v7

    invoke-virtual {p0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000009L

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v7

    invoke-virtual {p0, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1090000000aL

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x1090000000bL

    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-static {p0, p2}, Lcom/android/server/notification/NotificationHistoryProtoHelper;->writeIcon(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory$HistoricalNotification;)V

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private static writeStringPool(Landroid/util/proto/ProtoOutputStream;Landroid/app/NotificationHistory;)V
    .locals 7

    const-wide v0, 0x10b00000001L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getPooledStringsToWrite()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const-wide v4, 0x10500000001L

    invoke-virtual {p0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    const-wide v4, 0x20900000002L

    aget-object v6, v2, v3

    invoke-virtual {p0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
