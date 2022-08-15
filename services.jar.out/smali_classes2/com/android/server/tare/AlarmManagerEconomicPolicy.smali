.class public Lcom/android/server/tare/AlarmManagerEconomicPolicy;
.super Lcom/android/server/tare/EconomicPolicy;
.source "AlarmManagerEconomicPolicy.java"


# static fields
.field public static final COST_MODIFIERS:[I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tare/EconomicPolicy$Action;",
            ">;"
        }
    .end annotation
.end field

.field public mHardSatiatedConsumptionLimit:J

.field public mInitialSatiatedConsumptionLimit:J

.field public final mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

.field public mMaxSatiatedBalance:J

.field public mMinSatiatedBalanceExempted:J

.field public mMinSatiatedBalanceOther:J

.field public final mParser:Landroid/util/KeyValueListParser;

.field public final mRewards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tare/EconomicPolicy$Reward;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/AlarmManagerEconomicPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->COST_MODIFIERS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/tare/EconomicPolicy;-><init>(Lcom/android/server/tare/InternalResourceService;)V

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    const-string p1, ""

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    const-string v0, "Min satiated balances:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exempted"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceOther:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Other"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedBalance:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Max satiated balance"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Consumption limits: ["

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    invoke-static {v0, v1}, Lcom/android/server/tare/TareUtils;->cakeToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "]"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Actions:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomicPolicy$Action;

    invoke-static {p1, v2}, Lcom/android/server/tare/EconomicPolicy;->dumpAction(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Action;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v1, "Rewards:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_1
    iget-object v1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomicPolicy$Reward;

    invoke-static {p1, v1}, Lcom/android/server/tare/EconomicPolicy;->dumpReward(Landroid/util/IndentingPrintWriter;Lcom/android/server/tare/EconomicPolicy$Reward;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Action;

    return-object p0
.end method

.method public getCostModifiers()[I
    .locals 0

    sget-object p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->COST_MODIFIERS:[I

    return-object p0
.end method

.method public getInitialSatiatedConsumptionLimit()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public getMaxSatiatedBalance()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedBalance:J

    return-wide v0
.end method

.method public getMinSatiatedBalance(ILjava/lang/String;)J
    .locals 1

    iget-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tare/InternalResourceService;->isPackageExempted(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    return-wide p0

    :cond_0
    iget-wide p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceOther:J

    return-wide p0
.end method

.method public getReward(I)Lcom/android/server/tare/EconomicPolicy$Reward;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tare/EconomicPolicy$Reward;

    return-object p0
.end method

.method public final loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V
    .locals 17

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :try_start_0
    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Global setting key incorrect: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_SATIATED_BALANCE_EXEMPTED_CAKES:J

    const-string v4, "am_min_satiated_balance_exempted"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceExempted:J

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MIN_SATIATED_BALANCE_OTHER_APP_CAKES:J

    const-string v4, "am_min_satiated_balance_other_app"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMinSatiatedBalanceOther:J

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_MAX_SATIATED_BALANCE_CAKES:J

    const-string v4, "am_max_satiated_balance"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mMaxSatiatedBalance:J

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_INITIAL_CONSUMPTION_LIMIT_CAKES:J

    const-string v4, "am_initial_consumption_limit"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInitialSatiatedConsumptionLimit:J

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_HARD_CONSUMPTION_LIMIT_CAKES:J

    const-string v4, "am_hard_consumption_limit"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mHardSatiatedConsumptionLimit:J

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_exact_wakeup_base_price"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const/high16 v14, 0x40000000    # 2.0f

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Action;

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_WAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_exact_wakeup_ctp"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    move-object v8, v15

    invoke-direct/range {v8 .. v13}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x40000001    # 2.0000002f

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000001    # 2.0000002f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_exact_wakeup_ctp"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_WAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_exact_wakeup_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_WAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_inexact_wakeup_base_price"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v14, 0x40000002    # 2.0000005f

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Action;

    const v9, 0x40000002    # 2.0000005f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_WAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_inexact_wakeup_ctp"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    move-object v8, v15

    invoke-direct/range {v8 .. v13}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x40000003    # 2.0000007f

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000003    # 2.0000007f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_WAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_inexact_wakeup_ctp"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_WAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_inexact_wakeup_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_exact_nonwakeup_base_price"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v14, 0x40000004    # 2.000001f

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Action;

    const v9, 0x40000004    # 2.000001f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_EXACT_NONWAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_exact_nonwakeup_ctp"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    move-object v8, v15

    invoke-direct/range {v8 .. v13}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    invoke-virtual {v0, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x40000005    # 2.0000012f

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000005    # 2.0000012f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_NONWAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_exact_nonwakeup_ctp"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_EXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_exact_nonwakeup_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_inexact_nonwakeup_base_price"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v12

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALLOW_WHILE_IDLE_INEXACT_NONWAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_allow_while_idle_inexact_nonwakeup_ctp"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v10

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v1, 0x40000006    # 2.0000014f

    new-instance v2, Lcom/android/server/tare/EconomicPolicy$Action;

    const v9, 0x40000006    # 2.0000014f

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x40000007    # 2.0000017f

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000007    # 2.0000017f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_NONWAKEUP_CTP_CAKES:J

    const-string v4, "am_action_alarm_inexact_nonwakeup_ctp"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_INEXACT_NONWAKEUP_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_inexact_nonwakeup_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mActions:Landroid/util/SparseArray;

    const v8, 0x40000008    # 2.000002f

    new-instance v9, Lcom/android/server/tare/EconomicPolicy$Action;

    const v10, 0x40000008    # 2.000002f

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALARMCLOCK_CTP_CAKES:J

    const-string v4, "am_action_alarm_alarmclock_ctp"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_ACTION_ALARM_ALARMCLOCK_BASE_PRICE_CAKES:J

    const-string v4, "am_action_alarm_alarmclock_base_price"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v5

    move-object v1, v9

    move v2, v10

    move-wide v3, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy$Action;-><init>(IJJ)V

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v8, -0x7ffffffe

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v10, -0x7ffffffe

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_TOP_ACTIVITY_INSTANT_CAKES:J

    const-string v4, "am_reward_top_activity_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-wide/32 v5, 0x989680

    const-string v4, "am_reward_top_activity_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_TOP_ACTIVITY_MAX_CAKES:J

    const-string v4, "am_reward_top_activity_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const/high16 v8, -0x80000000

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const/high16 v10, -0x80000000

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_INSTANT_CAKES:J

    const-string v4, "am_reward_notification_seen_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_ONGOING_CAKES:J

    const-string v4, "am_reward_notification_seen_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_SEEN_MAX_CAKES:J

    const-string v4, "am_reward_notification_seen_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v8, -0x7fffffff

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v10, -0x7fffffff

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_INSTANT_CAKES:J

    const-string v4, "am_reward_notification_interaction_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_ONGOING_CAKES:J

    const-string v4, "am_reward_notification_interaction_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_NOTIFICATION_INTERACTION_MAX_CAKES:J

    const-string v4, "am_reward_notification_interaction_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v8, -0x7ffffffd

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v10, -0x7ffffffd

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_INSTANT_CAKES:J

    const-string v4, "am_reward_widget_interaction_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_ONGOING_CAKES:J

    const-string v4, "am_reward_widget_interaction_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_WIDGET_INTERACTION_MAX_CAKES:J

    const-string v4, "am_reward_widget_interaction_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mRewards:Landroid/util/SparseArray;

    const v8, -0x7ffffffc

    new-instance v15, Lcom/android/server/tare/EconomicPolicy$Reward;

    const v10, -0x7ffffffc

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_INSTANT_CAKES:J

    const-string v4, "am_reward_other_user_interaction_instant"

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v11

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_ONGOING_CAKES:J

    const-string v4, "am_reward_other_user_interaction_ongoing"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v2, v7, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mParser:Landroid/util/KeyValueListParser;

    sget-wide v5, Landroid/app/tare/EconomyManager;->DEFAULT_AM_REWARD_OTHER_USER_INTERACTION_MAX_CAKES:J

    const-string v4, "am_reward_other_user_interaction_max"

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/tare/EconomicPolicy;->getConstantAsCake(Landroid/util/KeyValueListParser;Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;J)J

    move-result-wide v1

    move-object v9, v15

    move-object v3, v15

    move-wide v15, v1

    invoke-direct/range {v9 .. v16}, Lcom/android/server/tare/EconomicPolicy$Reward;-><init>(IJJJ)V

    invoke-virtual {v0, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setup(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/tare/EconomicPolicy;->setup(Landroid/provider/DeviceConfig$Properties;)V

    iget-object v0, p0, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->mInternalResourceService:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tare_alarm_manager_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/tare/AlarmManagerEconomicPolicy;->loadConstants(Ljava/lang/String;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
