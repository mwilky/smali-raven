.class public Lcom/android/systemui/assist/DeviceConfigHelper;
.super Ljava/lang/Object;
.source "DeviceConfigHelper.java"


# direct methods
.method public static synthetic $r8$lambda$TrTHK9UGFwR20J2G2zxOQhBIBt0(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/assist/DeviceConfigHelper;->lambda$getLong$0(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$getLong$0(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 1

    const-string/jumbo v0, "systemui"

    invoke-static {v0, p0, p1, p2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLong(Ljava/lang/String;J)J
    .locals 0

    new-instance p0, Lcom/android/systemui/assist/DeviceConfigHelper$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/assist/DeviceConfigHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;J)V

    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method
