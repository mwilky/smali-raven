.class public final synthetic Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/SubscriptionInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSettings$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/SubscriptionInfo;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->$r8$lambda$Uo0SJudzFnocZFcYN2idJ4RZ7P4(Landroid/telephony/SubscriptionInfo;Landroid/app/Activity;)V

    return-void
.end method
