.class public Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;
.super Landroidx/fragment/app/Fragment;
.source "FaceEnrollPreviewFragment.java"

# interfaces
.implements Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;
.implements Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$PreviewSurfaceProvider;


# instance fields
.field private mAnimationDrawable:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCircleView:Landroid/widget/ImageView;

.field private mClientAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

.field private mFromSetupWizard:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLocalAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSize:Landroid/util/Size;

.field private mRequireDiversity:Z

.field private mShouldManagePreview:Z

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Lcom/google/android/settings/biometrics/face/SquareTextureView;

.field private mTextureViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$1;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mLocalAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$2;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$3;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$4;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mClientAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mShouldManagePreview:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->closeCamera()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureViewDestroyed:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureViewDestroyed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setUpPreview(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->configureTransform(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)Lcom/google/android/settings/biometrics/face/SquareTextureView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/google/android/settings/biometrics/face/SquareTextureView;

    return-object p0
.end method

.method private chooseOptimalSize([Landroid/util/Size;)Landroid/util/Size;
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$5;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment$5;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0
.end method

.method private closeCamera()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iput-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    return-void
.end method

.method private configureTransform(II)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/google/android/settings/biometrics/face/SquareTextureView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float p1, p1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr p1, v0

    div-float/2addr p2, v0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0163

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/google/android/settings/biometrics/face/SquareTextureView;

    invoke-virtual {v2, v1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0164

    invoke-virtual {v5, v6, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0165

    invoke-virtual {v5, v6, v4, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    mul-float/2addr p1, v3

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    mul-float/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/google/android/settings/biometrics/face/SquareTextureView;

    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private setUpCameraOutputs()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iput-object v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraId:Ljava/lang/String;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->chooseOptimalSize([Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FaceEnroll/PreviewFragment"

    const-string v1, "Unable to access camera"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method private setUpPreview(II)V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setUpCameraOutputs()V

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mShouldManagePreview:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;

    invoke-virtual {v0}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onFirstFrameReceived()V

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->configureTransform(II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "FaceEnroll/PreviewFragment"

    const-string p2, "Unable to open camera"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public getPreviewSurface()Landroid/view/Surface;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureViewDestroyed:Z

    if-eqz v0, :cond_0

    const-string p0, "FaceEnroll/PreviewFragment"

    const-string v0, "Failed to get the preview surface, the surface texture is destroyed."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/google/android/settings/biometrics/face/SquareTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance p0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d05bb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/biometrics/face/SquareTextureView;

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/google/android/settings/biometrics/face/SquareTextureView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0153

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCircleView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const-string v0, "accessibility_diversity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mRequireDiversity:Z

    const-string v0, "is_suw"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mFromSetupWizard:Z

    const-string v0, "should_manage_preview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mShouldManagePreview:Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mRequireDiversity:Z

    const v1, 0x7f0d01cf

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mLocalAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f0d02d0

    invoke-virtual {v2, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mFromSetupWizard:Z

    move-object v2, v0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationMultiAngleDrawable;-><init>(Landroid/content/Context;Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;Landroid/widget/ImageView;Landroid/widget/ImageView;ZLandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mLocalAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mFromSetupWizard:Z

    invoke-direct {p1, v0, v2, v1, v3}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationSingleCaptureDrawable;-><init>(Landroid/content/Context;Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;Landroid/widget/ImageView;Z)V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;

    :goto_0
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCircleView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/FaceEnrollSidecar$Listener;->onEnrollmentError(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onEnrollmentProgressChange(II)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mShouldManagePreview:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->closeCamera()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/google/android/settings/biometrics/face/SquareTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/google/android/settings/biometrics/face/SquareTextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/google/android/settings/biometrics/face/SquareTextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->setUpPreview(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mTextureView:Lcom/google/android/settings/biometrics/face/SquareTextureView;

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mRequireDiversity:Z

    const-string v1, "accessibility_diversity"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mAnimationDrawable:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;

    invoke-virtual {v0, p1}, Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mFromSetupWizard:Z

    const-string v1, "is_suw"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mShouldManagePreview:Z

    const-string v0, "should_manage_preview"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAnimationDrawableMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mRequireDiversity:Z

    return-void
.end method

.method public setAnimationListener(Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mClientAnimationListener:Lcom/google/android/settings/biometrics/face/anim/FaceEnrollAnimationBase$AnimationListener;

    return-void
.end method

.method public setFromSetupWizard(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mFromSetupWizard:Z

    return-void
.end method

.method setShouldManagePreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollPreviewFragment;->mShouldManagePreview:Z

    return-void
.end method
