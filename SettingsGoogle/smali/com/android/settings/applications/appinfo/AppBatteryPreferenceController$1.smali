.class Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "AppBatteryPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->loadBatteryDiffEntries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/fuelgauge/BatteryDiffEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$Irh8BPbJre0rRV-MYbo9nPGGtmQ(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->lambda$doInBackground$2(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Xpso9UW2yDeeT7tfunYvUx1TTNw(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->lambda$doInBackground$1(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$e9vXpOynZ-GGKiN12-xU7z0jau4(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->lambda$doInBackground$0(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static synthetic lambda$doInBackground$0(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget p0, p0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mConsumerType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$doInBackground$1(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z
    .locals 2

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-wide v0, p1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)I

    move-result p0

    int-to-long p0, p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$doInBackground$2(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-static {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Return target application: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | uid: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUid:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " | userId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/BatteryHistEntry;

    iget-wide v0, p1, Lcom/android/settings/fuelgauge/BatteryHistEntry;->mUserId:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppBatteryPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/fuelgauge/BatteryDiffEntry;
    .locals 2

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryChartPreferenceController;->getBatteryLast24HrUsageData(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda2;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->this$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->mBatteryDiffEntry:Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;->updateBatteryWithDiffEntry()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->onPostExecute(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)V

    return-void
.end method
