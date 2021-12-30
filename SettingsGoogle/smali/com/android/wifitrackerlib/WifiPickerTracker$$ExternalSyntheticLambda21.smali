.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda21;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda21;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda21;->INSTANCE:Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda21;

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

    check-cast p1, Lcom/android/wifitrackerlib/PasspointWifiEntry;

    invoke-static {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->$r8$lambda$7JDItQwoVFktbGWUOw8XJl0WZks(Lcom/android/wifitrackerlib/PasspointWifiEntry;)Z

    move-result p0

    return p0
.end method
