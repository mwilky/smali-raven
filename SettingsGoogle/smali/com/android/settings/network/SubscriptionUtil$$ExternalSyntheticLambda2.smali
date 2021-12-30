.class public final synthetic Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda2;->f$0:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/settings/network/SubscriptionUtil$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    check-cast p1, Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;

    invoke-static {v0, p0, p1}, Lcom/android/settings/network/SubscriptionUtil;->$r8$lambda$E0UGhSa4weEC3imZpd7SetzczSs(Ljava/util/Set;Landroid/content/Context;Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;)Lcom/android/settings/network/SubscriptionUtil$1DisplayInfo;

    move-result-object p0

    return-object p0
.end method
