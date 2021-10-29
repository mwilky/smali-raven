.class final Lcom/android/server/stats/pull/SettingsStatsUtil;
.super Ljava/lang/Object;
.source "SettingsStatsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    }
.end annotation


# static fields
.field private static final GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field private static final SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field private static final SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field private static final TAG:Ljava/lang/String; = "SettingsStatsUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "GlobalFeature__boolean_whitelist"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "GlobalFeature__integer_whitelist"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "GlobalFeature__float_whitelist"

    const/4 v7, 0x3

    invoke-direct {v2, v5, v7}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "GlobalFeature__string_whitelist"

    invoke-direct {v2, v5, v0}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v7

    sput-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    new-array v1, v0, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "SecureFeature__boolean_whitelist"

    invoke-direct {v2, v5, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "SecureFeature__integer_whitelist"

    invoke-direct {v2, v5, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "SecureFeature__float_whitelist"

    invoke-direct {v2, v5, v7}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "SecureFeature__string_whitelist"

    invoke-direct {v2, v5, v0}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v7

    sput-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    new-array v1, v0, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "SystemFeature__boolean_whitelist"

    invoke-direct {v2, v5, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "SystemFeature__integer_whitelist"

    invoke-direct {v2, v3, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "SystemFeature__float_whitelist"

    invoke-direct {v2, v3, v7}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "SystemFeature__string_whitelist"

    invoke-direct {v2, v3, v0}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v7

    sput-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;
    .locals 9

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/16 :goto_1

    :cond_0
    const-string v5, "Can not parse value to float: "

    const-string v6, "SettingsStatsUtil"

    packed-switch p4, :pswitch_data_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected value type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    move-object v4, p2

    goto :goto_0

    :pswitch_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    goto :goto_0

    :catch_0
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v5

    goto :goto_0

    :catch_1
    move-exception v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v5, "1"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    :goto_0
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    :goto_1
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v5

    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;
    .locals 6

    const-string v0, "settings_stats"

    invoke-static {v0, p0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/service/nano/StringListParamProto;->parseFrom([B)Lcom/android/service/nano/StringListParamProto;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "SettingsStatsUtil"

    const-string v5, "Error parsing string list proto"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v2
.end method

.method static logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/stats/pull/SettingsStatsUtil;->GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    iget-object v8, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v8

    if-nez v8, :cond_0

    move/from16 v15, p1

    goto :goto_2

    :cond_0
    iget-object v9, v8, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v10, v9

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    invoke-static {v2, v12, v0}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    iget v14, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    move/from16 v15, p1

    invoke-static {v15, v12, v13, v0, v14}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move/from16 v15, p1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move/from16 v15, p1

    return-object v1
.end method

.method static logSecureSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/stats/pull/SettingsStatsUtil;->SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    iget-object v8, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v8

    if-nez v8, :cond_0

    move/from16 v15, p1

    goto :goto_2

    :cond_0
    iget-object v9, v8, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v10, v9

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    invoke-static {v2, v12, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    iget v14, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    move/from16 v15, p1

    invoke-static {v15, v12, v13, v0, v14}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move/from16 v15, p1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move/from16 v15, p1

    return-object v1
.end method

.method static logSystemSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/stats/pull/SettingsStatsUtil;->SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    iget-object v8, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v8

    if-nez v8, :cond_0

    move/from16 v15, p1

    goto :goto_2

    :cond_0
    iget-object v9, v8, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v10, v9

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    invoke-static {v2, v12, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    iget v14, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    move/from16 v15, p1

    invoke-static {v15, v12, v13, v0, v14}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move/from16 v15, p1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move/from16 v15, p1

    return-object v1
.end method
