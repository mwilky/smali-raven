.class public final Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;
.super Ljava/lang/Object;
.source "ImageWallpaperRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;
    }
.end annotation


# instance fields
.field public mOnBitmapUpdated:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

.field public final mSurfaceSize:Landroid/graphics/Rect;

.field public final mTexture:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

.field public final mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    const-string v1, "ImageWallpaperRenderer"

    const-string v2, "WallpaperManager not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    invoke-direct {v1, v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;-><init>(Landroid/app/WallpaperManager;)V

    iput-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    new-instance v0, Lcom/android/systemui/glwallpaper/ImageGLProgram;

    invoke-direct {v0, p1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    new-instance p1, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-direct {p1, v0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;-><init>(Lcom/android/systemui/glwallpaper/ImageGLProgram;)V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    return-void
.end method


# virtual methods
.method public final onSurfaceCreated()V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    const v1, 0x7f120002

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getShaderResource(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120001

    invoke-virtual {v0, v2}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getShaderResource(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x8b31

    invoke-static {v3, v1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getShaderHandle(ILjava/lang/String;)I

    move-result v1

    const v3, 0x8b30

    invoke-static {v3, v2}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getShaderHandle(ILjava/lang/String;)I

    move-result v2

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "ImageGLProgram"

    const-string v2, "Can not create OpenGL ES program"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    :goto_0
    iput v3, v0, Lcom/android/systemui/glwallpaper/ImageGLProgram;->mProgramHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mTexture:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;

    new-instance v1, Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer$WallpaperTexture;->use(Ljava/util/function/Consumer;)V

    return-void
.end method
