.class public final synthetic Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

.field public final synthetic f$1:Ljava/util/UUID;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/verify/domain/DomainVerificationService;Ljava/util/UUID;Ljava/util/Set;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;->f$1:Ljava/util/UUID;

    iput-object p3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;->f$2:Ljava/util/Set;

    iput p4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;->f$3:I

    iput p5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;->f$4:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;->f$1:Ljava/util/UUID;

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;->f$2:Ljava/util/Set;

    iget v3, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;->f$3:I

    iget v4, p0, Lcom/android/server/pm/verify/domain/DomainVerificationService$$ExternalSyntheticLambda10;->f$4:I

    move-object v5, p1

    check-cast v5, Ljava/util/function/Function;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->lambda$setDomainVerificationStatusInternal$1$DomainVerificationService(Ljava/util/UUID;Ljava/util/Set;IILjava/util/function/Function;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
