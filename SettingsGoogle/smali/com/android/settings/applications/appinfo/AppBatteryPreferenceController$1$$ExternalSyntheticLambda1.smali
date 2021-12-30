.class public final synthetic Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    invoke-static {p0, p1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->$r8$lambda$Xpso9UW2yDeeT7tfunYvUx1TTNw(Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z

    move-result p0

    return p0
.end method
