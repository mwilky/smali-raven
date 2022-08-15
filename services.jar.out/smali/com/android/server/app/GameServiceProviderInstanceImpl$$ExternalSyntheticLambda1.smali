.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/infra/AndroidFuture;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->$r8$lambda$s5SrBxOmhhqLVW6ngDfDXnbDhbQ(Lcom/android/internal/infra/AndroidFuture;Landroid/net/Uri;)V

    return-void
.end method
