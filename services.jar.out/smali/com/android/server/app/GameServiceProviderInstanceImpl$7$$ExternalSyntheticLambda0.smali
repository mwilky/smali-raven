.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    iput p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl$7;

    iget v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$7$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/infra/AndroidFuture;

    invoke-static {v0, v1, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$7;->$r8$lambda$yP0QU_1eJ27OcSqU4xYIg6E1be0(Lcom/android/server/app/GameServiceProviderInstanceImpl$7;ILcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
