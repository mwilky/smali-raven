.class Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;
.super Lcom/android/wm/shell/pip/IPip$Stub;
.source "PipController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/phone/PipController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPipImpl"
.end annotation


# instance fields
.field private mController:Lcom/android/wm/shell/pip/phone/PipController;

.field private final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/common/SingleInstanceRemoteListener<",
            "Lcom/android/wm/shell/pip/phone/PipController;",
            "Lcom/android/wm/shell/pip/IPipAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPipAnimationListener:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;


# direct methods
.method public static synthetic $r8$lambda$BjWOEHab9sLjX3Q-XiVEFbFaIhY(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->lambda$stopSwipePipToHome$3(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CKD2sMJyQmO26wCmvLZS5n7ClzY(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->lambda$new$0(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dJoEZgnV31jhhRFLu_0TyakpYZs([Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;IILcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->lambda$startSwipePipToHome$2([Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;IILcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hqes09eKmyuFdUc7eJMcszYQNfM(ZILcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->lambda$setShelfHeight$4(ZILcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oQTCE2b0H6I4bUN1VoCdUpPv6ko(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->lambda$new$1(Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pSWH5d5egEfvclzSCFxYqbP2YX4(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;Lcom/android/wm/shell/pip/IPipAnimationListener;Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->lambda$setPinnedStackAnimationListener$5(Lcom/android/wm/shell/pip/IPipAnimationListener;Lcom/android/wm/shell/pip/phone/PipController;)V

    return-void
.end method

.method constructor <init>(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/wm/shell/pip/IPip$Stub;-><init>()V

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;-><init>(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mPipAnimationListener:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    new-instance p1, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;)V

    sget-object v2, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    return-void
.end method

.method static synthetic access$2000(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    return-object p0
.end method

.method private synthetic lambda$new$0(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mPipAnimationListener:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    invoke-static {p1, p0}, Lcom/android/wm/shell/pip/phone/PipController;->access$2300(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;)V

    return-void
.end method

.method private static synthetic lambda$new$1(Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/wm/shell/pip/phone/PipController;->access$2300(Lcom/android/wm/shell/pip/phone/PipController;Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;)V

    return-void
.end method

.method private synthetic lambda$setPinnedStackAnimationListener$5(Lcom/android/wm/shell/pip/IPipAnimationListener;Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->register(Landroid/os/IInterface;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$setShelfHeight$4(ZILcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    invoke-static {p2, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->access$1400(Lcom/android/wm/shell/pip/phone/PipController;ZI)V

    return-void
.end method

.method private static synthetic lambda$startSwipePipToHome$2([Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;IILcom/android/wm/shell/pip/phone/PipController;)V
    .locals 6

    move-object v0, p6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/pip/phone/PipController;->access$2200(Lcom/android/wm/shell/pip/phone/PipController;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p0, p2

    return-void
.end method

.method private static synthetic lambda$stopSwipePipToHome$3(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Lcom/android/wm/shell/pip/phone/PipController;)V
    .locals 0

    invoke-static {p3, p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->access$2100(Lcom/android/wm/shell/pip/phone/PipController;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    return-void
.end method


# virtual methods
.method invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    return-void
.end method

.method public setPinnedStackAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    const-string p0, "setPinnedStackAnimationListener"

    invoke-static {v0, p0, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setShelfHeight(ZI)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda3;-><init>(ZI)V

    const-string p1, "setShelfHeight"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startSwipePipToHome(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)Landroid/graphics/Rect;
    .locals 10

    const/4 v0, 0x1

    new-array v8, v0, [Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    new-instance v9, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda4;

    move-object v1, v9

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda4;-><init>([Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;II)V

    const-string p1, "startSwipePipToHome"

    invoke-static {p0, p1, v9, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    const/4 p0, 0x0

    aget-object p0, v8, p0

    return-object p0
.end method

.method public stopSwipePipToHome(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->mController:Lcom/android/wm/shell/pip/phone/PipController;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda0;-><init>(Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    const-string p1, "stopSwipePipToHome"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
