.class public final synthetic Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/ProxySubscriptionManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/ProxySubscriptionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/ProxySubscriptionManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/ProxySubscriptionManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/network/ProxySubscriptionManager;

    check-cast p1, Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;

    invoke-static {p0, p1}, Lcom/android/settings/network/ProxySubscriptionManager;->$r8$lambda$1mEVhIdSVT8fIXoY_5NpeUWCPqg(Lcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/ProxySubscriptionManager$OnActiveSubscriptionChangedListener;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
