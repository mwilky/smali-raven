.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/LongObjPredicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iput p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(JLjava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    move-object v5, p3

    check-cast v5, Lcom/android/server/blob/BlobStoreSession;

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/blob/BlobStoreManagerService;->$r8$lambda$fy-PPOW3hBd3bN0BCwc8eyBAevs(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;JLcom/android/server/blob/BlobStoreSession;)Z

    move-result p0

    return p0
.end method
