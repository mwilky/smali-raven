.class public final synthetic Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda10;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda10;-><init>()V

    sput-object v0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda10;

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

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {p1}, Lcom/android/settings/network/NetworkProviderSettings;->$r8$lambda$HAz_ukqsaPJxqQDPtGH5CUEuGHI(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method
