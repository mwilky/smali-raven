.class public final synthetic Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobMetadata;

.field public final synthetic f$1:Lcom/android/server/blob/BlobMetadata$Accessor;

.field public final synthetic f$2:Landroid/os/RevocableFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobMetadata;Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/blob/BlobMetadata;

    iput-object p2, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/blob/BlobMetadata$Accessor;

    iput-object p3, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;->f$2:Landroid/os/RevocableFileDescriptor;

    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/blob/BlobMetadata;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/blob/BlobMetadata$Accessor;

    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;->f$2:Landroid/os/RevocableFileDescriptor;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/blob/BlobMetadata;->$r8$lambda$DCp8ttpWydxNWSjh8kldMgodraU(Lcom/android/server/blob/BlobMetadata;Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V

    return-void
.end method
