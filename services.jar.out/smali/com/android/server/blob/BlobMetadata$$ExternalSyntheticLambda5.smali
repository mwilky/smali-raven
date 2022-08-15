.class public final synthetic Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;->f$0:I

    iput-object p2, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;->f$0:I

    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-static {v0, p0, p1}, Lcom/android/server/blob/BlobMetadata;->$r8$lambda$1kPlsEMCe_zPKmHIoBHpAwetktA(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Leasee;)Z

    move-result p0

    return p0
.end method
