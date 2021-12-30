.class public final synthetic Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda2;

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

    check-cast p1, Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    invoke-static {p1}, Lcom/android/settings/network/ProxySubscriptionManager;->$r8$lambda$nnEvpUdiktWQDoeyv0f2cKZihVY(Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)V

    return-void
.end method
