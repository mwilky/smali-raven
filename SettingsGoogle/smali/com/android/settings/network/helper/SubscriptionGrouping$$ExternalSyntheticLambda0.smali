.class public final synthetic Lcom/android/settings/network/helper/SubscriptionGrouping$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/helper/SubscriptionGrouping$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/helper/SubscriptionGrouping$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/network/helper/SubscriptionGrouping$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/settings/network/helper/SubscriptionGrouping$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/network/helper/SubscriptionGrouping$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    check-cast p2, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    invoke-static {p1, p2}, Lcom/android/settings/network/helper/SubscriptionGrouping;->$r8$lambda$WWlkLmX_EjWp3y_EIdZcffuH2Rc(Lcom/android/settings/network/helper/SubscriptionAnnotation;Lcom/android/settings/network/helper/SubscriptionAnnotation;)I

    move-result p0

    return p0
.end method
