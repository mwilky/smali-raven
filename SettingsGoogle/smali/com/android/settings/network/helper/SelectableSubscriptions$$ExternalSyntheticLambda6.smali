.class public final synthetic Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda6;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda6;

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

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    invoke-static {p1}, Lcom/android/settings/network/helper/SelectableSubscriptions;->$r8$lambda$G0yk5nbFvHFFWNkHnBVKMq3kYgs(Lcom/android/settings/network/helper/SubscriptionAnnotation;)Z

    move-result p0

    return p0
.end method
