.class public final synthetic Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

.field public final synthetic f$1:Lcom/android/server/app/GameSessionRecord;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;Lcom/android/server/app/GameSessionRecord;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/app/GameSessionRecord;

    iput p3, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/app/GameSessionRecord;

    iget p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$$ExternalSyntheticLambda2;->f$2:I

    check-cast p1, Landroid/service/games/CreateGameSessionResult;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->$r8$lambda$T4B-KHB6KrYxVyjX2LYnCUR1IuE(Lcom/android/server/app/GameServiceProviderInstanceImpl;Lcom/android/server/app/GameSessionRecord;ILandroid/service/games/CreateGameSessionResult;Ljava/lang/Throwable;)V

    return-void
.end method
