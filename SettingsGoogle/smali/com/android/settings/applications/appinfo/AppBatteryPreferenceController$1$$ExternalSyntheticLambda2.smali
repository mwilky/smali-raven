.class public final synthetic Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryDiffEntry;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController$1;->$r8$lambda$e9vXpOynZ-GGKiN12-xU7z0jau4(Lcom/android/settings/fuelgauge/BatteryDiffEntry;)Z

    move-result p0

    return p0
.end method
