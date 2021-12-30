.class public final synthetic Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkSummaryStatus;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkSummaryStatus;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    iput-object p2, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda2;->f$0:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryStatus$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->$r8$lambda$mpk5MOtCA4ckdKmPLglpaph7laQ(Lcom/android/settings/network/MobileNetworkSummaryStatus;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
