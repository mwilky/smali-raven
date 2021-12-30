.class public final synthetic Lcom/android/settings/wifi/calling/WifiCallingSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/wifi/calling/WifiCallingSettings$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettings$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/calling/WifiCallingSettings$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/settings/wifi/calling/WifiCallingSettings$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {p1}, Lcom/android/settings/wifi/calling/WifiCallingSettings;->$r8$lambda$Jz1Zi46auzwunNmzJCztVQG29zc(Landroid/telephony/SubscriptionInfo;)I

    move-result p0

    return p0
.end method
