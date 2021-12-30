.class final Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;
.super Landroid/os/AsyncTask;
.source "BatteryChartPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadAllItemsInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/BatteryDiffEntry;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private mBatteryHistoryKeysCache:[J

.field private mBatteryHistoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$s_VQ_1GRqdQwZIocJH0h2XJwGiI(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->lambda$doInBackground$0(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zmvtSNuUD2qha6lVjGJnC1hdHvM(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->lambda$onPostExecute$1(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->this$0:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->mBatteryHistoryMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryHistoryKeys:[J

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->mBatteryHistoryKeysCache:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;Ljava/util/Map;Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;-><init>(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic lambda$doInBackground$0(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->loadLabelAndIcon()V

    return-void
.end method

.method private synthetic lambda$onPostExecute$1(Ljava/util/Map;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->this$0:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mBatteryIndexedMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->access$200(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryDiffEntry;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->this$0:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->mBatteryHistoryKeysCache:[J

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->this$0:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->mBatteryHistoryKeysCache:[J

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->mBatteryHistoryMap:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {p1, v2, v3, p0, v4}, Lcom/android/settings/fuelgauge/ConvertUtils;->getIndexedUsageMap(Landroid/content/Context;I[JLjava/util/Map;Z)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask$$ExternalSyntheticLambda1;

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "execute LoadAllItemsInfoTask in %d/ms"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryChartPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryDiffEntry;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->mBatteryHistoryMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->mBatteryHistoryKeysCache:[J

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;->this$0:Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->access$100(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/BatteryChartPreferenceController$LoadAllItemsInfoTask;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
