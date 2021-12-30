.class public final synthetic Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/network/telephony/MobileNetworkActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->$r8$lambda$20iDSZn3Oag1wFfBYq1NwjswfUk(Lcom/android/settings/network/telephony/MobileNetworkActivity;Ljava/util/List;)Lcom/android/settings/network/helper/SubscriptionAnnotation;

    move-result-object p0

    return-object p0
.end method
