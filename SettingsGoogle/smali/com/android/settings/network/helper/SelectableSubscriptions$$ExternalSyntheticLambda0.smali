.class public final synthetic Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/helper/SelectableSubscriptions;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/helper/SelectableSubscriptions;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/helper/SelectableSubscriptions;

    iput-object p2, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/helper/SelectableSubscriptions;

    iget-object v1, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/network/helper/SelectableSubscriptions$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/settings/network/helper/SelectableSubscriptions;->$r8$lambda$VLNOC5FvGDfBbWjG-8emojCDH7s(Lcom/android/settings/network/helper/SelectableSubscriptions;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/settings/network/helper/SubscriptionAnnotation$Builder;)Lcom/android/settings/network/helper/SubscriptionAnnotation;

    move-result-object p0

    return-object p0
.end method
