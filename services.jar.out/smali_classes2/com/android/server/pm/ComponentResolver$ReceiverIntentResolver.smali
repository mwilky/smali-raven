.class final Lcom/android/server/pm/ComponentResolver$ReceiverIntentResolver;
.super Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiverIntentResolver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/ComponentResolver$ReceiverIntentResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)V

    return-void
.end method


# virtual methods
.method protected getResolveList(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
