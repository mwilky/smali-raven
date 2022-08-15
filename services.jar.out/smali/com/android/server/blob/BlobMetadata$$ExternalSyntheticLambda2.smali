.class public final synthetic Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda2;->f$0:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda2;->f$0:Landroid/util/SparseArray;

    check-cast p1, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-static {p0, p1}, Lcom/android/server/blob/BlobMetadata;->$r8$lambda$Q56ii5cwa0y_Vux5SdG5jscJceE(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Committer;)Z

    move-result p0

    return p0
.end method
