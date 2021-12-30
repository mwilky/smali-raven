.class Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;
.super Ljava/lang/Object;
.source "FaceEnrollPreviewFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;


# direct methods
.method constructor <init>(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$402(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Z)Z

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p0, p2, p3}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$500(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$402(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Z)Z

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;->this$0:Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;

    invoke-static {p0, p2, p3}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->access$600(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
