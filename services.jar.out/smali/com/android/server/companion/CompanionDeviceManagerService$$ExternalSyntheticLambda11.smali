.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda11;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda11;-><init>()V

    sput-object v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda11;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->maybeGrantAutoRevokeExemptions()V

    return-void
.end method
