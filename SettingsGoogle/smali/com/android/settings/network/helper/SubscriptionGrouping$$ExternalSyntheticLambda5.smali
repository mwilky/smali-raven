.class public final synthetic Lcom/android/settings/network/helper/SubscriptionGrouping$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/helper/SubscriptionGrouping$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/helper/SubscriptionGrouping$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/settings/network/helper/SubscriptionGrouping$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/settings/network/helper/SubscriptionGrouping$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/settings/network/helper/SubscriptionGrouping$$ExternalSyntheticLambda5;

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

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    invoke-static {p1}, Lcom/android/settings/network/helper/SubscriptionGrouping;->$r8$lambda$OPIL3uy8pQ_nENFUfaTkF2tKjOk(Lcom/android/settings/network/helper/SubscriptionAnnotation;)I

    move-result p0

    return p0
.end method
