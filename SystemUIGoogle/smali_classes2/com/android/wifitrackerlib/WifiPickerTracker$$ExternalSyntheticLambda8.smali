.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->$r8$lambda$UXt2wOgzUFyniBkMSfQhH5eiOmg(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
