.class public final synthetic Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/MacAddress;

    invoke-static {p1}, Lcom/android/server/companion/AssociationStoreImpl;->$r8$lambda$lhH2zu2l1ooMBjfInX0nunjWyhU(Landroid/net/MacAddress;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
