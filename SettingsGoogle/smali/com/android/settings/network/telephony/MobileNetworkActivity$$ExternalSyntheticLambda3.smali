.class public final synthetic Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda3;->f$0:I

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->$r8$lambda$W7hwS8TCif1sko7YQFgu-zAvebY(ILcom/android/settings/network/helper/SubscriptionAnnotation;)Z

    move-result p0

    return p0
.end method
