.class public Lcom/android/settings/fuelgauge/BatteryHistEntry;
.super Ljava/lang/Object;
.source "BatteryHistEntry.java"


# instance fields
.field public final mAppLabel:Ljava/lang/String;

.field public final mBackgroundUsageTimeInMs:J

.field public final mBatteryHealth:I

.field public final mBatteryLevel:I

.field public final mBatteryStatus:I

.field public final mBootTimestamp:J

.field public final mConsumePower:D

.field public final mConsumerType:I

.field public final mDrainType:I

.field public final mForegroundUsageTimeInMs:J

.field public final mIsHidden:Z

.field private mIsValidEntry:Z

.field private mKey:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPercentOfTotal:D

.field public final mTimestamp:J

.field public final mTotalPower:D

.field public final mUid:J

.field public final mUserId:J

.field public final mZoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    const-string v0, "uid"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    const-string v0, "userId"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    const-string v0, "appLabel"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getString(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getString(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    const-string v0, "isHidden"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsHidden:Z

    const-string v0, "bootTimestamp"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBootTimestamp:J

    const-string v0, "timestamp"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTimestamp:J

    const-string v0, "zoneId"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getString(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mZoneId:Ljava/lang/String;

    const-string v0, "totalPower"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getDouble(Landroid/content/ContentValues;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTotalPower:D

    const-string v0, "consumePower"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getDouble(Landroid/content/ContentValues;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumePower:D

    const-string v0, "percentOfTotal"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getDouble(Landroid/content/ContentValues;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPercentOfTotal:D

    const-string v0, "foregroundUsageTimeInMs"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    const-string v0, "backgroundUsageTimeInMs"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    const-string v0, "drainType"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mDrainType:I

    const-string v0, "consumerType"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const-string v0, "batteryLevel"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryLevel:I

    const-string v0, "batteryStatus"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryStatus:I

    const-string v0, "batteryHealth"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryHealth:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    const-string v0, "uid"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    const-string v0, "userId"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    const-string v0, "appLabel"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    const-string v0, "packageName"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    const-string v0, "isHidden"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsHidden:Z

    const-string v0, "bootTimestamp"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBootTimestamp:J

    const-string v0, "timestamp"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTimestamp:J

    const-string v0, "zoneId"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mZoneId:Ljava/lang/String;

    const-string v0, "totalPower"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getDouble(Landroid/database/Cursor;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTotalPower:D

    const-string v0, "consumePower"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getDouble(Landroid/database/Cursor;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumePower:D

    const-string v0, "percentOfTotal"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getDouble(Landroid/database/Cursor;Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPercentOfTotal:D

    const-string v0, "foregroundUsageTimeInMs"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    const-string v0, "backgroundUsageTimeInMs"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    const-string v0, "drainType"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mDrainType:I

    const-string v0, "consumerType"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const-string v0, "batteryLevel"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryLevel:I

    const-string v0, "batteryStatus"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryStatus:I

    const-string v0, "batteryHealth"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->getInteger(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryHealth:I

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/fuelgauge/BatteryHistEntry;JJDDJJI)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    iget-object v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    iget-boolean v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsHidden:Z

    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsHidden:Z

    move-wide v2, p2

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBootTimestamp:J

    move-wide v2, p4

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTimestamp:J

    iget-object v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mZoneId:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mZoneId:Ljava/lang/String;

    move-wide v2, p6

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTotalPower:D

    move-wide v2, p8

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumePower:D

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPercentOfTotal:D

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPercentOfTotal:D

    move-wide v2, p10

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-wide/from16 v2, p12

    iput-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    iget v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mDrainType:I

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mDrainType:I

    iget v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    move/from16 v2, p14

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryLevel:I

    iget v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryStatus:I

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryStatus:I

    iget v1, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryHealth:I

    iput v1, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryHealth:I

    return-void
.end method

.method private getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    return p1
.end method

.method private getBoolean(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    return v0
.end method

.method private getDouble(Landroid/content/ContentValues;Ljava/lang/String;)D
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private getDouble(Landroid/database/Cursor;Ljava/lang/String;)D
    .locals 0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private getInteger(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    return p1
.end method

.method private getInteger(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    return p1
.end method

.method private getLong(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private getString(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsValidEntry:Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private static interpolate(DDD)D
    .locals 0

    sub-double/2addr p2, p0

    mul-double/2addr p4, p2

    add-double/2addr p0, p4

    return-wide p0
.end method

.method public static interpolate(JJDLcom/android/settings/fuelgauge/BatteryHistEntry;Lcom/android/settings/fuelgauge/BatteryHistEntry;)Lcom/android/settings/fuelgauge/BatteryHistEntry;
    .locals 20

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    move-wide v6, v2

    goto :goto_0

    :cond_0
    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTotalPower:D

    move-wide v6, v4

    :goto_0
    iget-wide v8, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTotalPower:D

    move-wide/from16 v10, p4

    invoke-static/range {v6 .. v11}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v6

    if-nez v0, :cond_1

    move-wide v8, v2

    goto :goto_1

    :cond_1
    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumePower:D

    move-wide v8, v4

    :goto_1
    iget-wide v10, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumePower:D

    move-wide/from16 v12, p4

    invoke-static/range {v8 .. v13}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v8

    if-nez v0, :cond_2

    move-wide v10, v2

    goto :goto_2

    :cond_2
    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    long-to-double v4, v4

    move-wide v10, v4

    :goto_2
    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    long-to-double v12, v4

    move-wide/from16 v14, p4

    invoke-static/range {v10 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v4

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    long-to-double v2, v2

    :goto_3
    move-wide v10, v2

    iget-wide v2, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    long-to-double v12, v2

    move-wide/from16 v14, p4

    invoke-static/range {v10 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v2

    iget-wide v10, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumePower:D

    cmpg-double v10, v10, v8

    if-nez v0, :cond_4

    iget v0, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryLevel:I

    int-to-double v10, v0

    goto :goto_4

    :cond_4
    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryLevel:I

    int-to-double v10, v0

    iget v0, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryLevel:I

    int-to-double v12, v0

    move-wide/from16 v14, p4

    invoke-static/range {v10 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistEntry;->interpolate(DDD)D

    move-result-wide v10

    :goto_4
    new-instance v15, Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-wide v12, v1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBootTimestamp:J

    sub-long v16, p2, p0

    sub-long v12, v12, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v14, v2

    move-object v0, v15

    move-object/from16 v1, p7

    move-wide v2, v12

    move-wide/from16 v4, p0

    move-wide/from16 v10, v16

    move-wide/from16 v12, v18

    invoke-direct/range {v0 .. v14}, Lcom/android/settings/fuelgauge/BatteryHistEntry;-><init>(Lcom/android/settings/fuelgauge/BatteryHistEntry;JJDDJJI)V

    return-object v15
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mDrainType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "U|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAppEntry()Z
    .locals 1

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserEntry()Z
    .locals 1

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTimestamp:J

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/android/settings/fuelgauge/ConvertUtils;->utcToLocalTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nBatteryHistEntry{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mAppLabel:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-wide v7, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    iget-boolean v4, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mIsHidden:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const-string v4, "\n\tpackage=%s|label=%s|uid=%d|userId=%d|isHidden=%b"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mZoneId:Ljava/lang/String;

    aput-object v0, v3, v6

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBootTimestamp:J

    invoke-static {v10, v11}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v7

    const-string v0, "\n\ttimestamp=%s|zoneId=%s|bootTimestamp=%d"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v2, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPercentOfTotal:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v5

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mTotalPower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v6

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumePower:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v7

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v8

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v9

    const-string v2, "\n\tusage=%f|total=%f|consume=%f|elapsedTime=%d|%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v7, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mDrainType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    const-string v2, "\n\tdrainType=%d|consumerType=%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v8, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mBatteryHealth:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v7

    const-string p0, "\n\tbattery=%d|status=%d|health=%d\n}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
