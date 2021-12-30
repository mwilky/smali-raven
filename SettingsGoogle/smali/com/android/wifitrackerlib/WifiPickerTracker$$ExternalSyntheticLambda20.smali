.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;->INSTANCE:Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda20;

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

    check-cast p1, Lcom/android/wifitrackerlib/OsuWifiEntry;

    invoke-static {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->$r8$lambda$4MPY65qXxw5C8RqKk_JeACEdIeI(Lcom/android/wifitrackerlib/OsuWifiEntry;)Z

    move-result p0

    return p0
.end method
