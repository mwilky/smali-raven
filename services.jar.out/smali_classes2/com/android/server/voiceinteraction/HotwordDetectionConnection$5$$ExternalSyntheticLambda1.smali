.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$1:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda1;->f$0:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda1;->f$1:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda1;->f$0:Landroid/os/ParcelFileDescriptor;

    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda1;->f$1:Ljava/io/InputStream;

    invoke-static {v0, p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->$r8$lambda$Cuf-gRwK3FwzwQeDPGl2iAeRcf0(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    return-void
.end method
