.class public final synthetic Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionApplicationController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/CompanionApplicationController;

    iput p2, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/CompanionApplicationController;

    iget v1, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;->f$1:I

    iget-object p0, p0, Lcom/android/server/companion/CompanionApplicationController$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/companion/CompanionApplicationController;->$r8$lambda$5Q6vCBSeImiLSwPvsTljfuvuzqs(Lcom/android/server/companion/CompanionApplicationController;ILjava/lang/String;)V

    return-void
.end method
